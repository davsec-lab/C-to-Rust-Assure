; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/impcheck/impcheck.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/impcheck/impcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_vec = type { i64, i64, i32* }
%struct.i8_vec = type { i64, i64, i8* }
%struct.hash_table = type { i64, i64, float, i64, %struct.hash_table_entry*, i64 }
%struct.hash_table_entry = type { i64, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.u64_vec = type { i64, i64, i64* }
%struct.u8_vec = type { i64, i64, i8* }

@.str = private unnamed_addr constant [25 x i8] c"ht->data[idx].key == key\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/impcheck/src/trusted/hash.c\00", align 1
@__PRETTY_FUNCTION__.hash_table_find = private unnamed_addr constant [48 x i8] c"void *hash_table_find(struct hash_table *, u64)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ht->data[idx].val\00", align 1
@id_to_add = dso_local global i64 1, align 8
@nb_loaded_clauses = dso_local global i64 0, align 8
@done_loading = dso_local global i8 0, align 1
@unsat_proven = dso_local global i8 0, align 1
@assigned_units = dso_local global %struct.int_vec* null, align 8
@var_values = dso_local global %struct.i8_vec* null, align 8
@clause_table = dso_local global %struct.hash_table* null, align 8
@trusted_utils_msgstr = dso_local global [512 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [35 x i8] c"Derivation %lu: hint %lu not found\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Derivation %lu: multiple literals unassigned\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Derivation %lu: dependency %lu is satisfied\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Derivation %lu: empty clause produced at non-final hint %lu\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Derivation %lu: no empty clause was produced\00", align 1
@lenient = dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Insertion of clause %lu unsuccessful - already present?\00", align 1
@clause_to_add = dso_local global %struct.int_vec* null, align 8
@check_model = dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"literals left in unterminated clause\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Clause deletion: ID %lu not found\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Clause deletion: Hash table error for ID %lu\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"UNSAT validation illegal - loading formula was not concluded\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"UNSAT validation unsuccessful - did not derive or import empty clause\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"SAT validation illegal - loading formula was not concluded\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"SAT validation illegal - not executed to explicitly support this\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"SAT validation: original ID %lu not found\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"SAT validation: model does not cover variable %i\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"SAT validation: unexpected literal %i in assignment of variable %i\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"SAT validation: original clause %lu not satisfied\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"-fifo-directives=\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"-fifo-feedback=\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"-check-model\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"-lenient\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@SECRET_KEY = dso_local constant [16 x i8] c"V]\01\D1p\B0\0D(\A8\DF\19\16\86:\15\D3", align 16
@outlen = dso_local constant i32 16, align 4
@buflen = dso_local global i8 0, align 1
@buf = dso_local global i8* null, align 8
@m = dso_local global i64 0, align 8
@v3 = dso_local global i64 0, align 8
@i = dso_local global i32 0, align 4
@v1 = dso_local global i64 0, align 8
@v0 = dso_local global i64 0, align 8
@v2 = dso_local global i64 0, align 8
@inlen = dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [15 x i8] c"left == buflen\00", align 1
@.str.26 = private unnamed_addr constant [109 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/impcheck/src/trusted/siphash.c\00", align 1
@__PRETTY_FUNCTION__.process_final_block = private unnamed_addr constant [27 x i8] c"void process_final_block()\00", align 1
@out = dso_local global i8* null, align 8
@kk = dso_local global i8* null, align 8
@k0 = dso_local global i64 0, align 8
@k1 = dso_local global i64 0, align 8
@parsed_formula = dso_local global i8 0, align 1
@valid = dso_local global i8 1, align 1
@formula_signature = dso_local global [16 x i8] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [31 x i8] c"Formula signature check failed\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"Signature check of clause %lu failed\00", align 1
@do_logging = dso_local global i8 1, align 1
@output = dso_local global %struct._IO_FILE* null, align 8
@buf_lits = dso_local global %struct.int_vec* null, align 8
@input = dso_local global %struct._IO_FILE* null, align 8
@buf_hints = dso_local global %struct.u64_vec* null, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@buf_sig = dso_local global [16 x i8] zeroinitializer, align 16
@nb_vars = dso_local global i32 -1, align 4
@formula_sig = dso_local global [16 x i8] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [16 x i8] c"UNSAT validated\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"SAT validated\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Invalid directive!\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"cpu:%.3f prod:%lu imp:%lu del:%lu\00", align 1
@comment = dso_local global i8 0, align 1
@header = dso_local global i8 0, align 1
@input_finished = dso_local global i8 0, align 1
@input_invalid = dso_local global i8 0, align 1
@began_num = dso_local global i8 0, align 1
@num = dso_local global i32 0, align 4
@sign = dso_local global i32 1, align 4
@nb_read_cls = dso_local global i32 0, align 4
@nb_cls = dso_local global i32 -1, align 4
@data = dso_local global %struct.int_vec* null, align 8
@f_out = dso_local global %struct._IO_FILE* null, align 8
@f = dso_local global %struct._IO_FILE* null, align 8
@.str.35 = private unnamed_addr constant [24 x i8] c"c [TRUSTED_CORE %i] %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"c [TRUSTED_CORE %i] [ERROR] %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"end-of-file - terminating\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"allocation failed - terminating\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"val1 >= 0 && val1 < 16\00", align 1
@.str.40 = private unnamed_addr constant [115 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/impcheck/src/trusted/trusted_utils.c\00", align 1
@__PRETTY_FUNCTION__.trusted_utils_sig_to_str = private unnamed_addr constant [50 x i8] c"void trusted_utils_sig_to_str(const u8 *, char *)\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"val2 >= 0 && val2 < 16\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @confirm_result(i8* noundef %f_sig, i8 noundef zeroext %constant, i8* noundef %out) #0 {
entry:
  %f_sig.addr = alloca i8*, align 8
  %constant.addr = alloca i8, align 1
  %out.addr = alloca i8*, align 8
  %sig = alloca i8*, align 8
  store i8* %f_sig, i8** %f_sig.addr, align 8
  store i8 %constant, i8* %constant.addr, align 1
  store i8* %out, i8** %out.addr, align 8
  call void @siphash_reset()
  %0 = load i8*, i8** %f_sig.addr, align 8
  call void @siphash_update(i8* noundef %0, i64 noundef 16)
  call void @siphash_update(i8* noundef %constant.addr, i64 noundef 1)
  %call = call i8* @siphash_digest()
  store i8* %call, i8** %sig, align 8
  %1 = load i8*, i8** %out.addr, align 8
  %2 = load i8*, i8** %sig, align 8
  call void @trusted_utils_copy_bytes(i8* noundef %1, i8* noundef %2, i64 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siphash_update(i8* noundef %data, i64 noundef %nb_bytes) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %nb_bytes.addr = alloca i64, align 8
  %datapos = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64 %nb_bytes, i64* %nb_bytes.addr, align 8
  store i32 0, i32* %datapos, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body6, %while.body
  %0 = load i8, i8* @buflen, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp ult i32 %conv, 8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %1 = load i32, i32* %datapos, align 4
  %conv3 = zext i32 %1 to i64
  %2 = load i64, i64* %nb_bytes.addr, align 8
  %cmp4 = icmp ult i64 %conv3, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %3 = phi i1 [ false, %while.cond1 ], [ %cmp4, %land.rhs ]
  br i1 %3, label %while.body6, label %while.end

while.body6:                                      ; preds = %land.end
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i32, i32* %datapos, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %datapos, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %7 = load i8*, i8** @buf, align 8
  %8 = load i8, i8* @buflen, align 1
  %inc7 = add i8 %8, 1
  store i8 %inc7, i8* @buflen, align 1
  %idxprom8 = zext i8 %8 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 %idxprom8
  store i8 %6, i8* %arrayidx9, align 1
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %9 = load i8, i8* @buflen, align 1
  %conv10 = zext i8 %9 to i32
  %cmp11 = icmp ult i32 %conv10, 8
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.end13

if.end:                                           ; preds = %while.end
  call void @process_next_block()
  store i8 0, i8* @buflen, align 1
  br label %while.body

while.end13:                                      ; preds = %if.then
  %10 = load i64, i64* %nb_bytes.addr, align 8
  %11 = load i64, i64* @inlen, align 8
  %add = add i64 %11, %10
  store i64 %add, i64* @inlen, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_copy_bytes(i8* noundef %to, i8* noundef %from, i64 noundef %nb_bytes) #0 {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  %nb_bytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %to, i8** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  store i64 %nb_bytes, i64* %nb_bytes.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %nb_bytes.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %to.addr, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 %6
  store i8 %4, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
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
define dso_local i64 @compute_hash(i64 noundef %key) #0 {
entry:
  %key.addr = alloca i64, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load i64, i64* %key.addr, align 8
  %xor = xor i64 -3750763034362895579, %0
  %mul = mul i64 %xor, 1099511628211
  ret i64 %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compute_idx(%struct.hash_table* noundef %ht, i64 noundef %key) #0 {
entry:
  %ht.addr = alloca %struct.hash_table*, align 8
  %key.addr = alloca i64, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load i64, i64* %key.addr, align 8
  %call = call i64 @compute_hash(i64 noundef %0)
  %1 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %capacity = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 3
  %2 = load i64, i64* %capacity, align 8
  %sub = sub i64 %2, 1
  %and = and i64 %call, %sub
  ret i64 %and
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @cell_empty(%struct.hash_table_entry* noundef %entry1) #0 {
entry:
  %entry.addr = alloca %struct.hash_table_entry*, align 8
  store %struct.hash_table_entry* %entry1, %struct.hash_table_entry** %entry.addr, align 8
  %0 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry.addr, align 8
  %key = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %0, i32 0, i32 0
  %1 = load i64, i64* %key, align 8
  %cmp = icmp eq i64 %1, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @find_entry(%struct.hash_table* noundef %ht, i64 noundef %key, i64* noundef %idx) #0 {
entry:
  %retval = alloca i1, align 1
  %ht.addr = alloca %struct.hash_table*, align 8
  %key.addr = alloca i64, align 8
  %idx.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %orig_idx = alloca i64, align 8
  %entry1 = alloca %struct.hash_table_entry*, align 8
  %entry10 = alloca %struct.hash_table_entry*, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64* %idx, i64** %idx.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  %call = call i64 @compute_idx(%struct.hash_table* noundef %0, i64 noundef %1)
  store i64 %call, i64* %i, align 8
  %2 = load i64, i64* %i, align 8
  store i64 %2, i64* %orig_idx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %capacity = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 3
  %5 = load i64, i64* %capacity, align 8
  %cmp = icmp ult i64 %3, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 4
  %7 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %7, i64 %8
  store %struct.hash_table_entry* %arrayidx, %struct.hash_table_entry** %entry1, align 8
  %9 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry1, align 8
  %call2 = call zeroext i1 @cell_empty(%struct.hash_table_entry* noundef %9)
  br i1 %call2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load i64, i64* %i, align 8
  %11 = load i64*, i64** %idx.addr, align 8
  store i64 %10, i64* %11, align 8
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  %12 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry1, align 8
  %key3 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %12, i32 0, i32 0
  %13 = load i64, i64* %key3, align 8
  %14 = load i64, i64* %key.addr, align 8
  %cmp4 = icmp eq i64 %13, %14
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %15 = load i64, i64* %i, align 8
  %16 = load i64*, i64** %idx.addr, align 8
  store i64 %15, i64* %16, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %i, align 8
  br label %while.cond7

while.cond7:                                      ; preds = %if.end19, %while.end
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %orig_idx, align 8
  %cmp8 = icmp ult i64 %18, %19
  br i1 %cmp8, label %while.body9, label %while.end21

while.body9:                                      ; preds = %while.cond7
  %20 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %20, i32 0, i32 4
  %21 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data11, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %21, i64 %22
  store %struct.hash_table_entry* %arrayidx12, %struct.hash_table_entry** %entry10, align 8
  %23 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry10, align 8
  %call13 = call zeroext i1 @cell_empty(%struct.hash_table_entry* noundef %23)
  br i1 %call13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body9
  %24 = load i64, i64* %i, align 8
  %25 = load i64*, i64** %idx.addr, align 8
  store i64 %24, i64* %25, align 8
  store i1 false, i1* %retval, align 1
  br label %return

if.end15:                                         ; preds = %while.body9
  %26 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry10, align 8
  %key16 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %26, i32 0, i32 0
  %27 = load i64, i64* %key16, align 8
  %28 = load i64, i64* %key.addr, align 8
  %cmp17 = icmp eq i64 %27, %28
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %29 = load i64, i64* %i, align 8
  %30 = load i64*, i64** %idx.addr, align 8
  store i64 %29, i64* %30, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end19:                                         ; preds = %if.end15
  %31 = load i64, i64* %i, align 8
  %inc20 = add i64 %31, 1
  store i64 %inc20, i64* %i, align 8
  br label %while.cond7, !llvm.loop !8

while.end21:                                      ; preds = %while.cond7
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end21, %if.then18, %if.then14, %if.then5, %if.then
  %32 = load i1, i1* %retval, align 1
  ret i1 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @realloc_table(%struct.hash_table* noundef %ht) #0 {
entry:
  %retval = alloca i1, align 1
  %ht.addr = alloca %struct.hash_table*, align 8
  %new_capacity = alloca i64, align 8
  %old_data = alloca %struct.hash_table_entry*, align 8
  %old_capacity = alloca i64, align 8
  %i = alloca i64, align 8
  %cell = alloca %struct.hash_table_entry*, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %growth_factor = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i32 0, i32 2
  %1 = load float, float* %growth_factor, align 8
  %2 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %capacity = getelementptr inbounds %struct.hash_table, %struct.hash_table* %2, i32 0, i32 3
  %3 = load i64, i64* %capacity, align 8
  %conv = uitofp i64 %3 to float
  %mul = fmul float %1, %conv
  %conv1 = fptoui float %mul to i64
  store i64 %conv1, i64* %new_capacity, align 8
  %4 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 4
  %5 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data, align 8
  store %struct.hash_table_entry* %5, %struct.hash_table_entry** %old_data, align 8
  %6 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %capacity2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 3
  %7 = load i64, i64* %capacity2, align 8
  store i64 %7, i64* %old_capacity, align 8
  %8 = load i64, i64* %new_capacity, align 8
  %call = call i8* @trusted_utils_calloc(i64 noundef %8, i64 noundef 16)
  %9 = bitcast i8* %call to %struct.hash_table_entry*
  %10 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %10, i32 0, i32 4
  store %struct.hash_table_entry* %9, %struct.hash_table_entry** %data3, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 4
  %12 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data4, align 8
  %tobool = icmp ne %struct.hash_table_entry* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 0
  store i64 0, i64* %size, align 8
  %14 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %growth_factor5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %14, i32 0, i32 2
  %15 = load float, float* %growth_factor5, align 8
  %16 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %max_size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 1
  %17 = load i64, i64* %max_size, align 8
  %conv6 = uitofp i64 %17 to float
  %mul7 = fmul float %15, %conv6
  %conv8 = fptoui float %mul7 to i64
  %18 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %max_size9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %18, i32 0, i32 1
  store i64 %conv8, i64* %max_size9, align 8
  %19 = load i64, i64* %new_capacity, align 8
  %20 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %capacity10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %20, i32 0, i32 3
  store i64 %19, i64* %capacity10, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %old_capacity, align 8
  %cmp = icmp ult i64 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.hash_table_entry*, %struct.hash_table_entry** %old_data, align 8
  %24 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %23, i64 %24
  store %struct.hash_table_entry* %arrayidx, %struct.hash_table_entry** %cell, align 8
  %25 = load %struct.hash_table_entry*, %struct.hash_table_entry** %cell, align 8
  %call12 = call zeroext i1 @cell_empty(%struct.hash_table_entry* noundef %25)
  br i1 %call12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %for.body
  %26 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %27 = load %struct.hash_table_entry*, %struct.hash_table_entry** %cell, align 8
  %key = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %27, i32 0, i32 0
  %28 = load i64, i64* %key, align 8
  %29 = load %struct.hash_table_entry*, %struct.hash_table_entry** %cell, align 8
  %val = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %29, i32 0, i32 1
  %30 = load i8*, i8** %val, align 8
  %call14 = call zeroext i1 @hash_table_insert(%struct.hash_table* noundef %26, i64 noundef %28, i8* noundef %30)
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then13
  store i1 false, i1* %retval, align 1
  br label %return

if.end16:                                         ; preds = %if.then13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %32 = load %struct.hash_table_entry*, %struct.hash_table_entry** %old_data, align 8
  %33 = bitcast %struct.hash_table_entry* %32 to i8*
  call void @free(i8* noundef %33) #6
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then
  %34 = load i1, i1* %retval, align 1
  ret i1 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trusted_utils_calloc(i64 noundef %nb_objs, i64 noundef %size_per_obj) #0 {
entry:
  %nb_objs.addr = alloca i64, align 8
  %size_per_obj.addr = alloca i64, align 8
  %res = alloca i8*, align 8
  store i64 %nb_objs, i64* %nb_objs.addr, align 8
  store i64 %size_per_obj, i64* %size_per_obj.addr, align 8
  %0 = load i64, i64* %nb_objs.addr, align 8
  %1 = load i64, i64* %size_per_obj.addr, align 8
  %call = call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #6
  store i8* %call, i8** %res, align 8
  %2 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @exit_oom()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %res, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hash_table_insert(%struct.hash_table* noundef %ht, i64 noundef %key, i8* noundef %val) #0 {
entry:
  %retval = alloca i1, align 1
  %ht.addr = alloca %struct.hash_table*, align 8
  %key.addr = alloca i64, align 8
  %val.addr = alloca i8*, align 8
  %idx = alloca i64, align 8
  %entry17 = alloca %struct.hash_table_entry*, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i8* %val, i8** %val.addr, align 8
  %0 = load i64, i64* %key.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 0
  %2 = load i64, i64* %size, align 8
  %3 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %max_size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 1
  %4 = load i64, i64* %max_size, align 8
  %cmp1 = icmp eq i64 %2, %4
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %5 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %call = call zeroext i1 @realloc_table(%struct.hash_table* noundef %5)
  br i1 %call, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then2
  store i1 false, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.then2
  %6 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %size5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 0
  %7 = load i64, i64* %size5, align 8
  %8 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %max_size6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %8, i32 0, i32 1
  %9 = load i64, i64* %max_size6, align 8
  %cmp7 = icmp uge i64 %7, %9
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  store i1 false, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %if.end4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %10 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %11 = load i64, i64* %key.addr, align 8
  %call11 = call zeroext i1 @find_entry(%struct.hash_table* noundef %10, i64 noundef %11, i64* noundef %idx)
  br i1 %call11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i1 false, i1* %retval, align 1
  br label %return

if.end13:                                         ; preds = %if.end10
  %12 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data = getelementptr inbounds %struct.hash_table, %struct.hash_table* %12, i32 0, i32 4
  %13 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data, align 8
  %14 = load i64, i64* %idx, align 8
  %arrayidx = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %13, i64 %14
  %call14 = call zeroext i1 @cell_empty(%struct.hash_table_entry* noundef %arrayidx)
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end13
  store i1 false, i1* %retval, align 1
  br label %return

if.end16:                                         ; preds = %if.end13
  %15 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data18 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %15, i32 0, i32 4
  %16 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data18, align 8
  %17 = load i64, i64* %idx, align 8
  %arrayidx19 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %16, i64 %17
  store %struct.hash_table_entry* %arrayidx19, %struct.hash_table_entry** %entry17, align 8
  %18 = load i64, i64* %key.addr, align 8
  %19 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry17, align 8
  %key20 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %19, i32 0, i32 0
  store i64 %18, i64* %key20, align 8
  %20 = load i8*, i8** %val.addr, align 8
  %21 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry17, align 8
  %val21 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %21, i32 0, i32 1
  store i8* %20, i8** %val21, align 8
  %22 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %size22 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %22, i32 0, i32 0
  %23 = load i64, i64* %size22, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %size22, align 8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end16, %if.then15, %if.then12, %if.then8, %if.then3, %if.then
  %24 = load i1, i1* %retval, align 1
  ret i1 %24
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @handle_gap(%struct.hash_table* noundef %ht, i64 noundef %idx_of_gap) #0 {
entry:
  %ht.addr = alloca %struct.hash_table*, align 8
  %idx_of_gap.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %entry1 = alloca %struct.hash_table_entry*, align 8
  %k = alloca i64, align 8
  %entry_at_deletion = alloca %struct.hash_table_entry*, align 8
  %entry2move = alloca %struct.hash_table_entry*, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  store i64 %idx_of_gap, i64* %idx_of_gap.addr, align 8
  %0 = load i64, i64* %idx_of_gap.addr, align 8
  store i64 %0, i64* %i, align 8
  %1 = load i64, i64* %i, align 8
  store i64 %1, i64* %j, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end23
  %2 = load i64, i64* %j, align 8
  %add = add i64 %2, 1
  %3 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %capacity = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 3
  %4 = load i64, i64* %capacity, align 8
  %sub = sub i64 %4, 1
  %and = and i64 %add, %sub
  store i64 %and, i64* %j, align 8
  %5 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data = getelementptr inbounds %struct.hash_table, %struct.hash_table* %5, i32 0, i32 4
  %6 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data, align 8
  %7 = load i64, i64* %j, align 8
  %arrayidx = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %6, i64 %7
  %call = call zeroext i1 @cell_empty(%struct.hash_table_entry* noundef %arrayidx)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %8, i32 0, i32 4
  %9 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data2, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %9, i64 %10
  store %struct.hash_table_entry* %arrayidx3, %struct.hash_table_entry** %entry1, align 8
  %11 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry1, align 8
  %key = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %11, i32 0, i32 0
  store i64 0, i64* %key, align 8
  %12 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry1, align 8
  %val = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %12, i32 0, i32 1
  store i8* null, i8** %val, align 8
  ret i1 true

if.end:                                           ; preds = %while.body
  %13 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %14 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %14, i32 0, i32 4
  %15 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data4, align 8
  %16 = load i64, i64* %j, align 8
  %arrayidx5 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %15, i64 %16
  %key6 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %arrayidx5, i32 0, i32 0
  %17 = load i64, i64* %key6, align 8
  %call7 = call i64 @compute_idx(%struct.hash_table* noundef %13, i64 noundef %17)
  store i64 %call7, i64* %k, align 8
  %18 = load i64, i64* %j, align 8
  %19 = load i64, i64* %i, align 8
  %cmp = icmp ugt i64 %18, %19
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false10

land.lhs.true:                                    ; preds = %if.end
  %20 = load i64, i64* %k, align 8
  %21 = load i64, i64* %i, align 8
  %cmp8 = icmp ule i64 %20, %21
  br i1 %cmp8, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load i64, i64* %k, align 8
  %23 = load i64, i64* %j, align 8
  %cmp9 = icmp ugt i64 %22, %23
  br i1 %cmp9, label %if.then16, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false, %if.end
  %24 = load i64, i64* %j, align 8
  %25 = load i64, i64* %i, align 8
  %cmp11 = icmp ult i64 %24, %25
  br i1 %cmp11, label %land.lhs.true12, label %if.end23

land.lhs.true12:                                  ; preds = %lor.lhs.false10
  %26 = load i64, i64* %k, align 8
  %27 = load i64, i64* %i, align 8
  %cmp13 = icmp ule i64 %26, %27
  br i1 %cmp13, label %land.lhs.true14, label %if.end23

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %28 = load i64, i64* %k, align 8
  %29 = load i64, i64* %j, align 8
  %cmp15 = icmp ugt i64 %28, %29
  br i1 %cmp15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %land.lhs.true14, %lor.lhs.false, %land.lhs.true
  %30 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data17 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %30, i32 0, i32 4
  %31 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data17, align 8
  %32 = load i64, i64* %i, align 8
  %arrayidx18 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %31, i64 %32
  store %struct.hash_table_entry* %arrayidx18, %struct.hash_table_entry** %entry_at_deletion, align 8
  %33 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data19 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %33, i32 0, i32 4
  %34 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data19, align 8
  %35 = load i64, i64* %j, align 8
  %arrayidx20 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %34, i64 %35
  store %struct.hash_table_entry* %arrayidx20, %struct.hash_table_entry** %entry2move, align 8
  %36 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry_at_deletion, align 8
  %37 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry2move, align 8
  %38 = bitcast %struct.hash_table_entry* %36 to i8*
  %39 = bitcast %struct.hash_table_entry* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry2move, align 8
  %key21 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %40, i32 0, i32 0
  store i64 0, i64* %key21, align 8
  %41 = load %struct.hash_table_entry*, %struct.hash_table_entry** %entry2move, align 8
  %val22 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %41, i32 0, i32 1
  store i8* null, i8** %val22, align 8
  %42 = load i64, i64* %j, align 8
  store i64 %42, i64* %i, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %land.lhs.true14, %land.lhs.true12, %lor.lhs.false10
  br label %while.body
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hash_table* @hash_table_init(i32 noundef %log_init_capacity) #0 {
entry:
  %log_init_capacity.addr = alloca i32, align 4
  %ht = alloca %struct.hash_table*, align 8
  store i32 %log_init_capacity, i32* %log_init_capacity.addr, align 4
  %call = call i8* @trusted_utils_malloc(i64 noundef 48)
  %0 = bitcast i8* %call to %struct.hash_table*
  store %struct.hash_table* %0, %struct.hash_table** %ht, align 8
  %1 = load i32, i32* %log_init_capacity.addr, align 4
  %shl = shl i32 1, %1
  %conv = sext i32 %shl to i64
  %2 = load %struct.hash_table*, %struct.hash_table** %ht, align 8
  %capacity = getelementptr inbounds %struct.hash_table, %struct.hash_table* %2, i32 0, i32 3
  store i64 %conv, i64* %capacity, align 8
  %3 = load %struct.hash_table*, %struct.hash_table** %ht, align 8
  %size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 0
  store i64 0, i64* %size, align 8
  %4 = load %struct.hash_table*, %struct.hash_table** %ht, align 8
  %capacity1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 3
  %5 = load i64, i64* %capacity1, align 8
  %shr = lshr i64 %5, 1
  %6 = load %struct.hash_table*, %struct.hash_table** %ht, align 8
  %max_size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 1
  store i64 %shr, i64* %max_size, align 8
  %7 = load %struct.hash_table*, %struct.hash_table** %ht, align 8
  %growth_factor = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 2
  store float 2.000000e+00, float* %growth_factor, align 8
  %8 = load %struct.hash_table*, %struct.hash_table** %ht, align 8
  %capacity2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %8, i32 0, i32 3
  %9 = load i64, i64* %capacity2, align 8
  %call3 = call i8* @trusted_utils_calloc(i64 noundef %9, i64 noundef 16)
  %10 = bitcast i8* %call3 to %struct.hash_table_entry*
  %11 = load %struct.hash_table*, %struct.hash_table** %ht, align 8
  %data = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 4
  store %struct.hash_table_entry* %10, %struct.hash_table_entry** %data, align 8
  %12 = load %struct.hash_table*, %struct.hash_table** %ht, align 8
  ret %struct.hash_table* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trusted_utils_malloc(i64 noundef %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %res = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef %0) #6
  store i8* %call, i8** %res, align 8
  %1 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @exit_oom()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %res, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_table_find(%struct.hash_table* noundef %ht, i64 noundef %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %ht.addr = alloca %struct.hash_table*, align 8
  %key.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  %call = call zeroext i1 @find_entry(%struct.hash_table* noundef %0, i64 noundef %1, i64* noundef %idx)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %idx, align 8
  %3 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %last_found_idx = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 5
  store i64 %2, i64* %last_found_idx, align 8
  %4 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 4
  %5 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data, align 8
  %6 = load i64, i64* %idx, align 8
  %arrayidx = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %5, i64 %6
  %key1 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %arrayidx, i32 0, i32 0
  %7 = load i64, i64* %key1, align 8
  %8 = load i64, i64* %key.addr, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.hash_table_find, i64 0, i64 0)) #7
  unreachable

if.end3:                                          ; preds = %if.then2
  %9 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %9, i32 0, i32 4
  %10 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data4, align 8
  %11 = load i64, i64* %idx, align 8
  %arrayidx5 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %10, i64 %11
  %val = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %arrayidx5, i32 0, i32 1
  %12 = load i8*, i8** %val, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end3
  br label %if.end8

if.else7:                                         ; preds = %if.end3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 noundef 124, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.hash_table_find, i64 0, i64 0)) #7
  unreachable

if.end8:                                          ; preds = %if.then6
  %13 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %data9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 4
  %14 = load %struct.hash_table_entry*, %struct.hash_table_entry** %data9, align 8
  %15 = load i64, i64* %idx, align 8
  %arrayidx10 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %14, i64 %15
  %val11 = getelementptr inbounds %struct.hash_table_entry, %struct.hash_table_entry* %arrayidx10, i32 0, i32 1
  %16 = load i8*, i8** %val11, align 8
  store i8* %16, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %17 = load i8*, i8** %retval, align 8
  ret i8* %17
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hash_table_delete(%struct.hash_table* noundef %ht, i64 noundef %key) #0 {
entry:
  %retval = alloca i1, align 1
  %ht.addr = alloca %struct.hash_table*, align 8
  %key.addr = alloca i64, align 8
  %idx = alloca i64, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  %call = call zeroext i1 @find_entry(%struct.hash_table* noundef %0, i64 noundef %1, i64* noundef %idx)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %3 = load i64, i64* %idx, align 8
  %call1 = call zeroext i1 @handle_gap(%struct.hash_table* noundef %2, i64 noundef %3)
  br i1 %call1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 0
  %5 = load i64, i64* %size, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %size, align 8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @hash_table_delete_last_found(%struct.hash_table* noundef %ht) #0 {
entry:
  %retval = alloca i1, align 1
  %ht.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %1 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %last_found_idx = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 5
  %2 = load i64, i64* %last_found_idx, align 8
  %call = call zeroext i1 @handle_gap(%struct.hash_table* noundef %0, i64 noundef %2)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %size = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 0
  %4 = load i64, i64* %size, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %size, align 8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_table_free(%struct.hash_table* noundef %ht) #0 {
entry:
  %ht.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %ht, %struct.hash_table** %ht.addr, align 8
  %0 = load %struct.hash_table*, %struct.hash_table** %ht.addr, align 8
  %1 = bitcast %struct.hash_table* %0 to i8*
  call void @free(i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @clause_init(i32* noundef %data, i32 noundef %nb_lits) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %nb_lits.addr = alloca i32, align 4
  %cls = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %nb_lits, i32* %nb_lits.addr, align 4
  %0 = load i32, i32* %nb_lits.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call = call i8* @trusted_utils_calloc(i64 noundef %conv, i64 noundef 4)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %cls, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nb_lits.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %cls, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  store i32 %6, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %10 = load i32*, i32** %cls, align 8
  %11 = load i32, i32* %nb_lits.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  %12 = load i32*, i32** %cls, align 8
  ret i32* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_assignments() #0 {
entry:
  %i = alloca i64, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.int_vec*, %struct.int_vec** @assigned_units, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %1, i32 0, i32 1
  %2 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.i8_vec*, %struct.i8_vec** @var_values, align 8
  %data = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %3, i32 0, i32 2
  %4 = load i8*, i8** %data, align 8
  %5 = load %struct.int_vec*, %struct.int_vec** @assigned_units, align 8
  %data1 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %5, i32 0, i32 2
  %6 = load i32*, i32** %data1, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %7
  %8 = load i32, i32* %arrayidx, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom
  store i8 0, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %10 = load %struct.int_vec*, %struct.int_vec** @assigned_units, align 8
  call void @int_vec_clear(%struct.int_vec* noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int_vec_clear(%struct.int_vec* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.int_vec*, align 8
  store %struct.int_vec* %vec, %struct.int_vec** %vec.addr, align 8
  %0 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  call void @int_vec_reserve(%struct.int_vec* noundef %0, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @check_clause(i64 noundef %base_id, i32* noundef %lits, i32 noundef %nb_lits, i64* noundef %hints, i32 noundef %nb_hints) #0 {
entry:
  %retval = alloca i1, align 1
  %base_id.addr = alloca i64, align 8
  %lits.addr = alloca i32*, align 8
  %nb_lits.addr = alloca i32, align 4
  %hints.addr = alloca i64*, align 8
  %nb_hints.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %var = alloca i32, align 4
  %ok = alloca i8, align 1
  %i16 = alloca i32, align 4
  %hint_id = alloca i64, align 8
  %cls = alloca i32*, align 8
  %new_unit = alloca i32, align 4
  %lit_idx = alloca i32, align 4
  %lit = alloca i32, align 4
  %var33 = alloca i32, align 4
  %sign = alloca i8, align 1
  %var91 = alloca i32, align 4
  store i64 %base_id, i64* %base_id.addr, align 8
  store i32* %lits, i32** %lits.addr, align 8
  store i32 %nb_lits, i32* %nb_lits.addr, align 4
  store i64* %hints, i64** %hints.addr, align 8
  store i32 %nb_hints, i32* %nb_hints.addr, align 4
  %0 = load %struct.int_vec*, %struct.int_vec** @assigned_units, align 8
  %1 = load i32, i32* %nb_lits.addr, align 4
  %2 = load i32, i32* %nb_hints.addr, align 4
  %add = add nsw i32 %1, %2
  %conv = sext i32 %add to i64
  call void @int_vec_reserve(%struct.int_vec* noundef %0, i64 noundef %conv)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %nb_lits.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %lits.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load i32*, i32** %lits.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i32*, i32** %lits.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  %sub = sub nsw i32 0, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %var, align 4
  %14 = load i32*, i32** %lits.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp sgt i32 %16, 0
  %17 = zext i1 %cmp10 to i64
  %cond12 = select i1 %cmp10, i32 -1, i32 1
  %conv13 = trunc i32 %cond12 to i8
  %18 = load %struct.i8_vec*, %struct.i8_vec** @var_values, align 8
  %data = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %18, i32 0, i32 2
  %19 = load i8*, i8** %data, align 8
  %20 = load i32, i32* %var, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %19, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx15, align 1
  %21 = load %struct.int_vec*, %struct.int_vec** @assigned_units, align 8
  %22 = load i32, i32* %var, align 4
  call void @int_vec_push(%struct.int_vec* noundef %21, i32 noundef %22)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %ok, align 1
  store i32 0, i32* %i16, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc106, %for.end
  %24 = load i32, i32* %i16, align 4
  %25 = load i32, i32* %nb_hints.addr, align 4
  %cmp18 = icmp slt i32 %24, %25
  br i1 %cmp18, label %for.body20, label %for.end108

for.body20:                                       ; preds = %for.cond17
  %26 = load i64*, i64** %hints.addr, align 8
  %27 = load i32, i32* %i16, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds i64, i64* %26, i64 %idxprom21
  %28 = load i64, i64* %arrayidx22, align 8
  store i64 %28, i64* %hint_id, align 8
  %29 = load %struct.hash_table*, %struct.hash_table** @clause_table, align 8
  %30 = load i64, i64* %hint_id, align 8
  %call = call i8* @hash_table_find(%struct.hash_table* noundef %29, i64 noundef %30)
  %31 = bitcast i8* %call to i32*
  store i32* %31, i32** %cls, align 8
  %32 = load i32*, i32** %cls, align 8
  %tobool = icmp ne i32* %32, null
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv23 = sext i32 %lnot.ext to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body20
  %33 = load i64, i64* %base_id.addr, align 8
  %34 = load i64, i64* %hint_id, align 8
  %call25 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 noundef %33, i64 noundef %34) #6
  br label %for.end108

if.end:                                           ; preds = %for.body20
  store i32 0, i32* %new_unit, align 4
  store i32 0, i32* %lit_idx, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc73, %if.end
  %35 = load i32*, i32** %cls, align 8
  %36 = load i32, i32* %lit_idx, align 4
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %35, i64 %idxprom27
  %37 = load i32, i32* %arrayidx28, align 4
  store i32 %37, i32* %lit, align 4
  %38 = load i32, i32* %lit, align 4
  %cmp29 = icmp eq i32 %38, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.cond26
  br label %for.end75

if.end32:                                         ; preds = %for.cond26
  %39 = load i32, i32* %lit, align 4
  %cmp34 = icmp sgt i32 %39, 0
  br i1 %cmp34, label %cond.true36, label %cond.false37

cond.true36:                                      ; preds = %if.end32
  %40 = load i32, i32* %lit, align 4
  br label %cond.end39

cond.false37:                                     ; preds = %if.end32
  %41 = load i32, i32* %lit, align 4
  %sub38 = sub nsw i32 0, %41
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false37, %cond.true36
  %cond40 = phi i32 [ %40, %cond.true36 ], [ %sub38, %cond.false37 ]
  store i32 %cond40, i32* %var33, align 4
  %42 = load %struct.i8_vec*, %struct.i8_vec** @var_values, align 8
  %data41 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %42, i32 0, i32 2
  %43 = load i8*, i8** %data41, align 8
  %44 = load i32, i32* %var33, align 4
  %idxprom42 = sext i32 %44 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %43, i64 %idxprom42
  %45 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %45 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.end55

if.then47:                                        ; preds = %cond.end39
  %46 = load i32, i32* %new_unit, align 4
  %cmp48 = icmp ne i32 %46, 0
  %conv49 = zext i1 %cmp48 to i32
  %conv50 = sext i32 %conv49 to i64
  %tobool51 = icmp ne i64 %conv50, 0
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.then47
  %47 = load i64, i64* %base_id.addr, align 8
  %call53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 noundef %47) #6
  store i8 0, i8* %ok, align 1
  br label %for.end75

if.end54:                                         ; preds = %if.then47
  %48 = load i32, i32* %lit, align 4
  store i32 %48, i32* %new_unit, align 4
  br label %for.inc73

if.end55:                                         ; preds = %cond.end39
  %49 = load %struct.i8_vec*, %struct.i8_vec** @var_values, align 8
  %data56 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %49, i32 0, i32 2
  %50 = load i8*, i8** %data56, align 8
  %51 = load i32, i32* %var33, align 4
  %idxprom57 = sext i32 %51 to i64
  %arrayidx58 = getelementptr inbounds i8, i8* %50, i64 %idxprom57
  %52 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %52 to i32
  %cmp60 = icmp sgt i32 %conv59, 0
  %frombool = zext i1 %cmp60 to i8
  store i8 %frombool, i8* %sign, align 1
  %53 = load i8, i8* %sign, align 1
  %tobool62 = trunc i8 %53 to i1
  %conv63 = zext i1 %tobool62 to i32
  %54 = load i32, i32* %lit, align 4
  %cmp64 = icmp sgt i32 %54, 0
  %conv65 = zext i1 %cmp64 to i32
  %cmp66 = icmp eq i32 %conv63, %conv65
  %conv67 = zext i1 %cmp66 to i32
  %conv68 = sext i32 %conv67 to i64
  %tobool69 = icmp ne i64 %conv68, 0
  br i1 %tobool69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end55
  %55 = load i64, i64* %base_id.addr, align 8
  %56 = load i64, i64* %hint_id, align 8
  %call71 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 noundef %55, i64 noundef %56) #6
  store i8 0, i8* %ok, align 1
  br label %for.end75

if.end72:                                         ; preds = %if.end55
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72, %if.end54
  %57 = load i32, i32* %lit_idx, align 4
  %inc74 = add nsw i32 %57, 1
  store i32 %inc74, i32* %lit_idx, align 4
  br label %for.cond26

for.end75:                                        ; preds = %if.then70, %if.then52, %if.then31
  %58 = load i8, i8* %ok, align 1
  %tobool76 = trunc i8 %58 to i1
  br i1 %tobool76, label %if.end78, label %if.then77

if.then77:                                        ; preds = %for.end75
  br label %for.end108

if.end78:                                         ; preds = %for.end75
  %59 = load i32, i32* %new_unit, align 4
  %cmp79 = icmp eq i32 %59, 0
  br i1 %cmp79, label %if.then81, label %if.end90

if.then81:                                        ; preds = %if.end78
  %60 = load i32, i32* %i16, align 4
  %add82 = add nsw i32 %60, 1
  %61 = load i32, i32* %nb_hints.addr, align 4
  %cmp83 = icmp slt i32 %add82, %61
  %conv84 = zext i1 %cmp83 to i32
  %conv85 = sext i32 %conv84 to i64
  %tobool86 = icmp ne i64 %conv85, 0
  br i1 %tobool86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.then81
  %62 = load i64, i64* %base_id.addr, align 8
  %63 = load i64, i64* %hint_id, align 8
  %call88 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i64 noundef %62, i64 noundef %63) #6
  br label %for.end108

if.end89:                                         ; preds = %if.then81
  call void @reset_assignments()
  store i1 true, i1* %retval, align 1
  br label %return

if.end90:                                         ; preds = %if.end78
  %64 = load i32, i32* %new_unit, align 4
  %cmp92 = icmp sgt i32 %64, 0
  br i1 %cmp92, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %if.end90
  %65 = load i32, i32* %new_unit, align 4
  br label %cond.end97

cond.false95:                                     ; preds = %if.end90
  %66 = load i32, i32* %new_unit, align 4
  %sub96 = sub nsw i32 0, %66
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false95, %cond.true94
  %cond98 = phi i32 [ %65, %cond.true94 ], [ %sub96, %cond.false95 ]
  store i32 %cond98, i32* %var91, align 4
  %67 = load i32, i32* %new_unit, align 4
  %cmp99 = icmp sgt i32 %67, 0
  %68 = zext i1 %cmp99 to i64
  %cond101 = select i1 %cmp99, i32 1, i32 -1
  %conv102 = trunc i32 %cond101 to i8
  %69 = load %struct.i8_vec*, %struct.i8_vec** @var_values, align 8
  %data103 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %69, i32 0, i32 2
  %70 = load i8*, i8** %data103, align 8
  %71 = load i32, i32* %var91, align 4
  %idxprom104 = sext i32 %71 to i64
  %arrayidx105 = getelementptr inbounds i8, i8* %70, i64 %idxprom104
  store i8 %conv102, i8* %arrayidx105, align 1
  %72 = load %struct.int_vec*, %struct.int_vec** @assigned_units, align 8
  %73 = load i32, i32* %var91, align 4
  call void @int_vec_push(%struct.int_vec* noundef %72, i32 noundef %73)
  br label %for.inc106

for.inc106:                                       ; preds = %cond.end97
  %74 = load i32, i32* %i16, align 4
  %inc107 = add nsw i32 %74, 1
  store i32 %inc107, i32* %i16, align 4
  br label %for.cond17, !llvm.loop !13

for.end108:                                       ; preds = %if.then87, %if.then77, %if.then, %for.cond17
  %75 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), align 16
  %conv109 = sext i8 %75 to i32
  %cmp110 = icmp eq i32 %conv109, 0
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %for.end108
  %76 = load i64, i64* %base_id.addr, align 8
  %call113 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 noundef %76) #6
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %for.end108
  call void @reset_assignments()
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end114, %if.end89
  %77 = load i1, i1* %retval, align 1
  ret i1 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int_vec_reserve(%struct.int_vec* noundef %vec, i64 noundef %new_cap) #0 {
entry:
  %vec.addr = alloca %struct.int_vec*, align 8
  %new_cap.addr = alloca i64, align 8
  store %struct.int_vec* %vec, %struct.int_vec** %vec.addr, align 8
  store i64 %new_cap, i64* %new_cap.addr, align 8
  %0 = load i64, i64* %new_cap.addr, align 8
  %1 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.int_vec, %struct.int_vec* %1, i32 0, i32 0
  %2 = load i64, i64* %capacity, align 8
  %cmp = icmp ugt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.int_vec, %struct.int_vec* %3, i32 0, i32 2
  %4 = load i32*, i32** %data, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load i64, i64* %new_cap.addr, align 8
  %mul = mul i64 %6, 4
  %call = call i8* @trusted_utils_realloc(i8* noundef %5, i64 noundef %mul)
  %7 = bitcast i8* %call to i32*
  %8 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %data1 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %8, i32 0, i32 2
  store i32* %7, i32** %data1, align 8
  %9 = load i64, i64* %new_cap.addr, align 8
  %10 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %capacity2 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %10, i32 0, i32 0
  store i64 %9, i64* %capacity2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %11, i32 0, i32 1
  %12 = load i64, i64* %size, align 8
  %13 = load i64, i64* %new_cap.addr, align 8
  %cmp3 = icmp ugt i64 %12, %13
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %14 = load i64, i64* %new_cap.addr, align 8
  %15 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %size5 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %15, i32 0, i32 1
  store i64 %14, i64* %size5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int_vec_push(%struct.int_vec* noundef %vec, i32 noundef %elem) #0 {
entry:
  %vec.addr = alloca %struct.int_vec*, align 8
  %elem.addr = alloca i32, align 4
  %new_cap = alloca i64, align 8
  store %struct.int_vec* %vec, %struct.int_vec** %vec.addr, align 8
  store i32 %elem, i32* %elem.addr, align 4
  %0 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  %2 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.int_vec, %struct.int_vec* %2, i32 0, i32 0
  %3 = load i64, i64* %capacity, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %4 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %capacity1 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %4, i32 0, i32 0
  %5 = load i64, i64* %capacity1, align 8
  %conv = uitofp i64 %5 to double
  %mul = fmul double %conv, 1.300000e+00
  %conv2 = fptoui double %mul to i64
  store i64 %conv2, i64* %new_cap, align 8
  %6 = load i64, i64* %new_cap, align 8
  %7 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %capacity3 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %7, i32 0, i32 0
  %8 = load i64, i64* %capacity3, align 8
  %add = add i64 %8, 1
  %cmp4 = icmp ult i64 %6, %add
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %capacity7 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %9, i32 0, i32 0
  %10 = load i64, i64* %capacity7, align 8
  %add8 = add i64 %10, 1
  store i64 %add8, i64* %new_cap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %11 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %12 = load i64, i64* %new_cap, align 8
  call void @int_vec_reserve(%struct.int_vec* noundef %11, i64 noundef %12)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %13 = load i32, i32* %elem.addr, align 4
  %14 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.int_vec, %struct.int_vec* %14, i32 0, i32 2
  %15 = load i32*, i32** %data, align 8
  %16 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %size10 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %16, i32 0, i32 1
  %17 = load i64, i64* %size10, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %size10, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %13, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @clauses_equivalent(i32* noundef %left_cls, i32* noundef %right_cls) #0 {
entry:
  %retval = alloca i1, align 1
  %left_cls.addr = alloca i32*, align 8
  %right_cls.addr = alloca i32*, align 8
  %lit_idx = alloca i32, align 4
  %left_lit = alloca i32, align 4
  %found = alloca i8, align 1
  %right_lit_idx = alloca i32, align 4
  %left_size = alloca i32, align 4
  %right_size = alloca i32, align 4
  store i32* %left_cls, i32** %left_cls.addr, align 8
  store i32* %right_cls, i32** %right_cls.addr, align 8
  store i32 0, i32* %lit_idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32*, i32** %left_cls.addr, align 8
  %1 = load i32, i32* %lit_idx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %left_cls.addr, align 8
  %4 = load i32, i32* %lit_idx, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %left_lit, align 4
  store i8 0, i8* %found, align 1
  store i32 0, i32* %right_lit_idx, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32*, i32** %right_cls.addr, align 8
  %7 = load i32, i32* %right_lit_idx, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  %9 = load i32*, i32** %right_cls.addr, align 8
  %10 = load i32, i32* %right_lit_idx, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %12 = load i32, i32* %left_lit, align 4
  %cmp10 = icmp eq i32 %11, %12
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  store i8 1, i8* %found, align 1
  br label %for.end

if.end:                                           ; preds = %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %right_lit_idx, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %right_lit_idx, align 4
  br label %for.cond3, !llvm.loop !14

for.end:                                          ; preds = %if.then, %for.cond3
  %14 = load i8, i8* %found, align 1
  %tobool = trunc i8 %14 to i1
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %for.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end12:                                         ; preds = %for.end
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %15 = load i32, i32* %lit_idx, align 4
  %inc14 = add nsw i32 %15, 1
  store i32 %inc14, i32* %lit_idx, align 4
  br label %for.cond, !llvm.loop !15

for.end15:                                        ; preds = %for.cond
  %16 = load i32, i32* %lit_idx, align 4
  store i32 %16, i32* %left_size, align 4
  store i32 0, i32* %lit_idx, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc21, %for.end15
  %17 = load i32*, i32** %right_cls.addr, align 8
  %18 = load i32, i32* %lit_idx, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %17, i64 %idxprom17
  %19 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp ne i32 %19, 0
  br i1 %cmp19, label %for.body20, label %for.end23

for.body20:                                       ; preds = %for.cond16
  br label %for.inc21

for.inc21:                                        ; preds = %for.body20
  %20 = load i32, i32* %lit_idx, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %lit_idx, align 4
  br label %for.cond16, !llvm.loop !16

for.end23:                                        ; preds = %for.cond16
  %21 = load i32, i32* %lit_idx, align 4
  store i32 %21, i32* %right_size, align 4
  %22 = load i32, i32* %left_size, align 4
  %23 = load i32, i32* %right_size, align 4
  %cmp24 = icmp eq i32 %22, %23
  store i1 %cmp24, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end23, %if.then11
  %24 = load i1, i1* %retval, align 1
  ret i1 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrat_check_add_axiomatic_clause(i64 noundef %id, i32* noundef %lits, i32 noundef %nb_lits) #0 {
entry:
  %id.addr = alloca i64, align 8
  %lits.addr = alloca i32*, align 8
  %nb_lits.addr = alloca i32, align 4
  %cls = alloca i32*, align 8
  %ok = alloca i8, align 1
  %old_cls = alloca i32*, align 8
  store i64 %id, i64* %id.addr, align 8
  store i32* %lits, i32** %lits.addr, align 8
  store i32 %nb_lits, i32* %nb_lits.addr, align 4
  %0 = load i32*, i32** %lits.addr, align 8
  %1 = load i32, i32* %nb_lits.addr, align 4
  %call = call i32* @clause_init(i32* noundef %0, i32 noundef %1)
  store i32* %call, i32** %cls, align 8
  %2 = load %struct.hash_table*, %struct.hash_table** @clause_table, align 8
  %3 = load i64, i64* %id.addr, align 8
  %4 = load i32*, i32** %cls, align 8
  %5 = bitcast i32* %4 to i8*
  %call1 = call zeroext i1 @hash_table_insert(%struct.hash_table* noundef %2, i64 noundef %3, i8* noundef %5)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* %ok, align 1
  %6 = load i8, i8* %ok, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load i8, i8* @lenient, align 1
  %tobool2 = trunc i8 %7 to i1
  br i1 %tobool2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.then
  %8 = load %struct.hash_table*, %struct.hash_table** @clause_table, align 8
  %9 = load i64, i64* %id.addr, align 8
  %call4 = call i8* @hash_table_find(%struct.hash_table* noundef %8, i64 noundef %9)
  %10 = bitcast i8* %call4 to i32*
  store i32* %10, i32** %old_cls, align 8
  %11 = load i32*, i32** %old_cls, align 8
  %tobool5 = icmp ne i32* %11, null
  br i1 %tobool5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then3
  %12 = load i32*, i32** %old_cls, align 8
  %13 = load i32*, i32** %cls, align 8
  %call6 = call zeroext i1 @clauses_equivalent(i32* noundef %12, i32* noundef %13)
  br i1 %call6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true
  store i8 1, i8* %ok, align 1
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true, %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %14 = load i8, i8* %ok, align 1
  %tobool9 = trunc i8 %14 to i1
  br i1 %tobool9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  %15 = load i64, i64* %id.addr, align 8
  %call11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 noundef %15) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %if.end15

if.else:                                          ; preds = %entry
  %16 = load i32, i32* %nb_lits.addr, align 4
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  store i8 1, i8* @unsat_proven, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end12
  %17 = load i8, i8* %ok, align 1
  %tobool16 = trunc i8 %17 to i1
  ret i1 %tobool16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lrat_check_init(i32 noundef %nb_vars, i1 noundef zeroext %opt_check_model, i1 noundef zeroext %opt_lenient) #0 {
entry:
  %nb_vars.addr = alloca i32, align 4
  %opt_check_model.addr = alloca i8, align 1
  %opt_lenient.addr = alloca i8, align 1
  store i32 %nb_vars, i32* %nb_vars.addr, align 4
  %frombool = zext i1 %opt_check_model to i8
  store i8 %frombool, i8* %opt_check_model.addr, align 1
  %frombool1 = zext i1 %opt_lenient to i8
  store i8 %frombool1, i8* %opt_lenient.addr, align 1
  %call = call %struct.hash_table* @hash_table_init(i32 noundef 16)
  store %struct.hash_table* %call, %struct.hash_table** @clause_table, align 8
  %call2 = call %struct.int_vec* @int_vec_init(i64 noundef 512)
  store %struct.int_vec* %call2, %struct.int_vec** @clause_to_add, align 8
  %0 = load i32, i32* %nb_vars.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %call3 = call %struct.i8_vec* @i8_vec_init(i64 noundef %conv)
  store %struct.i8_vec* %call3, %struct.i8_vec** @var_values, align 8
  %call4 = call %struct.int_vec* @int_vec_init(i64 noundef 512)
  store %struct.int_vec* %call4, %struct.int_vec** @assigned_units, align 8
  %1 = load i8, i8* %opt_check_model.addr, align 1
  %tobool = trunc i8 %1 to i1
  %frombool5 = zext i1 %tobool to i8
  store i8 %frombool5, i8* @check_model, align 1
  %2 = load i8, i8* %opt_lenient.addr, align 1
  %tobool6 = trunc i8 %2 to i1
  %frombool7 = zext i1 %tobool6 to i8
  store i8 %frombool7, i8* @lenient, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.int_vec* @int_vec_init(i64 noundef %capacity) #0 {
entry:
  %capacity.addr = alloca i64, align 8
  %vector = alloca %struct.int_vec*, align 8
  store i64 %capacity, i64* %capacity.addr, align 8
  %call = call i8* @trusted_utils_malloc(i64 noundef 24)
  %0 = bitcast i8* %call to %struct.int_vec*
  store %struct.int_vec* %0, %struct.int_vec** %vector, align 8
  %1 = load %struct.int_vec*, %struct.int_vec** %vector, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %1, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %2 = load i64, i64* %capacity.addr, align 8
  %3 = load %struct.int_vec*, %struct.int_vec** %vector, align 8
  %capacity1 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %3, i32 0, i32 0
  store i64 %2, i64* %capacity1, align 8
  %4 = load i64, i64* %capacity.addr, align 8
  %call2 = call i8* @trusted_utils_calloc(i64 noundef %4, i64 noundef 4)
  %5 = bitcast i8* %call2 to i32*
  %6 = load %struct.int_vec*, %struct.int_vec** %vector, align 8
  %data = getelementptr inbounds %struct.int_vec, %struct.int_vec* %6, i32 0, i32 2
  store i32* %5, i32** %data, align 8
  %7 = load %struct.int_vec*, %struct.int_vec** %vector, align 8
  ret %struct.int_vec* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i8_vec* @i8_vec_init(i64 noundef %capacity) #0 {
entry:
  %capacity.addr = alloca i64, align 8
  %vector = alloca %struct.i8_vec*, align 8
  store i64 %capacity, i64* %capacity.addr, align 8
  %call = call i8* @trusted_utils_malloc(i64 noundef 24)
  %0 = bitcast i8* %call to %struct.i8_vec*
  store %struct.i8_vec* %0, %struct.i8_vec** %vector, align 8
  %1 = load %struct.i8_vec*, %struct.i8_vec** %vector, align 8
  %size = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %1, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %2 = load i64, i64* %capacity.addr, align 8
  %3 = load %struct.i8_vec*, %struct.i8_vec** %vector, align 8
  %capacity1 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %3, i32 0, i32 0
  store i64 %2, i64* %capacity1, align 8
  %4 = load i64, i64* %capacity.addr, align 8
  %call2 = call i8* @trusted_utils_calloc(i64 noundef %4, i64 noundef 1)
  %5 = load %struct.i8_vec*, %struct.i8_vec** %vector, align 8
  %data = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %5, i32 0, i32 2
  store i8* %call2, i8** %data, align 8
  %6 = load %struct.i8_vec*, %struct.i8_vec** %vector, align 8
  ret %struct.i8_vec* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrat_check_load(i32 noundef %lit) #0 {
entry:
  %retval = alloca i1, align 1
  %lit.addr = alloca i32, align 4
  store i32 %lit, i32* %lit.addr, align 4
  %0 = load i32, i32* %lit.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @id_to_add, align 8
  %2 = load %struct.int_vec*, %struct.int_vec** @clause_to_add, align 8
  %data = getelementptr inbounds %struct.int_vec, %struct.int_vec* %2, i32 0, i32 2
  %3 = load i32*, i32** %data, align 8
  %4 = load %struct.int_vec*, %struct.int_vec** @clause_to_add, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %4, i32 0, i32 1
  %5 = load i64, i64* %size, align 8
  %conv = trunc i64 %5 to i32
  %call = call zeroext i1 @lrat_check_add_axiomatic_clause(i64 noundef %1, i32* noundef %3, i32 noundef %conv)
  br i1 %call, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i64, i64* @id_to_add, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* @id_to_add, align 8
  %7 = load %struct.int_vec*, %struct.int_vec** @clause_to_add, align 8
  call void @int_vec_push(%struct.int_vec* noundef %7, i32 noundef 0)
  %8 = load %struct.int_vec*, %struct.int_vec** @clause_to_add, align 8
  %data2 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %8, i32 0, i32 2
  %9 = load i32*, i32** %data2, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load %struct.int_vec*, %struct.int_vec** @clause_to_add, align 8
  %size3 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %11, i32 0, i32 1
  %12 = load i64, i64* %size3, align 8
  %mul = mul i64 %12, 4
  call void @siphash_update(i8* noundef %10, i64 noundef %mul)
  %13 = load %struct.int_vec*, %struct.int_vec** @clause_to_add, align 8
  call void @int_vec_clear(%struct.int_vec* noundef %13)
  store i1 true, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %entry
  %14 = load %struct.int_vec*, %struct.int_vec** @clause_to_add, align 8
  %15 = load i32, i32* %lit.addr, align 4
  call void @int_vec_push(%struct.int_vec* noundef %14, i32 noundef %15)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.end, %if.then1
  %16 = load i1, i1* %retval, align 1
  ret i1 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrat_check_end_load(i8** noundef %out_sig) #0 {
entry:
  %retval = alloca i1, align 1
  %out_sig.addr = alloca i8**, align 8
  store i8** %out_sig, i8*** %out_sig.addr, align 8
  %0 = load %struct.int_vec*, %struct.int_vec** @clause_to_add, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0)) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @siphash_pad(i64 noundef 2)
  %call1 = call i8* @siphash_digest()
  %2 = load i8**, i8*** %out_sig.addr, align 8
  store i8* %call1, i8** %2, align 8
  store i8 1, i8* @done_loading, align 1
  %3 = load i64, i64* @id_to_add, align 8
  %sub = sub i64 %3, 1
  store i64 %sub, i64* @nb_loaded_clauses, align 8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siphash_pad(i64 noundef %nb_bytes) #0 {
entry:
  %nb_bytes.addr = alloca i64, align 8
  %c = alloca i8, align 1
  %i = alloca i64, align 8
  store i64 %nb_bytes, i64* %nb_bytes.addr, align 8
  store i8 0, i8* %c, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %nb_bytes.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @siphash_update(i8* noundef %c, i64 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, i64* %i, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrat_check_add_clause(i64 noundef %id, i32* noundef %lits, i32 noundef %nb_lits, i64* noundef %hints, i32 noundef %nb_hints) #0 {
entry:
  %retval = alloca i1, align 1
  %id.addr = alloca i64, align 8
  %lits.addr = alloca i32*, align 8
  %nb_lits.addr = alloca i32, align 4
  %hints.addr = alloca i64*, align 8
  %nb_hints.addr = alloca i32, align 4
  store i64 %id, i64* %id.addr, align 8
  store i32* %lits, i32** %lits.addr, align 8
  store i32 %nb_lits, i32* %nb_lits.addr, align 4
  store i64* %hints, i64** %hints.addr, align 8
  store i32 %nb_hints, i32* %nb_hints.addr, align 4
  %0 = load i64, i64* %id.addr, align 8
  %1 = load i32*, i32** %lits.addr, align 8
  %2 = load i32, i32* %nb_lits.addr, align 4
  %3 = load i64*, i64** %hints.addr, align 8
  %4 = load i32, i32* %nb_hints.addr, align 4
  %call = call zeroext i1 @check_clause(i64 noundef %0, i32* noundef %1, i32 noundef %2, i64* noundef %3, i32 noundef %4)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %id.addr, align 8
  %6 = load i32*, i32** %lits.addr, align 8
  %7 = load i32, i32* %nb_lits.addr, align 4
  %call1 = call zeroext i1 @lrat_check_add_axiomatic_clause(i64 noundef %5, i32* noundef %6, i32 noundef %7)
  store i1 %call1, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrat_check_delete_clause(i64* noundef %ids, i32 noundef %nb_ids) #0 {
entry:
  %retval = alloca i1, align 1
  %ids.addr = alloca i64*, align 8
  %nb_ids.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %id = alloca i64, align 8
  %cls = alloca i32*, align 8
  store i64* %ids, i64** %ids.addr, align 8
  store i32 %nb_ids, i32* %nb_ids.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nb_ids.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64*, i64** %ids.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i64, i64* %2, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  store i64 %4, i64* %id, align 8
  %5 = load %struct.hash_table*, %struct.hash_table** @clause_table, align 8
  %6 = load i64, i64* %id, align 8
  %call = call i8* @hash_table_find(%struct.hash_table* noundef %5, i64 noundef %6)
  %7 = bitcast i8* %call to i32*
  store i32* %7, i32** %cls, align 8
  %8 = load i32*, i32** %cls, align 8
  %tobool = icmp ne i32* %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load i64, i64* %id, align 8
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i64 noundef %9) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  %10 = load i8, i8* @check_model, align 1
  %tobool2 = trunc i8 %10 to i1
  br i1 %tobool2, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %11 = load i64, i64* %id, align 8
  %12 = load i64, i64* @nb_loaded_clauses, align 8
  %cmp3 = icmp ule i64 %11, %12
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  br label %for.inc

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %13 = load i32*, i32** %cls, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* noundef %14) #6
  %15 = load %struct.hash_table*, %struct.hash_table** @clause_table, align 8
  %call6 = call zeroext i1 @hash_table_delete_last_found(%struct.hash_table* noundef %15)
  br i1 %call6, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end5
  %16 = load i64, i64* %id, align 8
  %call8 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i64 noundef %16) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %if.end5
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %if.then4
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then7, %if.then
  %18 = load i1, i1* %retval, align 1
  ret i1 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrat_check_validate_unsat() #0 {
entry:
  %retval = alloca i1, align 1
  %0 = load i8, i8* @done_loading, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0)) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* @unsat_proven, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0)) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lrat_check_validate_sat(i32* noundef %model, i64 noundef %size) #0 {
entry:
  %retval = alloca i1, align 1
  %model.addr = alloca i32*, align 8
  %size.addr = alloca i64, align 8
  %id = alloca i64, align 8
  %cls = alloca i32*, align 8
  %satisfied = alloca i8, align 1
  %lit_idx = alloca i32, align 4
  %lit = alloca i32, align 4
  %var = alloca i32, align 4
  %modelLit = alloca i32, align 4
  store i32* %model, i32** %model.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8, i8* @done_loading, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0)) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8, i8* @check_model, align 1
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i64 0, i64 0)) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end4:                                          ; preds = %if.end
  store i64 1, i64* %id, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %if.end4
  %2 = load i64, i64* %id, align 8
  %3 = load i64, i64* @nb_loaded_clauses, align 8
  %cmp = icmp ule i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  %4 = load %struct.hash_table*, %struct.hash_table** @clause_table, align 8
  %5 = load i64, i64* %id, align 8
  %call5 = call i8* @hash_table_find(%struct.hash_table* noundef %4, i64 noundef %5)
  %6 = bitcast i8* %call5 to i32*
  store i32* %6, i32** %cls, align 8
  %7 = load i32*, i32** %cls, align 8
  %tobool6 = icmp ne i32* %7, null
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool7 = icmp ne i64 %conv, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.body
  %8 = load i64, i64* %id, align 8
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i64 noundef %8) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end10:                                         ; preds = %for.body
  store i8 0, i8* %satisfied, align 1
  store i32 0, i32* %lit_idx, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %if.end10
  %9 = load i32*, i32** %cls, align 8
  %10 = load i32, i32* %lit_idx, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %cmp12 = icmp ne i32 %11, 0
  br i1 %cmp12, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond11
  %12 = load i32*, i32** %cls, align 8
  %13 = load i32, i32* %lit_idx, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %12, i64 %idxprom15
  %14 = load i32, i32* %arrayidx16, align 4
  store i32 %14, i32* %lit, align 4
  %15 = load i32, i32* %lit, align 4
  %cmp17 = icmp sgt i32 %15, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body14
  %16 = load i32, i32* %lit, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body14
  %17 = load i32, i32* %lit, align 4
  %sub = sub nsw i32 0, %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %var, align 4
  %18 = load i32, i32* %var, align 4
  %sub19 = sub nsw i32 %18, 1
  %conv20 = sext i32 %sub19 to i64
  %19 = load i64, i64* %size.addr, align 8
  %cmp21 = icmp uge i64 %conv20, %19
  %conv22 = zext i1 %cmp21 to i32
  %conv23 = sext i32 %conv22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %cond.end
  %20 = load i32, i32* %var, align 4
  %call26 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i32 noundef %20) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end27:                                         ; preds = %cond.end
  %21 = load i32*, i32** %model.addr, align 8
  %22 = load i32, i32* %var, align 4
  %sub28 = sub nsw i32 %22, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %21, i64 %idxprom29
  %23 = load i32, i32* %arrayidx30, align 4
  store i32 %23, i32* %modelLit, align 4
  %24 = load i32, i32* %modelLit, align 4
  %25 = load i32, i32* %var, align 4
  %cmp31 = icmp ne i32 %24, %25
  br i1 %cmp31, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end27
  %26 = load i32, i32* %modelLit, align 4
  %27 = load i32, i32* %var, align 4
  %sub33 = sub nsw i32 0, %27
  %cmp34 = icmp ne i32 %26, %sub33
  br i1 %cmp34, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %28 = load i32, i32* %modelLit, align 4
  %cmp36 = icmp ne i32 %28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end27
  %29 = phi i1 [ false, %land.lhs.true ], [ false, %if.end27 ], [ %cmp36, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  %conv38 = sext i32 %land.ext to i64
  %tobool39 = icmp ne i64 %conv38, 0
  br i1 %tobool39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %land.end
  %30 = load i32, i32* %modelLit, align 4
  %31 = load i32, i32* %var, align 4
  %call41 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.18, i64 0, i64 0), i32 noundef %30, i32 noundef %31) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end42:                                         ; preds = %land.end
  %32 = load i32, i32* %modelLit, align 4
  %cmp43 = icmp eq i32 %32, 0
  br i1 %cmp43, label %if.then45, label %if.end49

if.then45:                                        ; preds = %if.end42
  %33 = load i32, i32* %lit, align 4
  %34 = load i32*, i32** %model.addr, align 8
  %35 = load i32, i32* %var, align 4
  %sub46 = sub nsw i32 %35, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %34, i64 %idxprom47
  store i32 %33, i32* %arrayidx48, align 4
  store i32 %33, i32* %modelLit, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %if.end42
  %36 = load i32, i32* %modelLit, align 4
  %37 = load i32, i32* %lit, align 4
  %cmp50 = icmp eq i32 %36, %37
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end49
  store i8 1, i8* %satisfied, align 1
  br label %for.end

if.end53:                                         ; preds = %if.end49
  br label %for.inc

for.inc:                                          ; preds = %if.end53
  %38 = load i32, i32* %lit_idx, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %lit_idx, align 4
  br label %for.cond11, !llvm.loop !19

for.end:                                          ; preds = %if.then52, %for.cond11
  %39 = load i8, i8* %satisfied, align 1
  %tobool54 = trunc i8 %39 to i1
  %lnot55 = xor i1 %tobool54, true
  %lnot.ext56 = zext i1 %lnot55 to i32
  %conv57 = sext i32 %lnot.ext56 to i64
  %tobool58 = icmp ne i64 %conv57, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %for.end
  %40 = load i64, i64* %id, align 8
  %call60 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i64 noundef %40) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end61:                                         ; preds = %for.end
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %41 = load i64, i64* %id, align 8
  %inc63 = add i64 %41, 1
  store i64 %inc63, i64* %id, align 8
  br label %for.cond, !llvm.loop !20

for.end64:                                        ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end64, %if.then59, %if.then40, %if.then25, %if.then8, %if.then2, %if.then
  %42 = load i1, i1* %retval, align 1
  ret i1 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fifo_directives = alloca i8*, align 8
  %fifo_feedback = alloca i8*, align 8
  %check_model = alloca i8, align 1
  %lenient = alloca i8, align 1
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8** %fifo_directives, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8** %fifo_feedback, align 8
  store i8 0, i8* %check_model, align 1
  store i8 0, i8* %lenient, align 1
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  call void @trusted_utils_try_match_arg(i8* noundef %4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8** noundef %fifo_directives)
  %5 = load i8**, i8*** %argv.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  call void @trusted_utils_try_match_arg(i8* noundef %7, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8** noundef %fifo_feedback)
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %10 = load i8*, i8** %arrayidx4, align 8
  call void @trusted_utils_try_match_flag(i8* noundef %10, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* noundef %check_model)
  %11 = load i8**, i8*** %argv.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 %idxprom5
  %13 = load i8*, i8** %arrayidx6, align 8
  call void @trusted_utils_try_match_flag(i8* noundef %13, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* noundef %lenient)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %15 = load i8*, i8** %fifo_directives, align 8
  %16 = load i8*, i8** %fifo_feedback, align 8
  call void @tc_init(i8* noundef %15, i8* noundef %16)
  %17 = load i8, i8* %check_model, align 1
  %tobool = trunc i8 %17 to i1
  %18 = load i8, i8* %lenient, align 1
  %tobool7 = trunc i8 %18 to i1
  %call = call i32 @tc_run(i1 noundef zeroext %tobool, i1 noundef zeroext %tobool7)
  store i32 %call, i32* %res, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* noundef %19)
  %20 = load i32, i32* %res, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_try_match_arg(i8* noundef %arg, i8* noundef %opt, i8** noundef %out) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %opt.addr = alloca i8*, align 8
  %out.addr = alloca i8**, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8* %opt, i8** %opt.addr, align 8
  store i8** %out, i8*** %out.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8*, i8** %opt.addr, align 8
  %call = call zeroext i1 @begins_with(i8* noundef %0, i8* noundef %1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %arg.addr, align 8
  %3 = load i8*, i8** %opt.addr, align 8
  %call1 = call i64 @strlen(i8* noundef %3) #8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %call1
  %4 = load i8**, i8*** %out.addr, align 8
  store i8* %add.ptr, i8** %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_try_match_flag(i8* noundef %arg, i8* noundef %opt, i8* noundef %out) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %opt.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8* %opt, i8** %opt.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8*, i8** %opt.addr, align 8
  %call = call zeroext i1 @begins_with(i8* noundef %0, i8* noundef %1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %out.addr, align 8
  store i8 1, i8* %2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tc_init(i8* noundef %fifo_in, i8* noundef %fifo_out) #0 {
entry:
  %fifo_in.addr = alloca i8*, align 8
  %fifo_out.addr = alloca i8*, align 8
  store i8* %fifo_in, i8** %fifo_in.addr, align 8
  store i8* %fifo_out, i8** %fifo_out.addr, align 8
  %0 = load i8*, i8** %fifo_in.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @input, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @trusted_utils_exit_eof()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %fifo_out.addr, align 8
  %call1 = call noalias %struct._IO_FILE* @fopen(i8* noundef %2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @output, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @trusted_utils_exit_eof()
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %call5 = call %struct.int_vec* @int_vec_init(i64 noundef 16384)
  store %struct.int_vec* %call5, %struct.int_vec** @buf_lits, align 8
  %call6 = call %struct.u64_vec* @u64_vec_init(i64 noundef 16384)
  store %struct.u64_vec* %call6, %struct.u64_vec** @buf_hints, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_run(i1 noundef zeroext %check_model, i1 noundef zeroext %lenient) #0 {
entry:
  %check_model.addr = alloca i8, align 1
  %lenient.addr = alloca i8, align 1
  %start = alloca i64, align 8
  %nb_produced = alloca i64, align 8
  %nb_imported = alloca i64, align 8
  %nb_deleted = alloca i64, align 8
  %reported_error = alloca i8, align 1
  %c = alloca i32, align 4
  %id = alloca i64, align 8
  %nb_lits = alloca i32, align 4
  %nb_hints = alloca i32, align 4
  %share = alloca i8, align 1
  %res = alloca i8, align 1
  %id16 = alloca i64, align 8
  %nb_lits18 = alloca i32, align 4
  %res20 = alloca i8, align 1
  %nb_hints29 = alloca i32, align 4
  %res31 = alloca i8, align 1
  %nb_lits40 = alloca i32, align 4
  %i = alloca i32, align 4
  %res62 = alloca i8, align 1
  %model_size = alloca i32, align 4
  %model = alloca i32*, align 8
  %res78 = alloca i8, align 1
  %elapsed = alloca float, align 4
  %frombool = zext i1 %check_model to i8
  store i8 %frombool, i8* %check_model.addr, align 1
  %frombool1 = zext i1 %lenient to i8
  store i8 %frombool1, i8* %lenient.addr, align 1
  %call = call i64 @clock() #6
  store i64 %call, i64* %start, align 8
  store i64 0, i64* %nb_produced, align 8
  store i64 0, i64* %nb_imported, align 8
  store i64 0, i64* %nb_deleted, align 8
  store i8 0, i8* %reported_error, align 1
  br label %while.body

while.body:                                       ; preds = %entry, %if.end107
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call2 = call i32 @trusted_utils_read_char(%struct._IO_FILE* noundef %0)
  store i32 %call2, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 97
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call3 = call i64 @trusted_utils_read_ul(%struct._IO_FILE* noundef %2)
  store i64 %call3, i64* %id, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call4 = call i32 @trusted_utils_read_int(%struct._IO_FILE* noundef %3)
  store i32 %call4, i32* %nb_lits, align 4
  %4 = load i32, i32* %nb_lits, align 4
  call void @read_literals(i32 noundef %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call5 = call i32 @trusted_utils_read_int(%struct._IO_FILE* noundef %5)
  store i32 %call5, i32* %nb_hints, align 4
  %6 = load i32, i32* %nb_hints, align 4
  call void @read_hints(i32 noundef %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call6 = call zeroext i1 @trusted_utils_read_bool(%struct._IO_FILE* noundef %7)
  %frombool7 = zext i1 %call6 to i8
  store i8 %frombool7, i8* %share, align 1
  %8 = load i64, i64* %id, align 8
  %9 = load %struct.int_vec*, %struct.int_vec** @buf_lits, align 8
  %data = getelementptr inbounds %struct.int_vec, %struct.int_vec* %9, i32 0, i32 2
  %10 = load i32*, i32** %data, align 8
  %11 = load i32, i32* %nb_lits, align 4
  %12 = load %struct.u64_vec*, %struct.u64_vec** @buf_hints, align 8
  %data8 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %12, i32 0, i32 2
  %13 = load i64*, i64** %data8, align 8
  %14 = load i32, i32* %nb_hints, align 4
  %15 = load i8, i8* %share, align 1
  %tobool = trunc i8 %15 to i1
  %16 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf_sig, i64 0, i64 0), i8* null
  %call9 = call zeroext i1 @top_check_produce(i64 noundef %8, i32* noundef %10, i32 noundef %11, i64* noundef %13, i32 noundef %14, i8* noundef %cond)
  %frombool10 = zext i1 %call9 to i8
  store i8 %frombool10, i8* %res, align 1
  %17 = load i8, i8* %res, align 1
  %tobool11 = trunc i8 %17 to i1
  call void @say(i1 noundef zeroext %tobool11)
  %18 = load i8, i8* %share, align 1
  %tobool12 = trunc i8 %18 to i1
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  call void @trusted_utils_write_sig(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf_sig, i64 0, i64 0), %struct._IO_FILE* noundef %19)
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  %20 = load i64, i64* %nb_produced, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %nb_produced, align 8
  br label %if.end99

if.else:                                          ; preds = %while.body
  %21 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %21, 105
  br i1 %cmp14, label %if.then15, label %if.else26

if.then15:                                        ; preds = %if.else
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call17 = call i64 @trusted_utils_read_ul(%struct._IO_FILE* noundef %22)
  store i64 %call17, i64* %id16, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call19 = call i32 @trusted_utils_read_int(%struct._IO_FILE* noundef %23)
  store i32 %call19, i32* %nb_lits18, align 4
  %24 = load i32, i32* %nb_lits18, align 4
  call void @read_literals(i32 noundef %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  call void @trusted_utils_read_sig(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf_sig, i64 0, i64 0), %struct._IO_FILE* noundef %25)
  %26 = load i64, i64* %id16, align 8
  %27 = load %struct.int_vec*, %struct.int_vec** @buf_lits, align 8
  %data21 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %27, i32 0, i32 2
  %28 = load i32*, i32** %data21, align 8
  %29 = load i32, i32* %nb_lits18, align 4
  %call22 = call zeroext i1 @top_check_import(i64 noundef %26, i32* noundef %28, i32 noundef %29, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf_sig, i64 0, i64 0))
  %frombool23 = zext i1 %call22 to i8
  store i8 %frombool23, i8* %res20, align 1
  %30 = load i8, i8* %res20, align 1
  %tobool24 = trunc i8 %30 to i1
  call void @say(i1 noundef zeroext %tobool24)
  %31 = load i64, i64* %nb_imported, align 8
  %inc25 = add i64 %31, 1
  store i64 %inc25, i64* %nb_imported, align 8
  br label %if.end98

if.else26:                                        ; preds = %if.else
  %32 = load i32, i32* %c, align 4
  %cmp27 = icmp eq i32 %32, 100
  br i1 %cmp27, label %if.then28, label %if.else36

if.then28:                                        ; preds = %if.else26
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call30 = call i32 @trusted_utils_read_int(%struct._IO_FILE* noundef %33)
  store i32 %call30, i32* %nb_hints29, align 4
  %34 = load i32, i32* %nb_hints29, align 4
  call void @read_hints(i32 noundef %34)
  %35 = load %struct.u64_vec*, %struct.u64_vec** @buf_hints, align 8
  %data32 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %35, i32 0, i32 2
  %36 = load i64*, i64** %data32, align 8
  %37 = load i32, i32* %nb_hints29, align 4
  %call33 = call zeroext i1 @top_check_delete(i64* noundef %36, i32 noundef %37)
  %frombool34 = zext i1 %call33 to i8
  store i8 %frombool34, i8* %res31, align 1
  %38 = load i8, i8* %res31, align 1
  %tobool35 = trunc i8 %38 to i1
  call void @say(i1 noundef zeroext %tobool35)
  %39 = load i32, i32* %nb_hints29, align 4
  %conv = sext i32 %39 to i64
  %40 = load i64, i64* %nb_deleted, align 8
  %add = add i64 %40, %conv
  store i64 %add, i64* %nb_deleted, align 8
  br label %if.end97

if.else36:                                        ; preds = %if.else26
  %41 = load i32, i32* %c, align 4
  %cmp37 = icmp eq i32 %41, 76
  br i1 %cmp37, label %if.then39, label %if.else46

if.then39:                                        ; preds = %if.else36
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call41 = call i32 @trusted_utils_read_int(%struct._IO_FILE* noundef %42)
  store i32 %call41, i32* %nb_lits40, align 4
  %43 = load i32, i32* %nb_lits40, align 4
  call void @read_literals(i32 noundef %43)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then39
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %nb_lits40, align 4
  %cmp42 = icmp slt i32 %44, %45
  br i1 %cmp42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct.int_vec*, %struct.int_vec** @buf_lits, align 8
  %data44 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %46, i32 0, i32 2
  %47 = load i32*, i32** %data44, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds i32, i32* %47, i64 %idxprom
  %49 = load i32, i32* %arrayidx, align 4
  call void @top_check_load(i32 noundef %49)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %50, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  br label %if.end96

if.else46:                                        ; preds = %if.else36
  %51 = load i32, i32* %c, align 4
  %cmp47 = icmp eq i32 %51, 66
  br i1 %cmp47, label %if.then49, label %if.else53

if.then49:                                        ; preds = %if.else46
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call50 = call i32 @trusted_utils_read_int(%struct._IO_FILE* noundef %52)
  store i32 %call50, i32* @nb_vars, align 4
  %53 = load i32, i32* @nb_vars, align 4
  %54 = load i8, i8* %check_model.addr, align 1
  %tobool51 = trunc i8 %54 to i1
  %55 = load i8, i8* %lenient.addr, align 1
  %tobool52 = trunc i8 %55 to i1
  call void @top_check_init(i32 noundef %53, i1 noundef zeroext %tobool51, i1 noundef zeroext %tobool52)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  call void @trusted_utils_read_sig(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @formula_sig, i64 0, i64 0), %struct._IO_FILE* noundef %56)
  call void @top_check_commit_formula_sig(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @formula_sig, i64 0, i64 0))
  call void @say_with_flush(i1 noundef zeroext true)
  br label %if.end95

if.else53:                                        ; preds = %if.else46
  %57 = load i32, i32* %c, align 4
  %cmp54 = icmp eq i32 %57, 69
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.else53
  %call57 = call zeroext i1 @top_check_end_load()
  call void @say_with_flush(i1 noundef zeroext %call57)
  br label %if.end94

if.else58:                                        ; preds = %if.else53
  %58 = load i32, i32* %c, align 4
  %cmp59 = icmp eq i32 %58, 86
  br i1 %cmp59, label %if.then61, label %if.else70

if.then61:                                        ; preds = %if.else58
  %call63 = call zeroext i1 @top_check_validate_unsat(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf_sig, i64 0, i64 0))
  %frombool64 = zext i1 %call63 to i8
  store i8 %frombool64, i8* %res62, align 1
  %59 = load i8, i8* %res62, align 1
  %tobool65 = trunc i8 %59 to i1
  call void @say(i1 noundef zeroext %tobool65)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  call void @trusted_utils_write_sig(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf_sig, i64 0, i64 0), %struct._IO_FILE* noundef %60)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %call66 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %61)
  %62 = load i8, i8* %res62, align 1
  %tobool67 = trunc i8 %62 to i1
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then61
  call void @trusted_utils_log(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then61
  br label %if.end93

if.else70:                                        ; preds = %if.else58
  %63 = load i32, i32* %c, align 4
  %cmp71 = icmp eq i32 %63, 77
  br i1 %cmp71, label %if.then73, label %if.else87

if.then73:                                        ; preds = %if.else70
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call74 = call i32 @trusted_utils_read_int(%struct._IO_FILE* noundef %64)
  store i32 %call74, i32* %model_size, align 4
  %65 = load i32, i32* %model_size, align 4
  %conv75 = sext i32 %65 to i64
  %mul = mul i64 4, %conv75
  %call76 = call i8* @trusted_utils_malloc(i64 noundef %mul)
  %66 = bitcast i8* %call76 to i32*
  store i32* %66, i32** %model, align 8
  %67 = load i32*, i32** %model, align 8
  %68 = load i32, i32* %model_size, align 4
  %conv77 = sext i32 %68 to i64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  call void @trusted_utils_read_ints(i32* noundef %67, i64 noundef %conv77, %struct._IO_FILE* noundef %69)
  %70 = load i32*, i32** %model, align 8
  %71 = load i32, i32* %model_size, align 4
  %conv79 = sext i32 %71 to i64
  %call80 = call zeroext i1 @top_check_validate_sat(i32* noundef %70, i64 noundef %conv79, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf_sig, i64 0, i64 0))
  %frombool81 = zext i1 %call80 to i8
  store i8 %frombool81, i8* %res78, align 1
  %72 = load i8, i8* %res78, align 1
  %tobool82 = trunc i8 %72 to i1
  call void @say(i1 noundef zeroext %tobool82)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  call void @trusted_utils_write_sig(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf_sig, i64 0, i64 0), %struct._IO_FILE* noundef %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %call83 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %74)
  %75 = load i8, i8* %res78, align 1
  %tobool84 = trunc i8 %75 to i1
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.then73
  call void @trusted_utils_log(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.then73
  %76 = load i32*, i32** %model, align 8
  %77 = bitcast i32* %76 to i8*
  call void @free(i8* noundef %77) #6
  br label %if.end92

if.else87:                                        ; preds = %if.else70
  %78 = load i32, i32* %c, align 4
  %cmp88 = icmp eq i32 %78, 84
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %if.else87
  call void @say_with_flush(i1 noundef zeroext true)
  br label %while.end

if.else91:                                        ; preds = %if.else87
  call void @trusted_utils_log_err(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  br label %while.end

if.end92:                                         ; preds = %if.end86
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end69
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then56
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then49
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %for.end
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then28
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then15
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end
  %call100 = call zeroext i1 @top_check_valid()
  %lnot = xor i1 %call100, true
  %lnot.ext = zext i1 %lnot to i32
  %conv101 = sext i32 %lnot.ext to i64
  %tobool102 = icmp ne i64 %conv101, 0
  br i1 %tobool102, label %if.then103, label %if.end107

if.then103:                                       ; preds = %if.end99
  %79 = load i8, i8* %reported_error, align 1
  %tobool104 = trunc i8 %79 to i1
  br i1 %tobool104, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.then103
  call void @trusted_utils_log_err(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0))
  store i8 1, i8* %reported_error, align 1
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.then103
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end99
  br label %while.body

while.end:                                        ; preds = %if.else91, %if.then90
  %call108 = call i64 @clock() #6
  %80 = load i64, i64* %start, align 8
  %sub = sub nsw i64 %call108, %80
  %conv109 = sitofp i64 %sub to float
  %div = fdiv float %conv109, 1.000000e+06
  store float %div, float* %elapsed, align 4
  %81 = load float, float* %elapsed, align 4
  %conv110 = fpext float %81 to double
  %82 = load i64, i64* %nb_produced, align 8
  %83 = load i64, i64* %nb_imported, align 8
  %84 = load i64, i64* %nb_deleted, align 8
  %call111 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0), double noundef %conv110, i64 noundef %82, i64 noundef %83, i64 noundef %84) #6
  call void @trusted_utils_log(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_next_block() #0 {
entry:
  %0 = load i8*, i8** @buf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %2 = load i8*, i8** @buf, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl = shl i64 %conv2, 8
  %or = or i64 %conv, %shl
  %4 = load i8*, i8** @buf, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i64
  %shl5 = shl i64 %conv4, 16
  %or6 = or i64 %or, %shl5
  %6 = load i8*, i8** @buf, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 24
  %or10 = or i64 %or6, %shl9
  %8 = load i8*, i8** @buf, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i64
  %shl13 = shl i64 %conv12, 32
  %or14 = or i64 %or10, %shl13
  %10 = load i8*, i8** @buf, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %11 to i64
  %shl17 = shl i64 %conv16, 40
  %or18 = or i64 %or14, %shl17
  %12 = load i8*, i8** @buf, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %13 to i64
  %shl21 = shl i64 %conv20, 48
  %or22 = or i64 %or18, %shl21
  %14 = load i8*, i8** @buf, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %15 to i64
  %shl25 = shl i64 %conv24, 56
  %or26 = or i64 %or22, %shl25
  store i64 %or26, i64* @m, align 8
  %16 = load i64, i64* @m, align 8
  %17 = load i64, i64* @v3, align 8
  %xor = xor i64 %17, %16
  store i64 %xor, i64* @v3, align 8
  store i32 0, i32* @i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %18 = load i32, i32* @i, align 4
  %cmp = icmp slt i32 %18, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %19 = load i64, i64* @v1, align 8
  %20 = load i64, i64* @v0, align 8
  %add = add i64 %20, %19
  store i64 %add, i64* @v0, align 8
  %21 = load i64, i64* @v1, align 8
  %shl28 = shl i64 %21, 13
  %22 = load i64, i64* @v1, align 8
  %shr = lshr i64 %22, 51
  %or29 = or i64 %shl28, %shr
  store i64 %or29, i64* @v1, align 8
  %23 = load i64, i64* @v0, align 8
  %24 = load i64, i64* @v1, align 8
  %xor30 = xor i64 %24, %23
  store i64 %xor30, i64* @v1, align 8
  %25 = load i64, i64* @v0, align 8
  %shl31 = shl i64 %25, 32
  %26 = load i64, i64* @v0, align 8
  %shr32 = lshr i64 %26, 32
  %or33 = or i64 %shl31, %shr32
  store i64 %or33, i64* @v0, align 8
  %27 = load i64, i64* @v3, align 8
  %28 = load i64, i64* @v2, align 8
  %add34 = add i64 %28, %27
  store i64 %add34, i64* @v2, align 8
  %29 = load i64, i64* @v3, align 8
  %shl35 = shl i64 %29, 16
  %30 = load i64, i64* @v3, align 8
  %shr36 = lshr i64 %30, 48
  %or37 = or i64 %shl35, %shr36
  store i64 %or37, i64* @v3, align 8
  %31 = load i64, i64* @v2, align 8
  %32 = load i64, i64* @v3, align 8
  %xor38 = xor i64 %32, %31
  store i64 %xor38, i64* @v3, align 8
  %33 = load i64, i64* @v3, align 8
  %34 = load i64, i64* @v0, align 8
  %add39 = add i64 %34, %33
  store i64 %add39, i64* @v0, align 8
  %35 = load i64, i64* @v3, align 8
  %shl40 = shl i64 %35, 21
  %36 = load i64, i64* @v3, align 8
  %shr41 = lshr i64 %36, 43
  %or42 = or i64 %shl40, %shr41
  store i64 %or42, i64* @v3, align 8
  %37 = load i64, i64* @v0, align 8
  %38 = load i64, i64* @v3, align 8
  %xor43 = xor i64 %38, %37
  store i64 %xor43, i64* @v3, align 8
  %39 = load i64, i64* @v1, align 8
  %40 = load i64, i64* @v2, align 8
  %add44 = add i64 %40, %39
  store i64 %add44, i64* @v2, align 8
  %41 = load i64, i64* @v1, align 8
  %shl45 = shl i64 %41, 17
  %42 = load i64, i64* @v1, align 8
  %shr46 = lshr i64 %42, 47
  %or47 = or i64 %shl45, %shr46
  store i64 %or47, i64* @v1, align 8
  %43 = load i64, i64* @v2, align 8
  %44 = load i64, i64* @v1, align 8
  %xor48 = xor i64 %44, %43
  store i64 %xor48, i64* @v1, align 8
  %45 = load i64, i64* @v2, align 8
  %shl49 = shl i64 %45, 32
  %46 = load i64, i64* @v2, align 8
  %shr50 = lshr i64 %46, 32
  %or51 = or i64 %shl49, %shr50
  store i64 %or51, i64* @v2, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %47 = load i32, i32* @i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* @i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %48 = load i64, i64* @m, align 8
  %49 = load i64, i64* @v0, align 8
  %xor52 = xor i64 %49, %48
  store i64 %xor52, i64* @v0, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_final_block() #0 {
entry:
  %left = alloca i32, align 4
  %b = alloca i64, align 8
  %ni = alloca i8*, align 8
  %0 = load i64, i64* @inlen, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %left, align 4
  %1 = load i32, i32* %left, align 4
  %2 = load i8, i8* @buflen, align 1
  %conv1 = zext i8 %2 to i32
  %cmp = icmp eq i32 %1, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.26, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.process_final_block, i64 0, i64 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* @inlen, align 8
  %shl = shl i64 %3, 56
  store i64 %shl, i64* %b, align 8
  %4 = load i8*, i8** @buf, align 8
  store i8* %4, i8** %ni, align 8
  %5 = load i32, i32* %left, align 4
  switch i32 %5, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb5
    i32 5, label %sw.bb10
    i32 4, label %sw.bb15
    i32 3, label %sw.bb20
    i32 2, label %sw.bb25
    i32 1, label %sw.bb30
    i32 0, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load i8*, i8** %ni, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 6
  %7 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %7 to i64
  %shl4 = shl i64 %conv3, 48
  %8 = load i64, i64* %b, align 8
  %or = or i64 %8, %shl4
  store i64 %or, i64* %b, align 8
  br label %sw.bb5

sw.bb5:                                           ; preds = %if.end, %sw.bb
  %9 = load i8*, i8** %ni, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i64
  %shl8 = shl i64 %conv7, 40
  %11 = load i64, i64* %b, align 8
  %or9 = or i64 %11, %shl8
  store i64 %or9, i64* %b, align 8
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.end, %sw.bb5
  %12 = load i8*, i8** %ni, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 4
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i64
  %shl13 = shl i64 %conv12, 32
  %14 = load i64, i64* %b, align 8
  %or14 = or i64 %14, %shl13
  store i64 %or14, i64* %b, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.end, %sw.bb10
  %15 = load i8*, i8** %ni, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 3
  %16 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %16 to i64
  %shl18 = shl i64 %conv17, 24
  %17 = load i64, i64* %b, align 8
  %or19 = or i64 %17, %shl18
  store i64 %or19, i64* %b, align 8
  br label %sw.bb20

sw.bb20:                                          ; preds = %if.end, %sw.bb15
  %18 = load i8*, i8** %ni, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 2
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %19 to i64
  %shl23 = shl i64 %conv22, 16
  %20 = load i64, i64* %b, align 8
  %or24 = or i64 %20, %shl23
  store i64 %or24, i64* %b, align 8
  br label %sw.bb25

sw.bb25:                                          ; preds = %if.end, %sw.bb20
  %21 = load i8*, i8** %ni, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %22 to i64
  %shl28 = shl i64 %conv27, 8
  %23 = load i64, i64* %b, align 8
  %or29 = or i64 %23, %shl28
  store i64 %or29, i64* %b, align 8
  br label %sw.bb30

sw.bb30:                                          ; preds = %if.end, %sw.bb25
  %24 = load i8*, i8** %ni, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %25 to i64
  %26 = load i64, i64* %b, align 8
  %or33 = or i64 %26, %conv32
  store i64 %or33, i64* %b, align 8
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb34, %sw.bb30
  %27 = load i64, i64* %b, align 8
  %28 = load i64, i64* @v3, align 8
  %xor = xor i64 %28, %27
  store i64 %xor, i64* @v3, align 8
  store i32 0, i32* @i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %29 = load i32, i32* @i, align 4
  %cmp35 = icmp slt i32 %29, 2
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %30 = load i64, i64* @v1, align 8
  %31 = load i64, i64* @v0, align 8
  %add = add i64 %31, %30
  store i64 %add, i64* @v0, align 8
  %32 = load i64, i64* @v1, align 8
  %shl37 = shl i64 %32, 13
  %33 = load i64, i64* @v1, align 8
  %shr = lshr i64 %33, 51
  %or38 = or i64 %shl37, %shr
  store i64 %or38, i64* @v1, align 8
  %34 = load i64, i64* @v0, align 8
  %35 = load i64, i64* @v1, align 8
  %xor39 = xor i64 %35, %34
  store i64 %xor39, i64* @v1, align 8
  %36 = load i64, i64* @v0, align 8
  %shl40 = shl i64 %36, 32
  %37 = load i64, i64* @v0, align 8
  %shr41 = lshr i64 %37, 32
  %or42 = or i64 %shl40, %shr41
  store i64 %or42, i64* @v0, align 8
  %38 = load i64, i64* @v3, align 8
  %39 = load i64, i64* @v2, align 8
  %add43 = add i64 %39, %38
  store i64 %add43, i64* @v2, align 8
  %40 = load i64, i64* @v3, align 8
  %shl44 = shl i64 %40, 16
  %41 = load i64, i64* @v3, align 8
  %shr45 = lshr i64 %41, 48
  %or46 = or i64 %shl44, %shr45
  store i64 %or46, i64* @v3, align 8
  %42 = load i64, i64* @v2, align 8
  %43 = load i64, i64* @v3, align 8
  %xor47 = xor i64 %43, %42
  store i64 %xor47, i64* @v3, align 8
  %44 = load i64, i64* @v3, align 8
  %45 = load i64, i64* @v0, align 8
  %add48 = add i64 %45, %44
  store i64 %add48, i64* @v0, align 8
  %46 = load i64, i64* @v3, align 8
  %shl49 = shl i64 %46, 21
  %47 = load i64, i64* @v3, align 8
  %shr50 = lshr i64 %47, 43
  %or51 = or i64 %shl49, %shr50
  store i64 %or51, i64* @v3, align 8
  %48 = load i64, i64* @v0, align 8
  %49 = load i64, i64* @v3, align 8
  %xor52 = xor i64 %49, %48
  store i64 %xor52, i64* @v3, align 8
  %50 = load i64, i64* @v1, align 8
  %51 = load i64, i64* @v2, align 8
  %add53 = add i64 %51, %50
  store i64 %add53, i64* @v2, align 8
  %52 = load i64, i64* @v1, align 8
  %shl54 = shl i64 %52, 17
  %53 = load i64, i64* @v1, align 8
  %shr55 = lshr i64 %53, 47
  %or56 = or i64 %shl54, %shr55
  store i64 %or56, i64* @v1, align 8
  %54 = load i64, i64* @v2, align 8
  %55 = load i64, i64* @v1, align 8
  %xor57 = xor i64 %55, %54
  store i64 %xor57, i64* @v1, align 8
  %56 = load i64, i64* @v2, align 8
  %shl58 = shl i64 %56, 32
  %57 = load i64, i64* @v2, align 8
  %shr59 = lshr i64 %57, 32
  %or60 = or i64 %shl58, %shr59
  store i64 %or60, i64* @v2, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %58 = load i32, i32* @i, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* @i, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %59 = load i64, i64* %b, align 8
  %60 = load i64, i64* @v0, align 8
  %xor61 = xor i64 %60, %59
  store i64 %xor61, i64* @v0, align 8
  %61 = load i64, i64* @v2, align 8
  %xor62 = xor i64 %61, 238
  store i64 %xor62, i64* @v2, align 8
  store i32 0, i32* @i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc95, %for.end
  %62 = load i32, i32* @i, align 4
  %cmp64 = icmp slt i32 %62, 4
  br i1 %cmp64, label %for.body66, label %for.end97

for.body66:                                       ; preds = %for.cond63
  br label %do.body67

do.body67:                                        ; preds = %for.body66
  %63 = load i64, i64* @v1, align 8
  %64 = load i64, i64* @v0, align 8
  %add68 = add i64 %64, %63
  store i64 %add68, i64* @v0, align 8
  %65 = load i64, i64* @v1, align 8
  %shl69 = shl i64 %65, 13
  %66 = load i64, i64* @v1, align 8
  %shr70 = lshr i64 %66, 51
  %or71 = or i64 %shl69, %shr70
  store i64 %or71, i64* @v1, align 8
  %67 = load i64, i64* @v0, align 8
  %68 = load i64, i64* @v1, align 8
  %xor72 = xor i64 %68, %67
  store i64 %xor72, i64* @v1, align 8
  %69 = load i64, i64* @v0, align 8
  %shl73 = shl i64 %69, 32
  %70 = load i64, i64* @v0, align 8
  %shr74 = lshr i64 %70, 32
  %or75 = or i64 %shl73, %shr74
  store i64 %or75, i64* @v0, align 8
  %71 = load i64, i64* @v3, align 8
  %72 = load i64, i64* @v2, align 8
  %add76 = add i64 %72, %71
  store i64 %add76, i64* @v2, align 8
  %73 = load i64, i64* @v3, align 8
  %shl77 = shl i64 %73, 16
  %74 = load i64, i64* @v3, align 8
  %shr78 = lshr i64 %74, 48
  %or79 = or i64 %shl77, %shr78
  store i64 %or79, i64* @v3, align 8
  %75 = load i64, i64* @v2, align 8
  %76 = load i64, i64* @v3, align 8
  %xor80 = xor i64 %76, %75
  store i64 %xor80, i64* @v3, align 8
  %77 = load i64, i64* @v3, align 8
  %78 = load i64, i64* @v0, align 8
  %add81 = add i64 %78, %77
  store i64 %add81, i64* @v0, align 8
  %79 = load i64, i64* @v3, align 8
  %shl82 = shl i64 %79, 21
  %80 = load i64, i64* @v3, align 8
  %shr83 = lshr i64 %80, 43
  %or84 = or i64 %shl82, %shr83
  store i64 %or84, i64* @v3, align 8
  %81 = load i64, i64* @v0, align 8
  %82 = load i64, i64* @v3, align 8
  %xor85 = xor i64 %82, %81
  store i64 %xor85, i64* @v3, align 8
  %83 = load i64, i64* @v1, align 8
  %84 = load i64, i64* @v2, align 8
  %add86 = add i64 %84, %83
  store i64 %add86, i64* @v2, align 8
  %85 = load i64, i64* @v1, align 8
  %shl87 = shl i64 %85, 17
  %86 = load i64, i64* @v1, align 8
  %shr88 = lshr i64 %86, 47
  %or89 = or i64 %shl87, %shr88
  store i64 %or89, i64* @v1, align 8
  %87 = load i64, i64* @v2, align 8
  %88 = load i64, i64* @v1, align 8
  %xor90 = xor i64 %88, %87
  store i64 %xor90, i64* @v1, align 8
  %89 = load i64, i64* @v2, align 8
  %shl91 = shl i64 %89, 32
  %90 = load i64, i64* @v2, align 8
  %shr92 = lshr i64 %90, 32
  %or93 = or i64 %shl91, %shr92
  store i64 %or93, i64* @v2, align 8
  br label %do.end94

do.end94:                                         ; preds = %do.body67
  br label %for.inc95

for.inc95:                                        ; preds = %do.end94
  %91 = load i32, i32* @i, align 4
  %inc96 = add nsw i32 %91, 1
  store i32 %inc96, i32* @i, align 4
  br label %for.cond63, !llvm.loop !25

for.end97:                                        ; preds = %for.cond63
  %92 = load i64, i64* @v0, align 8
  %93 = load i64, i64* @v1, align 8
  %xor98 = xor i64 %92, %93
  %94 = load i64, i64* @v2, align 8
  %xor99 = xor i64 %xor98, %94
  %95 = load i64, i64* @v3, align 8
  %xor100 = xor i64 %xor99, %95
  store i64 %xor100, i64* %b, align 8
  %96 = load i64, i64* %b, align 8
  %conv101 = trunc i64 %96 to i32
  %conv102 = trunc i32 %conv101 to i8
  %97 = load i8*, i8** @out, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 %conv102, i8* %arrayidx103, align 1
  %98 = load i64, i64* %b, align 8
  %conv104 = trunc i64 %98 to i32
  %shr105 = lshr i32 %conv104, 8
  %conv106 = trunc i32 %shr105 to i8
  %99 = load i8*, i8** @out, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %99, i64 1
  store i8 %conv106, i8* %arrayidx107, align 1
  %100 = load i64, i64* %b, align 8
  %conv108 = trunc i64 %100 to i32
  %shr109 = lshr i32 %conv108, 16
  %conv110 = trunc i32 %shr109 to i8
  %101 = load i8*, i8** @out, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %101, i64 2
  store i8 %conv110, i8* %arrayidx111, align 1
  %102 = load i64, i64* %b, align 8
  %conv112 = trunc i64 %102 to i32
  %shr113 = lshr i32 %conv112, 24
  %conv114 = trunc i32 %shr113 to i8
  %103 = load i8*, i8** @out, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %103, i64 3
  store i8 %conv114, i8* %arrayidx115, align 1
  %104 = load i64, i64* %b, align 8
  %shr116 = lshr i64 %104, 32
  %conv117 = trunc i64 %shr116 to i32
  %conv118 = trunc i32 %conv117 to i8
  %105 = load i8*, i8** @out, align 8
  %add.ptr = getelementptr inbounds i8, i8* %105, i64 4
  %arrayidx119 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  store i8 %conv118, i8* %arrayidx119, align 1
  %106 = load i64, i64* %b, align 8
  %shr120 = lshr i64 %106, 32
  %conv121 = trunc i64 %shr120 to i32
  %shr122 = lshr i32 %conv121, 8
  %conv123 = trunc i32 %shr122 to i8
  %107 = load i8*, i8** @out, align 8
  %add.ptr124 = getelementptr inbounds i8, i8* %107, i64 4
  %arrayidx125 = getelementptr inbounds i8, i8* %add.ptr124, i64 1
  store i8 %conv123, i8* %arrayidx125, align 1
  %108 = load i64, i64* %b, align 8
  %shr126 = lshr i64 %108, 32
  %conv127 = trunc i64 %shr126 to i32
  %shr128 = lshr i32 %conv127, 16
  %conv129 = trunc i32 %shr128 to i8
  %109 = load i8*, i8** @out, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %109, i64 4
  %arrayidx131 = getelementptr inbounds i8, i8* %add.ptr130, i64 2
  store i8 %conv129, i8* %arrayidx131, align 1
  %110 = load i64, i64* %b, align 8
  %shr132 = lshr i64 %110, 32
  %conv133 = trunc i64 %shr132 to i32
  %shr134 = lshr i32 %conv133, 24
  %conv135 = trunc i32 %shr134 to i8
  %111 = load i8*, i8** @out, align 8
  %add.ptr136 = getelementptr inbounds i8, i8* %111, i64 4
  %arrayidx137 = getelementptr inbounds i8, i8* %add.ptr136, i64 3
  store i8 %conv135, i8* %arrayidx137, align 1
  %112 = load i64, i64* @v1, align 8
  %xor138 = xor i64 %112, 221
  store i64 %xor138, i64* @v1, align 8
  store i32 0, i32* @i, align 4
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc171, %for.end97
  %113 = load i32, i32* @i, align 4
  %cmp140 = icmp slt i32 %113, 4
  br i1 %cmp140, label %for.body142, label %for.end173

for.body142:                                      ; preds = %for.cond139
  br label %do.body143

do.body143:                                       ; preds = %for.body142
  %114 = load i64, i64* @v1, align 8
  %115 = load i64, i64* @v0, align 8
  %add144 = add i64 %115, %114
  store i64 %add144, i64* @v0, align 8
  %116 = load i64, i64* @v1, align 8
  %shl145 = shl i64 %116, 13
  %117 = load i64, i64* @v1, align 8
  %shr146 = lshr i64 %117, 51
  %or147 = or i64 %shl145, %shr146
  store i64 %or147, i64* @v1, align 8
  %118 = load i64, i64* @v0, align 8
  %119 = load i64, i64* @v1, align 8
  %xor148 = xor i64 %119, %118
  store i64 %xor148, i64* @v1, align 8
  %120 = load i64, i64* @v0, align 8
  %shl149 = shl i64 %120, 32
  %121 = load i64, i64* @v0, align 8
  %shr150 = lshr i64 %121, 32
  %or151 = or i64 %shl149, %shr150
  store i64 %or151, i64* @v0, align 8
  %122 = load i64, i64* @v3, align 8
  %123 = load i64, i64* @v2, align 8
  %add152 = add i64 %123, %122
  store i64 %add152, i64* @v2, align 8
  %124 = load i64, i64* @v3, align 8
  %shl153 = shl i64 %124, 16
  %125 = load i64, i64* @v3, align 8
  %shr154 = lshr i64 %125, 48
  %or155 = or i64 %shl153, %shr154
  store i64 %or155, i64* @v3, align 8
  %126 = load i64, i64* @v2, align 8
  %127 = load i64, i64* @v3, align 8
  %xor156 = xor i64 %127, %126
  store i64 %xor156, i64* @v3, align 8
  %128 = load i64, i64* @v3, align 8
  %129 = load i64, i64* @v0, align 8
  %add157 = add i64 %129, %128
  store i64 %add157, i64* @v0, align 8
  %130 = load i64, i64* @v3, align 8
  %shl158 = shl i64 %130, 21
  %131 = load i64, i64* @v3, align 8
  %shr159 = lshr i64 %131, 43
  %or160 = or i64 %shl158, %shr159
  store i64 %or160, i64* @v3, align 8
  %132 = load i64, i64* @v0, align 8
  %133 = load i64, i64* @v3, align 8
  %xor161 = xor i64 %133, %132
  store i64 %xor161, i64* @v3, align 8
  %134 = load i64, i64* @v1, align 8
  %135 = load i64, i64* @v2, align 8
  %add162 = add i64 %135, %134
  store i64 %add162, i64* @v2, align 8
  %136 = load i64, i64* @v1, align 8
  %shl163 = shl i64 %136, 17
  %137 = load i64, i64* @v1, align 8
  %shr164 = lshr i64 %137, 47
  %or165 = or i64 %shl163, %shr164
  store i64 %or165, i64* @v1, align 8
  %138 = load i64, i64* @v2, align 8
  %139 = load i64, i64* @v1, align 8
  %xor166 = xor i64 %139, %138
  store i64 %xor166, i64* @v1, align 8
  %140 = load i64, i64* @v2, align 8
  %shl167 = shl i64 %140, 32
  %141 = load i64, i64* @v2, align 8
  %shr168 = lshr i64 %141, 32
  %or169 = or i64 %shl167, %shr168
  store i64 %or169, i64* @v2, align 8
  br label %do.end170

do.end170:                                        ; preds = %do.body143
  br label %for.inc171

for.inc171:                                       ; preds = %do.end170
  %142 = load i32, i32* @i, align 4
  %inc172 = add nsw i32 %142, 1
  store i32 %inc172, i32* @i, align 4
  br label %for.cond139, !llvm.loop !26

for.end173:                                       ; preds = %for.cond139
  %143 = load i64, i64* @v0, align 8
  %144 = load i64, i64* @v1, align 8
  %xor174 = xor i64 %143, %144
  %145 = load i64, i64* @v2, align 8
  %xor175 = xor i64 %xor174, %145
  %146 = load i64, i64* @v3, align 8
  %xor176 = xor i64 %xor175, %146
  store i64 %xor176, i64* %b, align 8
  %147 = load i64, i64* %b, align 8
  %conv177 = trunc i64 %147 to i32
  %conv178 = trunc i32 %conv177 to i8
  %148 = load i8*, i8** @out, align 8
  %add.ptr179 = getelementptr inbounds i8, i8* %148, i64 8
  %arrayidx180 = getelementptr inbounds i8, i8* %add.ptr179, i64 0
  store i8 %conv178, i8* %arrayidx180, align 1
  %149 = load i64, i64* %b, align 8
  %conv181 = trunc i64 %149 to i32
  %shr182 = lshr i32 %conv181, 8
  %conv183 = trunc i32 %shr182 to i8
  %150 = load i8*, i8** @out, align 8
  %add.ptr184 = getelementptr inbounds i8, i8* %150, i64 8
  %arrayidx185 = getelementptr inbounds i8, i8* %add.ptr184, i64 1
  store i8 %conv183, i8* %arrayidx185, align 1
  %151 = load i64, i64* %b, align 8
  %conv186 = trunc i64 %151 to i32
  %shr187 = lshr i32 %conv186, 16
  %conv188 = trunc i32 %shr187 to i8
  %152 = load i8*, i8** @out, align 8
  %add.ptr189 = getelementptr inbounds i8, i8* %152, i64 8
  %arrayidx190 = getelementptr inbounds i8, i8* %add.ptr189, i64 2
  store i8 %conv188, i8* %arrayidx190, align 1
  %153 = load i64, i64* %b, align 8
  %conv191 = trunc i64 %153 to i32
  %shr192 = lshr i32 %conv191, 24
  %conv193 = trunc i32 %shr192 to i8
  %154 = load i8*, i8** @out, align 8
  %add.ptr194 = getelementptr inbounds i8, i8* %154, i64 8
  %arrayidx195 = getelementptr inbounds i8, i8* %add.ptr194, i64 3
  store i8 %conv193, i8* %arrayidx195, align 1
  %155 = load i64, i64* %b, align 8
  %shr196 = lshr i64 %155, 32
  %conv197 = trunc i64 %shr196 to i32
  %conv198 = trunc i32 %conv197 to i8
  %156 = load i8*, i8** @out, align 8
  %add.ptr199 = getelementptr inbounds i8, i8* %156, i64 8
  %add.ptr200 = getelementptr inbounds i8, i8* %add.ptr199, i64 4
  %arrayidx201 = getelementptr inbounds i8, i8* %add.ptr200, i64 0
  store i8 %conv198, i8* %arrayidx201, align 1
  %157 = load i64, i64* %b, align 8
  %shr202 = lshr i64 %157, 32
  %conv203 = trunc i64 %shr202 to i32
  %shr204 = lshr i32 %conv203, 8
  %conv205 = trunc i32 %shr204 to i8
  %158 = load i8*, i8** @out, align 8
  %add.ptr206 = getelementptr inbounds i8, i8* %158, i64 8
  %add.ptr207 = getelementptr inbounds i8, i8* %add.ptr206, i64 4
  %arrayidx208 = getelementptr inbounds i8, i8* %add.ptr207, i64 1
  store i8 %conv205, i8* %arrayidx208, align 1
  %159 = load i64, i64* %b, align 8
  %shr209 = lshr i64 %159, 32
  %conv210 = trunc i64 %shr209 to i32
  %shr211 = lshr i32 %conv210, 16
  %conv212 = trunc i32 %shr211 to i8
  %160 = load i8*, i8** @out, align 8
  %add.ptr213 = getelementptr inbounds i8, i8* %160, i64 8
  %add.ptr214 = getelementptr inbounds i8, i8* %add.ptr213, i64 4
  %arrayidx215 = getelementptr inbounds i8, i8* %add.ptr214, i64 2
  store i8 %conv212, i8* %arrayidx215, align 1
  %161 = load i64, i64* %b, align 8
  %shr216 = lshr i64 %161, 32
  %conv217 = trunc i64 %shr216 to i32
  %shr218 = lshr i32 %conv217, 24
  %conv219 = trunc i32 %shr218 to i8
  %162 = load i8*, i8** @out, align 8
  %add.ptr220 = getelementptr inbounds i8, i8* %162, i64 8
  %add.ptr221 = getelementptr inbounds i8, i8* %add.ptr220, i64 4
  %arrayidx222 = getelementptr inbounds i8, i8* %add.ptr221, i64 3
  store i8 %conv219, i8* %arrayidx222, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siphash_init(i8* noundef %key_128bit) #0 {
entry:
  %key_128bit.addr = alloca i8*, align 8
  store i8* %key_128bit, i8** %key_128bit.addr, align 8
  %0 = load i8*, i8** %key_128bit.addr, align 8
  store i8* %0, i8** @kk, align 8
  %call = call i8* @trusted_utils_malloc(i64 noundef 16)
  store i8* %call, i8** @out, align 8
  %call1 = call i8* @trusted_utils_malloc(i64 noundef 8)
  store i8* %call1, i8** @buf, align 8
  %1 = load i8*, i8** @kk, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @siphash_reset()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siphash_reset() #0 {
entry:
  store i64 8317987319222330741, i64* @v0, align 8
  store i64 7237128888997146477, i64* @v1, align 8
  store i64 7816392313619706465, i64* @v2, align 8
  store i64 8387220255154660723, i64* @v3, align 8
  %0 = load i8*, i8** @kk, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  %2 = load i8*, i8** @kk, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl = shl i64 %conv2, 8
  %or = or i64 %conv, %shl
  %4 = load i8*, i8** @kk, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %5 to i64
  %shl5 = shl i64 %conv4, 16
  %or6 = or i64 %or, %shl5
  %6 = load i8*, i8** @kk, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %7 to i64
  %shl9 = shl i64 %conv8, 24
  %or10 = or i64 %or6, %shl9
  %8 = load i8*, i8** @kk, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i64
  %shl13 = shl i64 %conv12, 32
  %or14 = or i64 %or10, %shl13
  %10 = load i8*, i8** @kk, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %10, i64 5
  %11 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %11 to i64
  %shl17 = shl i64 %conv16, 40
  %or18 = or i64 %or14, %shl17
  %12 = load i8*, i8** @kk, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %12, i64 6
  %13 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %13 to i64
  %shl21 = shl i64 %conv20, 48
  %or22 = or i64 %or18, %shl21
  %14 = load i8*, i8** @kk, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %14, i64 7
  %15 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %15 to i64
  %shl25 = shl i64 %conv24, 56
  %or26 = or i64 %or22, %shl25
  store i64 %or26, i64* @k0, align 8
  %16 = load i8*, i8** @kk, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 8
  %arrayidx27 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %17 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %17 to i64
  %18 = load i8*, i8** @kk, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %18, i64 8
  %arrayidx30 = getelementptr inbounds i8, i8* %add.ptr29, i64 1
  %19 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %19 to i64
  %shl32 = shl i64 %conv31, 8
  %or33 = or i64 %conv28, %shl32
  %20 = load i8*, i8** @kk, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %20, i64 8
  %arrayidx35 = getelementptr inbounds i8, i8* %add.ptr34, i64 2
  %21 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %21 to i64
  %shl37 = shl i64 %conv36, 16
  %or38 = or i64 %or33, %shl37
  %22 = load i8*, i8** @kk, align 8
  %add.ptr39 = getelementptr inbounds i8, i8* %22, i64 8
  %arrayidx40 = getelementptr inbounds i8, i8* %add.ptr39, i64 3
  %23 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %23 to i64
  %shl42 = shl i64 %conv41, 24
  %or43 = or i64 %or38, %shl42
  %24 = load i8*, i8** @kk, align 8
  %add.ptr44 = getelementptr inbounds i8, i8* %24, i64 8
  %arrayidx45 = getelementptr inbounds i8, i8* %add.ptr44, i64 4
  %25 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %25 to i64
  %shl47 = shl i64 %conv46, 32
  %or48 = or i64 %or43, %shl47
  %26 = load i8*, i8** @kk, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %26, i64 8
  %arrayidx50 = getelementptr inbounds i8, i8* %add.ptr49, i64 5
  %27 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %27 to i64
  %shl52 = shl i64 %conv51, 40
  %or53 = or i64 %or48, %shl52
  %28 = load i8*, i8** @kk, align 8
  %add.ptr54 = getelementptr inbounds i8, i8* %28, i64 8
  %arrayidx55 = getelementptr inbounds i8, i8* %add.ptr54, i64 6
  %29 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %29 to i64
  %shl57 = shl i64 %conv56, 48
  %or58 = or i64 %or53, %shl57
  %30 = load i8*, i8** @kk, align 8
  %add.ptr59 = getelementptr inbounds i8, i8* %30, i64 8
  %arrayidx60 = getelementptr inbounds i8, i8* %add.ptr59, i64 7
  %31 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %31 to i64
  %shl62 = shl i64 %conv61, 56
  %or63 = or i64 %or58, %shl62
  store i64 %or63, i64* @k1, align 8
  %32 = load i64, i64* @k1, align 8
  %33 = load i64, i64* @v3, align 8
  %xor = xor i64 %33, %32
  store i64 %xor, i64* @v3, align 8
  %34 = load i64, i64* @k0, align 8
  %35 = load i64, i64* @v2, align 8
  %xor64 = xor i64 %35, %34
  store i64 %xor64, i64* @v2, align 8
  %36 = load i64, i64* @k1, align 8
  %37 = load i64, i64* @v1, align 8
  %xor65 = xor i64 %37, %36
  store i64 %xor65, i64* @v1, align 8
  %38 = load i64, i64* @k0, align 8
  %39 = load i64, i64* @v0, align 8
  %xor66 = xor i64 %39, %38
  store i64 %xor66, i64* @v0, align 8
  store i64 0, i64* @inlen, align 8
  store i8 0, i8* @buflen, align 1
  %40 = load i64, i64* @v1, align 8
  %xor67 = xor i64 %40, 238
  store i64 %xor67, i64* @v1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @siphash_digest() #0 {
entry:
  call void @process_final_block()
  %0 = load i8*, i8** @out, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siphash_free() #0 {
entry:
  %0 = load i8*, i8** @buf, align 8
  call void @free(i8* noundef %0) #6
  %1 = load i8*, i8** @out, align 8
  call void @free(i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_clause_signature(i64 noundef %id, i32* noundef %lits, i32 noundef %nb_lits, i8* noundef %out) #0 {
entry:
  %id.addr = alloca i64, align 8
  %lits.addr = alloca i32*, align 8
  %nb_lits.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %hash_out = alloca i8*, align 8
  store i64 %id, i64* %id.addr, align 8
  store i32* %lits, i32** %lits.addr, align 8
  store i32 %nb_lits, i32* %nb_lits.addr, align 4
  store i8* %out, i8** %out.addr, align 8
  call void @siphash_reset()
  %0 = bitcast i64* %id.addr to i8*
  call void @siphash_update(i8* noundef %0, i64 noundef 8)
  %1 = load i32*, i32** %lits.addr, align 8
  %2 = bitcast i32* %1 to i8*
  %3 = load i32, i32* %nb_lits.addr, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  call void @siphash_update(i8* noundef %2, i64 noundef %mul)
  call void @siphash_update(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @formula_signature, i64 0, i64 0), i64 noundef 16)
  %call = call i8* @siphash_digest()
  store i8* %call, i8** %hash_out, align 8
  %4 = load i8*, i8** %out.addr, align 8
  %5 = load i8*, i8** %hash_out, align 8
  call void @trusted_utils_copy_bytes(i8* noundef %4, i8* noundef %5, i64 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @top_check_init(i32 noundef %nb_vars, i1 noundef zeroext %check_model, i1 noundef zeroext %lenient) #0 {
entry:
  %nb_vars.addr = alloca i32, align 4
  %check_model.addr = alloca i8, align 1
  %lenient.addr = alloca i8, align 1
  store i32 %nb_vars, i32* %nb_vars.addr, align 4
  %frombool = zext i1 %check_model to i8
  store i8 %frombool, i8* %check_model.addr, align 1
  %frombool1 = zext i1 %lenient to i8
  store i8 %frombool1, i8* %lenient.addr, align 1
  call void @siphash_init(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @SECRET_KEY, i64 0, i64 0))
  %0 = load i32, i32* %nb_vars.addr, align 4
  %1 = load i8, i8* %check_model.addr, align 1
  %tobool = trunc i8 %1 to i1
  %2 = load i8, i8* %lenient.addr, align 1
  %tobool2 = trunc i8 %2 to i1
  call void @lrat_check_init(i32 noundef %0, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @top_check_commit_formula_sig(i8* noundef %f_sig) #0 {
entry:
  %f_sig.addr = alloca i8*, align 8
  store i8* %f_sig, i8** %f_sig.addr, align 8
  %0 = load i8*, i8** %f_sig.addr, align 8
  call void @trusted_utils_copy_bytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @formula_signature, i64 0, i64 0), i8* noundef %0, i64 noundef 16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @top_check_load(i32 noundef %lit) #0 {
entry:
  %lit.addr = alloca i32, align 4
  store i32 %lit, i32* %lit.addr, align 4
  %0 = load i32, i32* %lit.addr, align 4
  %call = call zeroext i1 @lrat_check_load(i32 noundef %0)
  %conv = zext i1 %call to i32
  %1 = load i8, i8* @valid, align 1
  %tobool = trunc i8 %1 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, i8* @valid, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @top_check_end_load() #0 {
entry:
  %retval = alloca i1, align 1
  %sig_from_chk = alloca i8*, align 8
  %0 = load i8, i8* @valid, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = call zeroext i1 @lrat_check_end_load(i8** noundef %sig_from_chk)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %call, %land.rhs ]
  %frombool = zext i1 %1 to i8
  store i8 %frombool, i8* @valid, align 1
  %2 = load i8, i8* @valid, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.end
  %3 = load i8*, i8** %sig_from_chk, align 8
  %call2 = call zeroext i1 @trusted_utils_equal_signatures(i8* noundef %3, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @formula_signature, i64 0, i64 0))
  %frombool3 = zext i1 %call2 to i8
  store i8 %frombool3, i8* @valid, align 1
  %4 = load i8, i8* @valid, align 1
  %tobool4 = trunc i8 %4 to i1
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0)) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %5 = load i8, i8* @valid, align 1
  %tobool8 = trunc i8 %5 to i1
  store i1 %tobool8, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @trusted_utils_equal_signatures(i8* noundef %left, i8* noundef %right) #0 {
entry:
  %retval = alloca i1, align 1
  %left.addr = alloca i8*, align 8
  %right.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %left, i8** %left.addr, align 8
  store i8* %right, i8** %right.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %left.addr, align 8
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i8*, i8** %right.addr, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i1, i1* %retval, align 1
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @top_check_produce(i64 noundef %id, i32* noundef %literals, i32 noundef %nb_literals, i64* noundef %hints, i32 noundef %nb_hints, i8* noundef %out_sig_or_null) #0 {
entry:
  %retval = alloca i1, align 1
  %id.addr = alloca i64, align 8
  %literals.addr = alloca i32*, align 8
  %nb_literals.addr = alloca i32, align 4
  %hints.addr = alloca i64*, align 8
  %nb_hints.addr = alloca i32, align 4
  %out_sig_or_null.addr = alloca i8*, align 8
  store i64 %id, i64* %id.addr, align 8
  store i32* %literals, i32** %literals.addr, align 8
  store i32 %nb_literals, i32* %nb_literals.addr, align 4
  store i64* %hints, i64** %hints.addr, align 8
  store i32 %nb_hints, i32* %nb_hints.addr, align 4
  store i8* %out_sig_or_null, i8** %out_sig_or_null.addr, align 8
  %0 = load i64, i64* %id.addr, align 8
  %1 = load i32*, i32** %literals.addr, align 8
  %2 = load i32, i32* %nb_literals.addr, align 4
  %3 = load i64*, i64** %hints.addr, align 8
  %4 = load i32, i32* %nb_hints.addr, align 4
  %call = call zeroext i1 @lrat_check_add_clause(i64 noundef %0, i32* noundef %1, i32 noundef %2, i64* noundef %3, i32 noundef %4)
  %conv = zext i1 %call to i32
  %5 = load i8, i8* @valid, align 1
  %tobool = trunc i8 %5 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, i8* @valid, align 1
  %6 = load i8, i8* @valid, align 1
  %tobool3 = trunc i8 %6 to i1
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %out_sig_or_null.addr, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %8 = load i64, i64* %id.addr, align 8
  %9 = load i32*, i32** %literals.addr, align 8
  %10 = load i32, i32* %nb_literals.addr, align 4
  %11 = load i8*, i8** %out_sig_or_null.addr, align 8
  call void @compute_clause_signature(i64 noundef %8, i32* noundef %9, i32 noundef %10, i8* noundef %11)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %12 = load i1, i1* %retval, align 1
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @top_check_import(i64 noundef %id, i32* noundef %literals, i32 noundef %nb_literals, i8* noundef %signature_data) #0 {
entry:
  %retval = alloca i1, align 1
  %id.addr = alloca i64, align 8
  %literals.addr = alloca i32*, align 8
  %nb_literals.addr = alloca i32, align 4
  %signature_data.addr = alloca i8*, align 8
  %computed_sig = alloca [16 x i8], align 16
  store i64 %id, i64* %id.addr, align 8
  store i32* %literals, i32** %literals.addr, align 8
  store i32 %nb_literals, i32* %nb_literals.addr, align 4
  store i8* %signature_data, i8** %signature_data.addr, align 8
  %0 = load i64, i64* %id.addr, align 8
  %1 = load i32*, i32** %literals.addr, align 8
  %2 = load i32, i32* %nb_literals.addr, align 4
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %computed_sig, i64 0, i64 0
  call void @compute_clause_signature(i64 noundef %0, i32* noundef %1, i32 noundef %2, i8* noundef %arraydecay)
  %3 = load i8*, i8** %signature_data.addr, align 8
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %computed_sig, i64 0, i64 0
  %call = call zeroext i1 @trusted_utils_equal_signatures(i8* noundef %3, i8* noundef %arraydecay1)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, i8* @valid, align 1
  %4 = load i64, i64* %id.addr, align 8
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @trusted_utils_msgstr, i64 0, i64 0), i64 noundef 512, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i64 noundef %4) #6
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %id.addr, align 8
  %6 = load i32*, i32** %literals.addr, align 8
  %7 = load i32, i32* %nb_literals.addr, align 4
  %call3 = call zeroext i1 @lrat_check_add_axiomatic_clause(i64 noundef %5, i32* noundef %6, i32 noundef %7)
  %conv = zext i1 %call3 to i32
  %8 = load i8, i8* @valid, align 1
  %tobool = trunc i8 %8 to i1
  %conv4 = zext i1 %tobool to i32
  %and = and i32 %conv4, %conv
  %tobool5 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool5 to i8
  store i8 %frombool, i8* @valid, align 1
  %9 = load i8, i8* @valid, align 1
  %tobool6 = trunc i8 %9 to i1
  store i1 %tobool6, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @top_check_delete(i64* noundef %ids, i32 noundef %nb_ids) #0 {
entry:
  %ids.addr = alloca i64*, align 8
  %nb_ids.addr = alloca i32, align 4
  store i64* %ids, i64** %ids.addr, align 8
  store i32 %nb_ids, i32* %nb_ids.addr, align 4
  %0 = load i64*, i64** %ids.addr, align 8
  %1 = load i32, i32* %nb_ids.addr, align 4
  %call = call zeroext i1 @lrat_check_delete_clause(i64* noundef %0, i32 noundef %1)
  ret i1 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @top_check_validate_unsat(i8* noundef %out_signature_or_null) #0 {
entry:
  %retval = alloca i1, align 1
  %out_signature_or_null.addr = alloca i8*, align 8
  store i8* %out_signature_or_null, i8** %out_signature_or_null.addr, align 8
  %call = call zeroext i1 @lrat_check_validate_unsat()
  %conv = zext i1 %call to i32
  %0 = load i8, i8* @valid, align 1
  %tobool = trunc i8 %0 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, i8* @valid, align 1
  %1 = load i8, i8* @valid, align 1
  %tobool3 = trunc i8 %1 to i1
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %out_signature_or_null.addr, align 8
  %tobool4 = icmp ne i8* %2, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %3 = load i8*, i8** %out_signature_or_null.addr, align 8
  call void @confirm_result(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @formula_signature, i64 0, i64 0), i8 noundef zeroext 20, i8* noundef %3)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @top_check_validate_sat(i32* noundef %model, i64 noundef %size, i8* noundef %out_signature_or_null) #0 {
entry:
  %retval = alloca i1, align 1
  %model.addr = alloca i32*, align 8
  %size.addr = alloca i64, align 8
  %out_signature_or_null.addr = alloca i8*, align 8
  store i32* %model, i32** %model.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %out_signature_or_null, i8** %out_signature_or_null.addr, align 8
  %0 = load i32*, i32** %model.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %call = call zeroext i1 @lrat_check_validate_sat(i32* noundef %0, i64 noundef %1)
  %conv = zext i1 %call to i32
  %2 = load i8, i8* @valid, align 1
  %tobool = trunc i8 %2 to i1
  %conv1 = zext i1 %tobool to i32
  %and = and i32 %conv1, %conv
  %tobool2 = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool2 to i8
  store i8 %frombool, i8* @valid, align 1
  %3 = load i8, i8* @valid, align 1
  %tobool3 = trunc i8 %3 to i1
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %out_signature_or_null.addr, align 8
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i8*, i8** %out_signature_or_null.addr, align 8
  call void @confirm_result(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @formula_signature, i64 0, i64 0), i8 noundef zeroext 10, i8* noundef %5)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @top_check_valid() #0 {
entry:
  %0 = load i8, i8* @valid, align 1
  %tobool = trunc i8 %0 to i1
  ret i1 %tobool
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @say(i1 noundef zeroext %ok) #0 {
entry:
  %ok.addr = alloca i8, align 1
  %frombool = zext i1 %ok to i8
  store i8 %frombool, i8* %ok.addr, align 1
  %0 = load i8, i8* %ok.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 65, i32 69
  %conv = trunc i32 %cond to i8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  call void @trusted_utils_write_char(i8 noundef signext %conv, %struct._IO_FILE* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_write_char(i8 noundef signext %c, %struct._IO_FILE* noundef %file) #0 {
entry:
  %c.addr = alloca i8, align 1
  %file.addr = alloca %struct._IO_FILE*, align 8
  %res = alloca i32, align 4
  store i8 %c, i8* %c.addr, align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fputc_unlocked(i32 noundef %conv, %struct._IO_FILE* noundef %1)
  store i32 %call, i32* %res, align 4
  %2 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @trusted_utils_exit_eof()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @say_with_flush(i1 noundef zeroext %ok) #0 {
entry:
  %ok.addr = alloca i8, align 1
  %frombool = zext i1 %ok to i8
  store i8 %frombool, i8* %ok.addr, align 1
  %0 = load i8, i8* %ok.addr, align 1
  %tobool = trunc i8 %0 to i1
  call void @say(i1 noundef zeroext %tobool)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %call = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %1)
  ret void
}

declare dso_local i32 @fflush_unlocked(%struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_literals(i32 noundef %nb_lits) #0 {
entry:
  %nb_lits.addr = alloca i32, align 4
  store i32 %nb_lits, i32* %nb_lits.addr, align 4
  %0 = load %struct.int_vec*, %struct.int_vec** @buf_lits, align 8
  %1 = load i32, i32* %nb_lits.addr, align 4
  %conv = sext i32 %1 to i64
  call void @int_vec_reserve(%struct.int_vec* noundef %0, i64 noundef %conv)
  %2 = load %struct.int_vec*, %struct.int_vec** @buf_lits, align 8
  %data = getelementptr inbounds %struct.int_vec, %struct.int_vec* %2, i32 0, i32 2
  %3 = load i32*, i32** %data, align 8
  %4 = load i32, i32* %nb_lits.addr, align 4
  %conv1 = sext i32 %4 to i64
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  call void @trusted_utils_read_ints(i32* noundef %3, i64 noundef %conv1, %struct._IO_FILE* noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_read_ints(i32* noundef %data, i64 noundef %nb_ints, %struct._IO_FILE* noundef %file) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %nb_ints.addr = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %nb_ints, i64* %nb_ints.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = load i64, i64* %nb_ints.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @trusted_utils_read_objs(i8* noundef %1, i64 noundef 4, i64 noundef %2, %struct._IO_FILE* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_hints(i32 noundef %nb_hints) #0 {
entry:
  %nb_hints.addr = alloca i32, align 4
  store i32 %nb_hints, i32* %nb_hints.addr, align 4
  %0 = load %struct.u64_vec*, %struct.u64_vec** @buf_hints, align 8
  %1 = load i32, i32* %nb_hints.addr, align 4
  %conv = sext i32 %1 to i64
  call void @u64_vec_reserve(%struct.u64_vec* noundef %0, i64 noundef %conv)
  %2 = load %struct.u64_vec*, %struct.u64_vec** @buf_hints, align 8
  %data = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %2, i32 0, i32 2
  %3 = load i64*, i64** %data, align 8
  %4 = load i32, i32* %nb_hints.addr, align 4
  %conv1 = sext i32 %4 to i64
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  call void @trusted_utils_read_uls(i64* noundef %3, i64 noundef %conv1, %struct._IO_FILE* noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u64_vec_reserve(%struct.u64_vec* noundef %vec, i64 noundef %new_cap) #0 {
entry:
  %vec.addr = alloca %struct.u64_vec*, align 8
  %new_cap.addr = alloca i64, align 8
  store %struct.u64_vec* %vec, %struct.u64_vec** %vec.addr, align 8
  store i64 %new_cap, i64* %new_cap.addr, align 8
  %0 = load i64, i64* %new_cap.addr, align 8
  %1 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %1, i32 0, i32 0
  %2 = load i64, i64* %capacity, align 8
  %cmp = icmp ugt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %3, i32 0, i32 2
  %4 = load i64*, i64** %data, align 8
  %5 = bitcast i64* %4 to i8*
  %6 = load i64, i64* %new_cap.addr, align 8
  %mul = mul i64 %6, 8
  %call = call i8* @trusted_utils_realloc(i8* noundef %5, i64 noundef %mul)
  %7 = bitcast i8* %call to i64*
  %8 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %data1 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %8, i32 0, i32 2
  store i64* %7, i64** %data1, align 8
  %9 = load i64, i64* %new_cap.addr, align 8
  %10 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %capacity2 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %10, i32 0, i32 0
  store i64 %9, i64* %capacity2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %11, i32 0, i32 1
  %12 = load i64, i64* %size, align 8
  %13 = load i64, i64* %new_cap.addr, align 8
  %cmp3 = icmp ugt i64 %12, %13
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %14 = load i64, i64* %new_cap.addr, align 8
  %15 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %size5 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %15, i32 0, i32 1
  store i64 %14, i64* %size5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_read_uls(i64* noundef %data, i64 noundef %nb_uls, %struct._IO_FILE* noundef %file) #0 {
entry:
  %data.addr = alloca i64*, align 8
  %nb_uls.addr = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i64* %data, i64** %data.addr, align 8
  store i64 %nb_uls, i64* %nb_uls.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i64*, i64** %data.addr, align 8
  %1 = bitcast i64* %0 to i8*
  %2 = load i64, i64* %nb_uls.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @trusted_utils_read_objs(i8* noundef %1, i64 noundef 8, i64 noundef %2, %struct._IO_FILE* noundef %3)
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.u64_vec* @u64_vec_init(i64 noundef %capacity) #0 {
entry:
  %capacity.addr = alloca i64, align 8
  %vector = alloca %struct.u64_vec*, align 8
  store i64 %capacity, i64* %capacity.addr, align 8
  %call = call i8* @trusted_utils_malloc(i64 noundef 24)
  %0 = bitcast i8* %call to %struct.u64_vec*
  store %struct.u64_vec* %0, %struct.u64_vec** %vector, align 8
  %1 = load %struct.u64_vec*, %struct.u64_vec** %vector, align 8
  %size = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %1, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %2 = load i64, i64* %capacity.addr, align 8
  %3 = load %struct.u64_vec*, %struct.u64_vec** %vector, align 8
  %capacity1 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %3, i32 0, i32 0
  store i64 %2, i64* %capacity1, align 8
  %4 = load i64, i64* %capacity.addr, align 8
  %call2 = call i8* @trusted_utils_calloc(i64 noundef %4, i64 noundef 8)
  %5 = bitcast i8* %call2 to i64*
  %6 = load %struct.u64_vec*, %struct.u64_vec** %vector, align 8
  %data = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %6, i32 0, i32 2
  store i64* %5, i64** %data, align 8
  %7 = load %struct.u64_vec*, %struct.u64_vec** %vector, align 8
  ret %struct.u64_vec* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tc_end() #0 {
entry:
  %0 = load %struct.u64_vec*, %struct.u64_vec** @buf_hints, align 8
  %1 = bitcast %struct.u64_vec* %0 to i8*
  call void @free(i8* noundef %1) #6
  %2 = load %struct.int_vec*, %struct.int_vec** @buf_lits, align 8
  %3 = bitcast %struct.int_vec* %2 to i8*
  call void @free(i8* noundef %3) #6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %call = call i32 @fclose(%struct._IO_FILE* noundef %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @input, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* noundef %5)
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trusted_utils_read_char(%struct._IO_FILE* noundef %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %res = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fgetc_unlocked(%struct._IO_FILE* noundef %0)
  store i32 %call, i32* %res, align 4
  %1 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @trusted_utils_exit_eof()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %res, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @trusted_utils_read_ul(%struct._IO_FILE* noundef %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %u = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = bitcast i64* %u to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @trusted_utils_read_objs(i8* noundef %0, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %1)
  %2 = load i64, i64* %u, align 8
  ret i64 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trusted_utils_read_int(%struct._IO_FILE* noundef %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = bitcast i32* %i to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @trusted_utils_read_objs(i8* noundef %0, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %1)
  %2 = load i32, i32* %i, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @trusted_utils_read_bool(%struct._IO_FILE* noundef %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %res = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fgetc_unlocked(%struct._IO_FILE* noundef %0)
  store i32 %call, i32* %res, align 4
  %1 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @trusted_utils_exit_eof()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %2, 0
  %3 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %tobool1 = icmp ne i32 %cond, 0
  ret i1 %tobool1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_write_sig(i8* noundef %sig, %struct._IO_FILE* noundef %file) #0 {
entry:
  %sig.addr = alloca i8*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i8* %sig, i8** %sig.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i8*, i8** %sig.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @write_objs(i8* noundef %0, i64 noundef 4, i64 noundef 4, %struct._IO_FILE* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_read_sig(i8* noundef %out_sig, %struct._IO_FILE* noundef %file) #0 {
entry:
  %out_sig.addr = alloca i8*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %dummy = alloca [16 x i8], align 16
  store i8* %out_sig, i8** %out_sig.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i8*, i8** %out_sig.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %dummy, i64 0, i64 0
  store i8* %arraydecay, i8** %out_sig.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %out_sig.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @trusted_utils_read_objs(i8* noundef %1, i64 noundef 4, i64 noundef 4, %struct._IO_FILE* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_log(i8* noundef %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %call = call i32 @getpid() #6
  %0 = load i8*, i8** %msg.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0), i32 noundef %call, i8* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_log_err(i8* noundef %msg) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %call = call i32 @getpid() #6
  %0 = load i8*, i8** %msg.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i32 noundef %call, i8* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_literal_buffer() #0 {
entry:
  %0 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %data = getelementptr inbounds %struct.int_vec, %struct.int_vec* %0, i32 0, i32 2
  %1 = load i32*, i32** %data, align 8
  %2 = bitcast i32* %1 to i8*
  %3 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %3, i32 0, i32 1
  %4 = load i64, i64* %size, align 8
  %mul = mul i64 %4, 4
  call void @siphash_update(i8* noundef %2, i64 noundef %mul)
  %5 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %data1 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %5, i32 0, i32 2
  %6 = load i32*, i32** %data1, align 8
  %7 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %size2 = getelementptr inbounds %struct.int_vec, %struct.int_vec* %7, i32 0, i32 1
  %8 = load i64, i64* %size2, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @f_out, align 8
  call void @trusted_utils_write_ints(i32* noundef %6, i64 noundef %8, %struct._IO_FILE* noundef %9)
  %10 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  call void @int_vec_clear(%struct.int_vec* noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_write_ints(i32* noundef %data, i64 noundef %nb_ints, %struct._IO_FILE* noundef %file) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %nb_ints.addr = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64 %nb_ints, i64* %nb_ints.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = load i64, i64* %nb_ints.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @write_objs(i8* noundef %1, i64 noundef 4, i64 noundef %2, %struct._IO_FILE* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @append_integer() #0 {
entry:
  %lit = alloca i32, align 4
  %0 = load i8, i8* @header, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @nb_vars, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* @num, align 4
  store i32 %2, i32* @nb_vars, align 4
  %3 = load i32, i32* @nb_vars, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @f_out, align 8
  call void @trusted_utils_write_int(i32 noundef %3, %struct._IO_FILE* noundef %4)
  br label %if.end5

if.else:                                          ; preds = %if.then
  %5 = load i32, i32* @nb_cls, align 4
  %cmp2 = icmp eq i32 %5, -1
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %6 = load i32, i32* @num, align 4
  store i32 %6, i32* @nb_cls, align 4
  %7 = load i32, i32* @nb_cls, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @f_out, align 8
  call void @trusted_utils_write_int(i32 noundef %7, %struct._IO_FILE* noundef %8)
  store i8 0, i8* @header, align 1
  br label %if.end

if.else4:                                         ; preds = %if.else
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then1
  store i32 0, i32* @num, align 4
  store i8 0, i8* @began_num, align 1
  br label %return

if.end6:                                          ; preds = %entry
  %9 = load i32, i32* @sign, align 4
  %10 = load i32, i32* @num, align 4
  %mul = mul nsw i32 %9, %10
  store i32 %mul, i32* %lit, align 4
  %11 = load i32, i32* %lit, align 4
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %12 = load i32, i32* @nb_read_cls, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @nb_read_cls, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  store i32 0, i32* @num, align 4
  store i32 1, i32* @sign, align 4
  store i8 0, i8* @began_num, align 1
  %13 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %13, i32 0, i32 1
  %14 = load i64, i64* %size, align 8
  %15 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %capacity = getelementptr inbounds %struct.int_vec, %struct.int_vec* %15, i32 0, i32 0
  %16 = load i64, i64* %capacity, align 8
  %cmp10 = icmp eq i64 %14, %16
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @output_literal_buffer()
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %17 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %18 = load i32, i32* %lit, align 4
  call void @int_vec_push(%struct.int_vec* noundef %17, i32 noundef %18)
  br label %return

return:                                           ; preds = %if.end12, %if.end5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_write_int(i32 noundef %i, %struct._IO_FILE* noundef %file) #0 {
entry:
  %i.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = bitcast i32* %i.addr to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @write_objs(i8* noundef %0, i64 noundef 4, i64 noundef 1, %struct._IO_FILE* noundef %1)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @process(i8 noundef signext %c) #0 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i8, align 1
  %uc = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* @comment, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 10
  br i1 %cmp, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i8, i8* %c.addr, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp ne i32 %conv3, 13
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %3 = load i8, i8* %c.addr, align 1
  store i8 %3, i8* %uc, align 1
  %4 = load i8, i8* %uc, align 1
  %conv6 = sext i8 %4 to i32
  switch i32 %conv6, label %sw.default [
    i32 -1, label %sw.bb
    i32 10, label %sw.bb7
    i32 13, label %sw.bb7
    i32 112, label %sw.bb11
    i32 99, label %sw.bb12
    i32 32, label %sw.bb16
    i32 45, label %sw.bb20
    i32 48, label %sw.bb21
    i32 49, label %sw.bb21
    i32 50, label %sw.bb21
    i32 51, label %sw.bb21
    i32 52, label %sw.bb21
    i32 53, label %sw.bb21
    i32 54, label %sw.bb21
    i32 55, label %sw.bb21
    i32 56, label %sw.bb21
    i32 57, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end
  store i8 1, i8* @input_finished, align 1
  store i1 true, i1* %retval, align 1
  br label %return

sw.bb7:                                           ; preds = %if.end, %if.end
  store i8 0, i8* @comment, align 1
  %5 = load i8, i8* @began_num, align 1
  %tobool8 = trunc i8 %5 to i1
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb7
  call void @append_integer()
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb7
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  store i8 1, i8* @header, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %6 = load i8, i8* @header, align 1
  %tobool13 = trunc i8 %6 to i1
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %sw.bb12
  store i8 1, i8* @comment, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %sw.bb12
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %7 = load i8, i8* @began_num, align 1
  %tobool17 = trunc i8 %7 to i1
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.bb16
  call void @append_integer()
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %sw.bb16
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  store i32 -1, i32* @sign, align 4
  store i8 1, i8* @began_num, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %8 = load i32, i32* @num, align 4
  %mul = mul nsw i32 %8, 10
  %9 = load i8, i8* %c.addr, align 1
  %conv22 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv22, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, i32* @num, align 4
  store i8 1, i8* @began_num, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb20, %if.end19, %if.end15, %sw.bb11, %if.end10
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tp_init(i8* noundef %filename, %struct._IO_FILE* noundef %out) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  call void @siphash_init(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @SECRET_KEY, i64 0, i64 0))
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @f_out, align 8
  %call1 = call %struct.int_vec* @int_vec_init(i64 noundef 16384)
  store %struct.int_vec* %call1, %struct.int_vec** @data, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tp_end() #0 {
entry:
  %0 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %1 = bitcast %struct.int_vec* %0 to i8*
  call void @free(i8* noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @tp_parse(i8** noundef %sig) #0 {
entry:
  %sig.addr = alloca i8**, align 8
  %c_int = alloca i32, align 4
  store i8** %sig, i8*** %sig.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @f, align 8
  %call = call i32 @fgetc_unlocked(%struct._IO_FILE* noundef %0)
  store i32 %call, i32* %c_int, align 4
  %1 = load i32, i32* %c_int, align 4
  %conv = trunc i32 %1 to i8
  %call1 = call zeroext i1 @process(i8 noundef signext %conv)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.body

while.end:                                        ; preds = %if.then
  %2 = load i8, i8* @began_num, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.end
  call void @append_integer()
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %while.end
  %3 = load %struct.int_vec*, %struct.int_vec** @data, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %3, i32 0, i32 1
  %4 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @output_literal_buffer()
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  call void @siphash_pad(i64 noundef 2)
  %call7 = call i8* @siphash_digest()
  %5 = load i8**, i8*** %sig.addr, align 8
  store i8* %call7, i8** %5, align 8
  %6 = load i8**, i8*** %sig.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @f_out, align 8
  call void @trusted_utils_write_sig(i8* noundef %7, %struct._IO_FILE* noundef %8)
  %9 = load i8, i8* @input_finished, align 1
  %tobool8 = trunc i8 %9 to i1
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end6
  %10 = load i8, i8* @input_invalid, align 1
  %tobool10 = trunc i8 %10 to i1
  %lnot = xor i1 %tobool10, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end6
  %11 = phi i1 [ false, %if.end6 ], [ %lnot, %land.rhs ]
  ret i1 %11
}

declare dso_local i32 @fgetc_unlocked(%struct._IO_FILE* noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: nounwind
declare dso_local i32 @getpid() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_exit_eof() #0 {
entry:
  call void @trusted_utils_log(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0))
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_oom() #0 {
entry:
  call void @trusted_utils_log(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0))
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @begins_with(i8* noundef %str, i8* noundef %prefix) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i64 0, i64* %i, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end19
  %0 = load i8*, i8** %prefix.addr, align 8
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  %6 = load i8*, i8** %prefix.addr, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 %7
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  store i1 %cmp9, i1* %retval, align 1
  br label %return

if.end11:                                         ; preds = %if.end
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %9, i64 %10
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %11 to i32
  %12 = load i8*, i8** %prefix.addr, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %14 to i32
  %cmp16 = icmp ne i32 %conv13, %conv15
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end11
  store i1 false, i1* %retval, align 1
  br label %return

if.end19:                                         ; preds = %if.end11
  %15 = load i64, i64* %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %i, align 8
  br label %while.body

return:                                           ; preds = %if.then18, %if.then6, %if.then
  %16 = load i1, i1* %retval, align 1
  ret i1 %16
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trusted_utils_realloc(i8* noundef %from, i64 noundef %new_size) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  %res = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  %0 = load i8*, i8** %from.addr, align 8
  %1 = load i64, i64* %new_size.addr, align 8
  %call = call i8* @realloc(i8* noundef %0, i64 noundef %1) #6
  store i8* %call, i8** %res, align 8
  %2 = load i8*, i8** %res, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @exit_oom()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %res, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_read_objs(i8* noundef %data, i64 noundef %size, i64 noundef %nb_objs, %struct._IO_FILE* noundef %file) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %nb_objs.addr = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %nb_read = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %nb_objs, i64* %nb_objs.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i64, i64* %nb_objs.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fread_unlocked(i8* noundef %0, i64 noundef %1, i64 noundef %2, %struct._IO_FILE* noundef %3)
  store i64 %call, i64* %nb_read, align 8
  %4 = load i64, i64* %nb_read, align 8
  %5 = load i64, i64* %nb_objs.addr, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @trusted_utils_exit_eof()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i64 @fread_unlocked(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #4

declare dso_local i32 @fputc_unlocked(i32 noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_write_bool(i1 noundef zeroext %b, %struct._IO_FILE* noundef %file) #0 {
entry:
  %b.addr = alloca i8, align 1
  %file.addr = alloca %struct._IO_FILE*, align 8
  %res = alloca i32, align 4
  %frombool = zext i1 %b to i8
  store i8 %frombool, i8* %b.addr, align 1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i8, i8* %b.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @fputc_unlocked(i32 noundef %cond, %struct._IO_FILE* noundef %2)
  store i32 %call, i32* %res, align 4
  %3 = load i32, i32* %res, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @trusted_utils_exit_eof()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_objs(i8* noundef %data, i64 noundef %size, i64 noundef %nb_objs, %struct._IO_FILE* noundef %file) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %nb_objs.addr = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %nb_read = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %nb_objs, i64* %nb_objs.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i64, i64* %nb_objs.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef %1, i64 noundef %2, %struct._IO_FILE* noundef %3)
  store i64 %call, i64* %nb_read, align 8
  %4 = load i64, i64* %nb_read, align 8
  %5 = load i64, i64* %nb_objs.addr, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @trusted_utils_exit_eof()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i64 @fwrite_unlocked(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_write_ul(i64 noundef %u, %struct._IO_FILE* noundef %file) #0 {
entry:
  %u.addr = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i64 %u, i64* %u.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = bitcast i64* %u.addr to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @write_objs(i8* noundef %0, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_write_uls(i64* noundef %data, i64 noundef %nb_uls, %struct._IO_FILE* noundef %file) #0 {
entry:
  %data.addr = alloca i64*, align 8
  %nb_uls.addr = alloca i64, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store i64* %data, i64** %data.addr, align 8
  store i64 %nb_uls, i64* %nb_uls.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load i64*, i64** %data.addr, align 8
  %1 = bitcast i64* %0 to i8*
  %2 = load i64, i64* %nb_uls.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @write_objs(i8* noundef %1, i64 noundef 8, i64 noundef %2, %struct._IO_FILE* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trusted_utils_sig_to_str(i8* noundef %sig, i8* noundef %out) #0 {
entry:
  %sig.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %charpos = alloca i32, align 4
  %val1 = alloca i8, align 1
  %val2 = alloca i8, align 1
  store i8* %sig, i8** %sig.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 0, i32* %charpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %charpos, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %sig.addr, align 8
  %2 = load i32, i32* %charpos, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %val1, align 1
  %4 = load i8*, i8** %sig.addr, align 8
  %5 = load i32, i32* %charpos, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i32
  %and5 = and i32 %conv4, 15
  %conv6 = trunc i32 %and5 to i8
  store i8 %conv6, i8* %val2, align 1
  %7 = load i8, i8* %val1, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp sge i32 %conv7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8, i8* %val1, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp slt i32 %conv10, 16
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([115 x i8], [115 x i8]* @.str.40, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.trusted_utils_sig_to_str, i64 0, i64 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  %9 = load i8, i8* %val2, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp sge i32 %conv13, 0
  br i1 %cmp14, label %land.lhs.true16, label %if.else21

land.lhs.true16:                                  ; preds = %if.end
  %10 = load i8, i8* %val2, align 1
  %conv17 = sext i8 %10 to i32
  %cmp18 = icmp slt i32 %conv17, 16
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true16
  br label %if.end22

if.else21:                                        ; preds = %land.lhs.true16, %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([115 x i8], [115 x i8]* @.str.40, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.trusted_utils_sig_to_str, i64 0, i64 0)) #7
  unreachable

if.end22:                                         ; preds = %if.then20
  %11 = load i8, i8* %val1, align 1
  %conv23 = sext i8 %11 to i32
  %cmp24 = icmp sge i32 %conv23, 10
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end22
  %12 = load i8, i8* %val1, align 1
  %conv26 = sext i8 %12 to i32
  %add = add nsw i32 97, %conv26
  %sub = sub nsw i32 %add, 10
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  %13 = load i8, i8* %val1, align 1
  %conv27 = sext i8 %13 to i32
  %add28 = add nsw i32 48, %conv27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add28, %cond.false ]
  %conv29 = trunc i32 %cond to i8
  %14 = load i8*, i8** %out.addr, align 8
  %15 = load i32, i32* %charpos, align 4
  %mul = mul nsw i32 2, %15
  %add30 = add nsw i32 %mul, 0
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %14, i64 %idxprom31
  store i8 %conv29, i8* %arrayidx32, align 1
  %16 = load i8, i8* %val2, align 1
  %conv33 = sext i8 %16 to i32
  %cmp34 = icmp sge i32 %conv33, 10
  br i1 %cmp34, label %cond.true36, label %cond.false40

cond.true36:                                      ; preds = %cond.end
  %17 = load i8, i8* %val2, align 1
  %conv37 = sext i8 %17 to i32
  %add38 = add nsw i32 97, %conv37
  %sub39 = sub nsw i32 %add38, 10
  br label %cond.end43

cond.false40:                                     ; preds = %cond.end
  %18 = load i8, i8* %val2, align 1
  %conv41 = sext i8 %18 to i32
  %add42 = add nsw i32 48, %conv41
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false40, %cond.true36
  %cond44 = phi i32 [ %sub39, %cond.true36 ], [ %add42, %cond.false40 ]
  %conv45 = trunc i32 %cond44 to i8
  %19 = load i8*, i8** %out.addr, align 8
  %20 = load i32, i32* %charpos, align 4
  %mul46 = mul nsw i32 2, %20
  %add47 = add nsw i32 %mul46, 1
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %19, i64 %idxprom48
  store i8 %conv45, i8* %arrayidx49, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end43
  %21 = load i32, i32* %charpos, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %charpos, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %22 = load i8*, i8** %out.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %22, i64 32
  store i8 0, i8* %arrayidx50, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @trusted_utils_str_to_sig(i8* noundef %str, i8* noundef %out) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %bytepos = alloca i32, align 4
  %hex_pair = alloca i8*, align 8
  %hex1 = alloca i8, align 1
  %hex2 = alloca i8, align 1
  %byte = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 0, i32* %bytepos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %bytepos, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i32, i32* %bytepos, align 4
  %mul = mul nsw i32 %2, 2
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %hex_pair, align 8
  %3 = load i8*, i8** %hex_pair, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %hex1, align 1
  %5 = load i8*, i8** %hex_pair, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx1, align 1
  store i8 %6, i8* %hex2, align 1
  %7 = load i8, i8* %hex1, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp sge i32 %conv, 48
  br i1 %cmp2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.body
  %8 = load i8, i8* %hex1, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp sle i32 %conv4, 57
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %9 = load i8, i8* %hex1, align 1
  %conv7 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv7, 48
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.body
  %10 = load i8, i8* %hex1, align 1
  %conv8 = sext i8 %10 to i32
  %add = add nsw i32 10, %conv8
  %sub9 = sub nsw i32 %add, 97
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub9, %cond.false ]
  %mul10 = mul nsw i32 16, %cond
  %11 = load i8, i8* %hex2, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp sge i32 %conv11, 48
  br i1 %cmp12, label %land.lhs.true14, label %cond.false21

land.lhs.true14:                                  ; preds = %cond.end
  %12 = load i8, i8* %hex2, align 1
  %conv15 = sext i8 %12 to i32
  %cmp16 = icmp sle i32 %conv15, 57
  br i1 %cmp16, label %cond.true18, label %cond.false21

cond.true18:                                      ; preds = %land.lhs.true14
  %13 = load i8, i8* %hex2, align 1
  %conv19 = sext i8 %13 to i32
  %sub20 = sub nsw i32 %conv19, 48
  br label %cond.end25

cond.false21:                                     ; preds = %land.lhs.true14, %cond.end
  %14 = load i8, i8* %hex2, align 1
  %conv22 = sext i8 %14 to i32
  %add23 = add nsw i32 10, %conv22
  %sub24 = sub nsw i32 %add23, 97
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false21, %cond.true18
  %cond26 = phi i32 [ %sub20, %cond.true18 ], [ %sub24, %cond.false21 ]
  %add27 = add nsw i32 %mul10, %cond26
  store i32 %add27, i32* %byte, align 4
  %15 = load i32, i32* %byte, align 4
  %cmp28 = icmp slt i32 %15, 0
  br i1 %cmp28, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end25
  %16 = load i32, i32* %byte, align 4
  %cmp30 = icmp sge i32 %16, 256
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end25
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %17 = load i32, i32* %byte, align 4
  %conv32 = trunc i32 %17 to i8
  %18 = load i8*, i8** %out.addr, align 8
  %19 = load i32, i32* %bytepos, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 %conv32, i8* %arrayidx33, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %bytepos, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %bytepos, align 4
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i1, i1* %retval, align 1
  ret i1 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.u8_vec* @u8_vec_init(i64 noundef %capacity) #0 {
entry:
  %capacity.addr = alloca i64, align 8
  %vector = alloca %struct.u8_vec*, align 8
  store i64 %capacity, i64* %capacity.addr, align 8
  %call = call i8* @trusted_utils_malloc(i64 noundef 24)
  %0 = bitcast i8* %call to %struct.u8_vec*
  store %struct.u8_vec* %0, %struct.u8_vec** %vector, align 8
  %1 = load %struct.u8_vec*, %struct.u8_vec** %vector, align 8
  %size = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %1, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %2 = load i64, i64* %capacity.addr, align 8
  %3 = load %struct.u8_vec*, %struct.u8_vec** %vector, align 8
  %capacity1 = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %3, i32 0, i32 0
  store i64 %2, i64* %capacity1, align 8
  %4 = load i64, i64* %capacity.addr, align 8
  %call2 = call i8* @trusted_utils_calloc(i64 noundef %4, i64 noundef 1)
  %5 = load %struct.u8_vec*, %struct.u8_vec** %vector, align 8
  %data = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %5, i32 0, i32 2
  store i8* %call2, i8** %data, align 8
  %6 = load %struct.u8_vec*, %struct.u8_vec** %vector, align 8
  ret %struct.u8_vec* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u8_vec_free(%struct.u8_vec* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.u8_vec*, align 8
  store %struct.u8_vec* %vec, %struct.u8_vec** %vec.addr, align 8
  %0 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %0, i32 0, i32 2
  %1 = load i8*, i8** %data, align 8
  call void @free(i8* noundef %1) #6
  %2 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %2, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %3 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %3, i32 0, i32 0
  store i64 0, i64* %capacity, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u8_vec_reserve(%struct.u8_vec* noundef %vec, i64 noundef %new_cap) #0 {
entry:
  %vec.addr = alloca %struct.u8_vec*, align 8
  %new_cap.addr = alloca i64, align 8
  store %struct.u8_vec* %vec, %struct.u8_vec** %vec.addr, align 8
  store i64 %new_cap, i64* %new_cap.addr, align 8
  %0 = load i64, i64* %new_cap.addr, align 8
  %1 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %1, i32 0, i32 0
  %2 = load i64, i64* %capacity, align 8
  %cmp = icmp ugt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %3, i32 0, i32 2
  %4 = load i8*, i8** %data, align 8
  %5 = load i64, i64* %new_cap.addr, align 8
  %mul = mul i64 %5, 1
  %call = call i8* @trusted_utils_realloc(i8* noundef %4, i64 noundef %mul)
  %6 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %data1 = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %6, i32 0, i32 2
  store i8* %call, i8** %data1, align 8
  %7 = load i64, i64* %new_cap.addr, align 8
  %8 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %capacity2 = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %8, i32 0, i32 0
  store i64 %7, i64* %capacity2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %9, i32 0, i32 1
  %10 = load i64, i64* %size, align 8
  %11 = load i64, i64* %new_cap.addr, align 8
  %cmp3 = icmp ugt i64 %10, %11
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %12 = load i64, i64* %new_cap.addr, align 8
  %13 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %size5 = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %13, i32 0, i32 1
  store i64 %12, i64* %size5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u8_vec_push(%struct.u8_vec* noundef %vec, i8 noundef zeroext %elem) #0 {
entry:
  %vec.addr = alloca %struct.u8_vec*, align 8
  %elem.addr = alloca i8, align 1
  %new_cap = alloca i64, align 8
  store %struct.u8_vec* %vec, %struct.u8_vec** %vec.addr, align 8
  store i8 %elem, i8* %elem.addr, align 1
  %0 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  %2 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %2, i32 0, i32 0
  %3 = load i64, i64* %capacity, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %4 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %capacity1 = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %4, i32 0, i32 0
  %5 = load i64, i64* %capacity1, align 8
  %conv = uitofp i64 %5 to double
  %mul = fmul double %conv, 1.300000e+00
  %conv2 = fptoui double %mul to i64
  store i64 %conv2, i64* %new_cap, align 8
  %6 = load i64, i64* %new_cap, align 8
  %7 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %capacity3 = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %7, i32 0, i32 0
  %8 = load i64, i64* %capacity3, align 8
  %add = add i64 %8, 1
  %cmp4 = icmp ult i64 %6, %add
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %capacity7 = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %9, i32 0, i32 0
  %10 = load i64, i64* %capacity7, align 8
  %add8 = add i64 %10, 1
  store i64 %add8, i64* %new_cap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %11 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %12 = load i64, i64* %new_cap, align 8
  call void @u8_vec_reserve(%struct.u8_vec* noundef %11, i64 noundef %12)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %13 = load i8, i8* %elem.addr, align 1
  %14 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %14, i32 0, i32 2
  %15 = load i8*, i8** %data, align 8
  %16 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  %size10 = getelementptr inbounds %struct.u8_vec, %struct.u8_vec* %16, i32 0, i32 1
  %17 = load i64, i64* %size10, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %size10, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 %13, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u8_vec_clear(%struct.u8_vec* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.u8_vec*, align 8
  store %struct.u8_vec* %vec, %struct.u8_vec** %vec.addr, align 8
  %0 = load %struct.u8_vec*, %struct.u8_vec** %vec.addr, align 8
  call void @u8_vec_reserve(%struct.u8_vec* noundef %0, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i8_vec_free(%struct.i8_vec* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.i8_vec*, align 8
  store %struct.i8_vec* %vec, %struct.i8_vec** %vec.addr, align 8
  %0 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %0, i32 0, i32 2
  %1 = load i8*, i8** %data, align 8
  call void @free(i8* noundef %1) #6
  %2 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %2, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %3 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %3, i32 0, i32 0
  store i64 0, i64* %capacity, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i8_vec_reserve(%struct.i8_vec* noundef %vec, i64 noundef %new_cap) #0 {
entry:
  %vec.addr = alloca %struct.i8_vec*, align 8
  %new_cap.addr = alloca i64, align 8
  store %struct.i8_vec* %vec, %struct.i8_vec** %vec.addr, align 8
  store i64 %new_cap, i64* %new_cap.addr, align 8
  %0 = load i64, i64* %new_cap.addr, align 8
  %1 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %1, i32 0, i32 0
  %2 = load i64, i64* %capacity, align 8
  %cmp = icmp ugt i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %3, i32 0, i32 2
  %4 = load i8*, i8** %data, align 8
  %5 = load i64, i64* %new_cap.addr, align 8
  %mul = mul i64 %5, 1
  %call = call i8* @trusted_utils_realloc(i8* noundef %4, i64 noundef %mul)
  %6 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %data1 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %6, i32 0, i32 2
  store i8* %call, i8** %data1, align 8
  %7 = load i64, i64* %new_cap.addr, align 8
  %8 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %capacity2 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %8, i32 0, i32 0
  store i64 %7, i64* %capacity2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %9, i32 0, i32 1
  %10 = load i64, i64* %size, align 8
  %11 = load i64, i64* %new_cap.addr, align 8
  %cmp3 = icmp ugt i64 %10, %11
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %12 = load i64, i64* %new_cap.addr, align 8
  %13 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %size5 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %13, i32 0, i32 1
  store i64 %12, i64* %size5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i8_vec_push(%struct.i8_vec* noundef %vec, i8 noundef signext %elem) #0 {
entry:
  %vec.addr = alloca %struct.i8_vec*, align 8
  %elem.addr = alloca i8, align 1
  %new_cap = alloca i64, align 8
  store %struct.i8_vec* %vec, %struct.i8_vec** %vec.addr, align 8
  store i8 %elem, i8* %elem.addr, align 1
  %0 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  %2 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %2, i32 0, i32 0
  %3 = load i64, i64* %capacity, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %4 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %capacity1 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %4, i32 0, i32 0
  %5 = load i64, i64* %capacity1, align 8
  %conv = uitofp i64 %5 to double
  %mul = fmul double %conv, 1.300000e+00
  %conv2 = fptoui double %mul to i64
  store i64 %conv2, i64* %new_cap, align 8
  %6 = load i64, i64* %new_cap, align 8
  %7 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %capacity3 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %7, i32 0, i32 0
  %8 = load i64, i64* %capacity3, align 8
  %add = add i64 %8, 1
  %cmp4 = icmp ult i64 %6, %add
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %capacity7 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %9, i32 0, i32 0
  %10 = load i64, i64* %capacity7, align 8
  %add8 = add i64 %10, 1
  store i64 %add8, i64* %new_cap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %11 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %12 = load i64, i64* %new_cap, align 8
  call void @i8_vec_reserve(%struct.i8_vec* noundef %11, i64 noundef %12)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %13 = load i8, i8* %elem.addr, align 1
  %14 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %14, i32 0, i32 2
  %15 = load i8*, i8** %data, align 8
  %16 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  %size10 = getelementptr inbounds %struct.i8_vec, %struct.i8_vec* %16, i32 0, i32 1
  %17 = load i64, i64* %size10, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %size10, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 %13, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i8_vec_clear(%struct.i8_vec* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.i8_vec*, align 8
  store %struct.i8_vec* %vec, %struct.i8_vec** %vec.addr, align 8
  %0 = load %struct.i8_vec*, %struct.i8_vec** %vec.addr, align 8
  call void @i8_vec_reserve(%struct.i8_vec* noundef %0, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int_vec_free(%struct.int_vec* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.int_vec*, align 8
  store %struct.int_vec* %vec, %struct.int_vec** %vec.addr, align 8
  %0 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.int_vec, %struct.int_vec* %0, i32 0, i32 2
  %1 = load i32*, i32** %data, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* noundef %2) #6
  %3 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.int_vec, %struct.int_vec* %3, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %4 = load %struct.int_vec*, %struct.int_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.int_vec, %struct.int_vec* %4, i32 0, i32 0
  store i64 0, i64* %capacity, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u64_vec_free(%struct.u64_vec* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.u64_vec*, align 8
  store %struct.u64_vec* %vec, %struct.u64_vec** %vec.addr, align 8
  %0 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %0, i32 0, i32 2
  %1 = load i64*, i64** %data, align 8
  %2 = bitcast i64* %1 to i8*
  call void @free(i8* noundef %2) #6
  %3 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %3, i32 0, i32 1
  store i64 0, i64* %size, align 8
  %4 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %4, i32 0, i32 0
  store i64 0, i64* %capacity, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u64_vec_push(%struct.u64_vec* noundef %vec, i64 noundef %elem) #0 {
entry:
  %vec.addr = alloca %struct.u64_vec*, align 8
  %elem.addr = alloca i64, align 8
  %new_cap = alloca i64, align 8
  store %struct.u64_vec* %vec, %struct.u64_vec** %vec.addr, align 8
  store i64 %elem, i64* %elem.addr, align 8
  %0 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %size = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %0, i32 0, i32 1
  %1 = load i64, i64* %size, align 8
  %2 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %capacity = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %2, i32 0, i32 0
  %3 = load i64, i64* %capacity, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %4 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %capacity1 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %4, i32 0, i32 0
  %5 = load i64, i64* %capacity1, align 8
  %conv = uitofp i64 %5 to double
  %mul = fmul double %conv, 1.300000e+00
  %conv2 = fptoui double %mul to i64
  store i64 %conv2, i64* %new_cap, align 8
  %6 = load i64, i64* %new_cap, align 8
  %7 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %capacity3 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %7, i32 0, i32 0
  %8 = load i64, i64* %capacity3, align 8
  %add = add i64 %8, 1
  %cmp4 = icmp ult i64 %6, %add
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %capacity7 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %9, i32 0, i32 0
  %10 = load i64, i64* %capacity7, align 8
  %add8 = add i64 %10, 1
  store i64 %add8, i64* %new_cap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %11 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %12 = load i64, i64* %new_cap, align 8
  call void @u64_vec_reserve(%struct.u64_vec* noundef %11, i64 noundef %12)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %13 = load i64, i64* %elem.addr, align 8
  %14 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %data = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %14, i32 0, i32 2
  %15 = load i64*, i64** %data, align 8
  %16 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  %size10 = getelementptr inbounds %struct.u64_vec, %struct.u64_vec* %16, i32 0, i32 1
  %17 = load i64, i64* %size10, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %size10, align 8
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 %13, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u64_vec_clear(%struct.u64_vec* noundef %vec) #0 {
entry:
  %vec.addr = alloca %struct.u64_vec*, align 8
  store %struct.u64_vec* %vec, %struct.u64_vec** %vec.addr, align 8
  %0 = load %struct.u64_vec*, %struct.u64_vec** %vec.addr, align 8
  call void @u64_vec_reserve(%struct.u64_vec* noundef %0, i64 noundef 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
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
