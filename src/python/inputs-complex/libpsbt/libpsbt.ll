; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/libpsbt.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/libpsbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psbt_tx_counter = type { i32, i32, i8*, void (%struct.psbt_elem*)* }
%struct.psbt_elem = type { i32, i8*, i32, %union.anon }
%union.anon = type { %struct.psbt_txelem* }
%struct.psbt_txelem = type { i32, i8*, %union.anon.0 }
%union.anon.0 = type { %struct.psbt_txin* }
%struct.psbt_txin = type { i8*, i32, i8*, i32, i32 }
%struct.psbt_record = type { i8, i8*, i32, i8*, i32, i32 }
%struct.psbt_txout = type { i64, i8*, i32 }
%struct.psbt_tx = type { i32, i32 }
%struct.psbt = type { i32, i8*, i8*, i64 }
%struct.psbt_witness_item = type { i32, i32, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@base64_table = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@base62_table = internal constant [63 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\00", align 16
@.str = private unnamed_addr constant [35 x i8] c"(size_t)(pos - out) < out_capacity\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/base64.c\00", align 1
@__PRETTY_FUNCTION__.base64_decode = private unnamed_addr constant [95 x i8] c"unsigned char *base64_decode(const unsigned char *, size_t, unsigned char *, size_t, size_t *)\00", align 1
@.str.2 = private unnamed_addr constant [1127 x i8] c"70736274ff0100a00200000002ab0949a08c5af7c49b8212f417e2f15ab3f5c33dcf153821a8139f877a5b7be40000000000feffffffab0949a08c5af7c49b8212f417e2f15ab3f5c33dcf153821a8139f877a5b7be40100000000feffffff02603bea0b000000001976a914768a40bbd740cbe81d988e71de2a4d5c71396b1d88ac8e240000000000001976a9146f4620b553fa095e721b9ee0efe9fa039cca459788ac00000000000100df0200000001268171371edff285e937adeea4b37b78000c0566cbb3ad64641713ca42171bf6000000006a473044022070b2245123e6bf474d60c5b50c043d4c691a5d2435f09a34a7662a9dc251790a022001329ca9dacf280bdf30740ec0390422422c81cb45839457aeb76fc12edd95b3012102657d118d3357b8e0f4c2cd46db7b39f6d9c38d9a70abcb9b2de5dc8dbfe4ce31feffffff02d3dff505000000001976a914d0c59903c5bac2868760e90fd521a4665aa7652088ac00e1f5050000000017a9143545e6e33b832c47050f24d3eeb93c9c03948bc787b32e13000001012000e1f5050000000017a9143545e6e33b832c47050f24d3eeb93c9c03948bc787010416001485d13537f2e265405a34dbafa9e3dda01fb8230800220202ead596687ca806043edc3de116cdf29d5e9257c196cd055cf698c8d02bf24e9910b4a6ba670000008000000080020000800022020394f62be9df19952c5587768aeb7698061ad2c4a25c894f47d8c162b4d7213d0510b4a6ba6700000080010000800200008000\00", align 1
@psbt_example = dso_local global i8* getelementptr inbounds ([1127 x i8], [1127 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"{\0A    \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\22tx\22: \22\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\22type\22: \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s\09%d \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c" ind:%d\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" seq:%u\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"amount:%lu\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"ver:%u locktime:%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"usage: psbt <psbt>\0A\00", align 1
@main.buffer = internal global [4096 x i8] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [33 x i8] c"error (%d): %s. last_state = %s\0A\00", align 1
@psbt_errmsg = dso_local global i8* null, align 8
@MAX_SERIALIZE_SIZE = internal constant i32 33554432, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"non-canonical compactsize_read()\00", align 1
@PSBT_MAGIC = dso_local constant [4 x i8] c"psbt", align 1
@.str.18 = private unnamed_addr constant [116 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:43\00", align 1
@.str.19 = private unnamed_addr constant [116 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:47\00", align 1
@.str.20 = private unnamed_addr constant [116 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:76\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"psbt_finalize: no output records found\00", align 1
@.str.22 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:108\00", align 1
@.str.23 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:113\00", align 1
@.str.24 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:117\00", align 1
@.str.25 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:123\00", align 1
@.str.26 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:128\00", align 1
@.str.27 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:137\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"psbt_read: invalid magic header\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"psbt_read: no 0xff found after magic\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"IN_NON_WITNESS_UTXO\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"IN_WITNESS_UTXO\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"IN_PARTIAL_SIG\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"IN_SIGHASH_TYPE\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"IN_REDEEM_SCRIPT\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"IN_WITNESS_SCRIPT\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"IN_BIP32_DERIVATION\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"IN_FINAL_SCRIPTSIG\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"IN_FINAL_SCRIPTWITNESS\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"UNKNOWN_INPUT_TYPE\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"GLOBAL\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"INPUTS\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"INPUTS_NEW\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"OUTPUTS\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"OUTPUTS_NEW\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"FINALIZED\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"UNKNOWN_STATE\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"OUT_REDEEM_SCRIPT\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"OUT_WITNESS_SCRIPT\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"OUT_BIP32_DERIVATION\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"UNKNOWN_OUTPUT_TYPE\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"GLOBAL_UNSIGNED_TX\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"UNKNOWN_GLOBAL_TYPE\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"TXIN\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"TXOUT\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"WITNESS_ITEM\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"UNKNOWN_TXELEM\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"UNKNOWN_SCOPE\00", align 1
@.str.60 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:271\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"size > 0\00", align 1
@.str.62 = private unnamed_addr constant [93 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c\00", align 1
@__PRETTY_FUNCTION__.psbt_read_record = private unnamed_addr constant [79 x i8] c"enum psbt_result psbt_read_record(struct psbt *, size_t, struct psbt_record *)\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"psbt_read: record key size too large\00", align 1
@.str.64 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:288\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"psbt_read_record: invalid record state\00", align 1
@.str.66 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:321\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"psbt_read: record value size too large\00", align 1
@.str.68 = private unnamed_addr constant [117 x i8] c"write out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/psbt.c:337\00", align 1
@.str.69 = private unnamed_addr constant [53 x i8] c"psbt_read: psbt not initialized, use psbt_init first\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"psbt_read: read buffer is larger than psbt capacity\00", align 1
@.str.71 = private unnamed_addr constant [41 x i8] c"!\22psbt_read: invalid state at null byte\22\00", align 1
@__PRETTY_FUNCTION__.psbt_read = private unnamed_addr constant [102 x i8] c"enum psbt_result psbt_read(const unsigned char *, size_t, struct psbt *, psbt_elem_handler *, void *)\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"*tx->write_pos == 0\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"!\22impossible\22\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"psbt_read: invalid psbt\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"psbt_read: expected null byte at end of psbt\00", align 1
@.str.76 = private unnamed_addr constant [112 x i8] c"psbt_write_global_record: you can only write a global record after psbt_init and before psbt_write_input_record\00", align 1
@.str.77 = private unnamed_addr constant [137 x i8] c"psbt_new_input_record_set: this can only be called after psbt_write_global_record, psbt_new_input_record_set, or psbt_write_input_record\00", align 1
@.str.78 = private unnamed_addr constant [80 x i8] c"psbt_new_output_record_set: this can only be called after writing input records\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"psbt_print: transaction is not finished\00", align 1
@.str.80 = private unnamed_addr constant [141 x i8] c"psbt_write_input_record: attempting to write an input record before any global records have been written. use psbt_write_global_record first\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"psbt_decode: invalid hex string\00", align 1
@.str.82 = private unnamed_addr constant [66 x i8] c"psbt_decode: dest_size must be at least half the size of src_size\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"psbt_decode: psbt too small\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"cHNid\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"!\22hexchar invalid val\22\00", align 1
@__PRETTY_FUNCTION__.hexchar = private unnamed_addr constant [27 x i8] c"char hexchar(unsigned int)\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c"psbt_encode: base64 encode failure\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"psbt_encode: base62 encode failure\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"psbt_encode: invalid psbt_encoding enum value\00", align 1
@.str.89 = private unnamed_addr constant [126 x i8] c"psbt_encode: psbt not in finalized state. use psbt_read to parse an existing psbt, or the psbt_write functions to create one.\00", align 1
@.str.90 = private unnamed_addr constant [108 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:46\00", align 1
@.str.91 = private unnamed_addr constant [108 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:50\00", align 1
@.str.92 = private unnamed_addr constant [108 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:54\00", align 1
@.str.93 = private unnamed_addr constant [108 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:57\00", align 1
@.str.94 = private unnamed_addr constant [108 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:69\00", align 1
@.str.95 = private unnamed_addr constant [108 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:87\00", align 1
@.str.96 = private unnamed_addr constant [108 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:91\00", align 1
@.str.97 = private unnamed_addr constant [108 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:94\00", align 1
@.str.98 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:104\00", align 1
@.str.99 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:120\00", align 1
@.str.100 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:123\00", align 1
@.str.101 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:160\00", align 1
@.str.102 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:164\00", align 1
@.str.103 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:167\00", align 1
@.str.104 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:187\00", align 1
@.str.105 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:190\00", align 1
@.str.106 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:209\00", align 1
@.str.107 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:212\00", align 1
@.str.108 = private unnamed_addr constant [109 x i8] c"out of bounds /home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/libpsbt/tx.c:233\00", align 1
@.str.109 = private unnamed_addr constant [38 x i8] c"psbt_btc_tx_parse: parsing fell short\00", align 1
@counter = dso_local global %struct.psbt_tx_counter zeroinitializer, align 8

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
define dso_local i8* @base_encode(i8* noundef %src, i64 noundef %len, i8* noundef %out, i64 noundef %out_capacity, i64* noundef %out_len, i8* noundef %base_table) #0 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %out.addr = alloca i8*, align 8
  %out_capacity.addr = alloca i64, align 8
  %out_len.addr = alloca i64*, align 8
  %base_table.addr = alloca i8*, align 8
  %pos = alloca i8*, align 8
  %end = alloca i8*, align 8
  %in = alloca i8*, align 8
  %olen = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %out_capacity, i64* %out_capacity.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  store i8* %base_table, i8** %base_table.addr, align 8
  %0 = load i64, i64* %len.addr, align 8
  %mul = mul i64 %0, 4
  %div = udiv i64 %mul, 3
  %add = add i64 %div, 4
  store i64 %add, i64* %olen, align 8
  %1 = load i64, i64* %olen, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %olen, align 8
  %2 = load i64, i64* %olen, align 8
  %3 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %olen, align 8
  %5 = load i64, i64* %out_capacity.addr, align 8
  %cmp1 = icmp ugt i64 %4, %5
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load i8*, i8** %out.addr, align 8
  %cmp4 = icmp eq i8* %6, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i8* null, i8** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end3
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  store i8* %add.ptr, i8** %end, align 8
  %9 = load i8*, i8** %src.addr, align 8
  store i8* %9, i8** %in, align 8
  %10 = load i8*, i8** %out.addr, align 8
  store i8* %10, i8** %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end6
  %11 = load i8*, i8** %end, align 8
  %12 = load i8*, i8** %in, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp sge i64 %sub.ptr.sub, 3
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %base_table.addr, align 8
  %14 = load i8*, i8** %in, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %shr = ashr i32 %conv, 2
  %idxprom = sext i32 %shr to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %16 = load i8, i8* %arrayidx8, align 1
  %17 = load i8*, i8** %pos, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %pos, align 8
  store i8 %16, i8* %17, align 1
  %18 = load i8*, i8** %base_table.addr, align 8
  %19 = load i8*, i8** %in, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %20 to i32
  %and = and i32 %conv10, 3
  %shl = shl i32 %and, 4
  %21 = load i8*, i8** %in, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %22 to i32
  %shr13 = ashr i32 %conv12, 4
  %or = or i32 %shl, %shr13
  %idxprom14 = sext i32 %or to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 %idxprom14
  %23 = load i8, i8* %arrayidx15, align 1
  %24 = load i8*, i8** %pos, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr16, i8** %pos, align 8
  store i8 %23, i8* %24, align 1
  %25 = load i8*, i8** %base_table.addr, align 8
  %26 = load i8*, i8** %in, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %27 to i32
  %and19 = and i32 %conv18, 15
  %shl20 = shl i32 %and19, 2
  %28 = load i8*, i8** %in, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %29 to i32
  %shr23 = ashr i32 %conv22, 6
  %or24 = or i32 %shl20, %shr23
  %idxprom25 = sext i32 %or24 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %25, i64 %idxprom25
  %30 = load i8, i8* %arrayidx26, align 1
  %31 = load i8*, i8** %pos, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr27, i8** %pos, align 8
  store i8 %30, i8* %31, align 1
  %32 = load i8*, i8** %base_table.addr, align 8
  %33 = load i8*, i8** %in, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %34 to i32
  %and30 = and i32 %conv29, 63
  %idxprom31 = sext i32 %and30 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %32, i64 %idxprom31
  %35 = load i8, i8* %arrayidx32, align 1
  %36 = load i8*, i8** %pos, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr33, i8** %pos, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %in, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %add.ptr34, i8** %in, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %38 = load i8*, i8** %end, align 8
  %39 = load i8*, i8** %in, align 8
  %sub.ptr.lhs.cast35 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast36 = ptrtoint i8* %39 to i64
  %sub.ptr.sub37 = sub i64 %sub.ptr.lhs.cast35, %sub.ptr.rhs.cast36
  %tobool = icmp ne i64 %sub.ptr.sub37, 0
  br i1 %tobool, label %if.then38, label %if.end79

if.then38:                                        ; preds = %while.end
  %40 = load i8*, i8** %base_table.addr, align 8
  %41 = load i8*, i8** %in, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %41, i64 0
  %42 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %42 to i32
  %shr41 = ashr i32 %conv40, 2
  %idxprom42 = sext i32 %shr41 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %40, i64 %idxprom42
  %43 = load i8, i8* %arrayidx43, align 1
  %44 = load i8*, i8** %pos, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr44, i8** %pos, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i8*, i8** %end, align 8
  %46 = load i8*, i8** %in, align 8
  %sub.ptr.lhs.cast45 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast46 = ptrtoint i8* %46 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %cmp48 = icmp eq i64 %sub.ptr.sub47, 1
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.then38
  %47 = load i8*, i8** %base_table.addr, align 8
  %48 = load i8*, i8** %in, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %49 to i32
  %and53 = and i32 %conv52, 3
  %shl54 = shl i32 %and53, 4
  %idxprom55 = sext i32 %shl54 to i64
  %arrayidx56 = getelementptr inbounds i8, i8* %47, i64 %idxprom55
  %50 = load i8, i8* %arrayidx56, align 1
  %51 = load i8*, i8** %pos, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr57, i8** %pos, align 8
  store i8 %50, i8* %51, align 1
  %52 = load i8*, i8** %pos, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr58, i8** %pos, align 8
  store i8 61, i8* %52, align 1
  br label %if.end77

if.else:                                          ; preds = %if.then38
  %53 = load i8*, i8** %base_table.addr, align 8
  %54 = load i8*, i8** %in, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx59, align 1
  %conv60 = zext i8 %55 to i32
  %and61 = and i32 %conv60, 3
  %shl62 = shl i32 %and61, 4
  %56 = load i8*, i8** %in, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %57 to i32
  %shr65 = ashr i32 %conv64, 4
  %or66 = or i32 %shl62, %shr65
  %idxprom67 = sext i32 %or66 to i64
  %arrayidx68 = getelementptr inbounds i8, i8* %53, i64 %idxprom67
  %58 = load i8, i8* %arrayidx68, align 1
  %59 = load i8*, i8** %pos, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr69, i8** %pos, align 8
  store i8 %58, i8* %59, align 1
  %60 = load i8*, i8** %base_table.addr, align 8
  %61 = load i8*, i8** %in, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %61, i64 1
  %62 = load i8, i8* %arrayidx70, align 1
  %conv71 = zext i8 %62 to i32
  %and72 = and i32 %conv71, 15
  %shl73 = shl i32 %and72, 2
  %idxprom74 = sext i32 %shl73 to i64
  %arrayidx75 = getelementptr inbounds i8, i8* %60, i64 %idxprom74
  %63 = load i8, i8* %arrayidx75, align 1
  %64 = load i8*, i8** %pos, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr76, i8** %pos, align 8
  store i8 %63, i8* %64, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then50
  %65 = load i8*, i8** %pos, align 8
  %incdec.ptr78 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr78, i8** %pos, align 8
  store i8 61, i8* %65, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.end77, %while.end
  %66 = load i8*, i8** %pos, align 8
  store i8 0, i8* %66, align 1
  %67 = load i64*, i64** %out_len.addr, align 8
  %tobool80 = icmp ne i64* %67, null
  br i1 %tobool80, label %if.then81, label %if.end85

if.then81:                                        ; preds = %if.end79
  %68 = load i8*, i8** %pos, align 8
  %69 = load i8*, i8** %out.addr, align 8
  %sub.ptr.lhs.cast82 = ptrtoint i8* %68 to i64
  %sub.ptr.rhs.cast83 = ptrtoint i8* %69 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %70 = load i64*, i64** %out_len.addr, align 8
  store i64 %sub.ptr.sub84, i64* %70, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end79
  %71 = load i8*, i8** %out.addr, align 8
  store i8* %71, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end85, %if.then5, %if.then2, %if.then
  %72 = load i8*, i8** %retval, align 8
  ret i8* %72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base64_encode(i8* noundef %src, i64 noundef %len, i8* noundef %out, i64 noundef %out_capacity, i64* noundef %out_len) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %out.addr = alloca i8*, align 8
  %out_capacity.addr = alloca i64, align 8
  %out_len.addr = alloca i64*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %out_capacity, i64* %out_capacity.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %2 = load i8*, i8** %out.addr, align 8
  %3 = load i64, i64* %out_capacity.addr, align 8
  %4 = load i64*, i64** %out_len.addr, align 8
  %call = call i8* @base_encode(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i64* noundef %4, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @base64_table, i64 0, i64 0))
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base62_encode(i8* noundef %src, i64 noundef %len, i8* noundef %out, i64 noundef %out_capacity, i64* noundef %out_len) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %out.addr = alloca i8*, align 8
  %out_capacity.addr = alloca i64, align 8
  %out_len.addr = alloca i64*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %out_capacity, i64* %out_capacity.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %len.addr, align 8
  %2 = load i8*, i8** %out.addr, align 8
  %3 = load i64, i64* %out_capacity.addr, align 8
  %4 = load i64*, i64** %out_len.addr, align 8
  %call = call i8* @base_encode(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i64* noundef %4, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @base62_table, i64 0, i64 0))
  ret i8* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base64_decode(i8* noundef %src, i64 noundef %len, i8* noundef %out, i64 noundef %out_capacity, i64* noundef %out_size) #0 {
entry:
  %retval = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %out.addr = alloca i8*, align 8
  %out_capacity.addr = alloca i64, align 8
  %out_size.addr = alloca i64*, align 8
  %dtable = alloca [256 x i8], align 16
  %pos = alloca i8*, align 8
  %block = alloca [4 x i8], align 1
  %tmp = alloca i8, align 1
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %olen = alloca i64, align 8
  %pad = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i64 %out_capacity, i64* %out_capacity.addr, align 8
  store i64* %out_size, i64** %out_size.addr, align 8
  store i32 0, i32* %pad, align 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %dtable, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 -128, i64 256, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %conv = trunc i64 %1 to i8
  %2 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [65 x i8], [65 x i8]* @base64_table, i64 0, i64 %2
  %3 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* %dtable, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx1, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* %dtable, i64 0, i64 61
  store i8 0, i8* %arrayidx2, align 1
  store i64 0, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %len.addr, align 8
  %cmp4 = icmp ult i64 %5, %6
  br i1 %cmp4, label %for.body6, label %for.end16

for.body6:                                        ; preds = %for.cond3
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx7, align 1
  %idxprom8 = zext i8 %9 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* %dtable, i64 0, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp ne i32 %conv10, 128
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %11 = load i64, i64* %count, align 8
  %inc13 = add i64 %11, 1
  store i64 %inc13, i64* %count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc14

for.inc14:                                        ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %inc15 = add i64 %12, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond3, !llvm.loop !7

for.end16:                                        ; preds = %for.cond3
  %13 = load i64, i64* %count, align 8
  %cmp17 = icmp eq i64 %13, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end16
  %14 = load i64, i64* %count, align 8
  %rem = urem i64 %14, 4
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false, %for.end16
  store i8* null, i8** %retval, align 8
  br label %return

if.end20:                                         ; preds = %lor.lhs.false
  %15 = load i64, i64* %count, align 8
  %div = udiv i64 %15, 4
  %mul = mul i64 %div, 3
  store i64 %mul, i64* %olen, align 8
  %16 = load i64, i64* %out_capacity.addr, align 8
  %17 = load i64, i64* %olen, align 8
  %cmp21 = icmp ult i64 %16, %17
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store i8* null, i8** %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end20
  %18 = load i8*, i8** %out.addr, align 8
  store i8* %18, i8** %pos, align 8
  %19 = load i8*, i8** %out.addr, align 8
  %cmp25 = icmp eq i8* %19, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i8* null, i8** %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.end24
  store i64 0, i64* %count, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc110, %if.end28
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %len.addr, align 8
  %cmp30 = icmp ult i64 %20, %21
  br i1 %cmp30, label %for.body32, label %for.end112

for.body32:                                       ; preds = %for.cond29
  %22 = load i8*, i8** %src.addr, align 8
  %23 = load i64, i64* %i, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = load i8, i8* %arrayidx33, align 1
  %idxprom34 = zext i8 %24 to i64
  %arrayidx35 = getelementptr inbounds [256 x i8], [256 x i8]* %dtable, i64 0, i64 %idxprom34
  %25 = load i8, i8* %arrayidx35, align 1
  store i8 %25, i8* %tmp, align 1
  %26 = load i8, i8* %tmp, align 1
  %conv36 = zext i8 %26 to i32
  %cmp37 = icmp eq i32 %conv36, 128
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body32
  br label %for.inc110

if.end40:                                         ; preds = %for.body32
  %27 = load i8*, i8** %src.addr, align 8
  %28 = load i64, i64* %i, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %27, i64 %28
  %29 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %29 to i32
  %cmp43 = icmp eq i32 %conv42, 61
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end40
  %30 = load i32, i32* %pad, align 4
  %inc46 = add nsw i32 %30, 1
  store i32 %inc46, i32* %pad, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end40
  %31 = load i8, i8* %tmp, align 1
  %32 = load i64, i64* %count, align 8
  %arrayidx48 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 %32
  store i8 %31, i8* %arrayidx48, align 1
  %33 = load i64, i64* %count, align 8
  %inc49 = add i64 %33, 1
  store i64 %inc49, i64* %count, align 8
  %34 = load i64, i64* %count, align 8
  %cmp50 = icmp eq i64 %34, 4
  br i1 %cmp50, label %if.then52, label %if.end109

if.then52:                                        ; preds = %if.end47
  %arrayidx53 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 0
  %35 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %35 to i32
  %shl = shl i32 %conv54, 2
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 1
  %36 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %36 to i32
  %shr = ashr i32 %conv56, 4
  %or = or i32 %shl, %shr
  %conv57 = trunc i32 %or to i8
  %37 = load i8*, i8** %pos, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %pos, align 8
  store i8 %conv57, i8* %37, align 1
  %38 = load i8*, i8** %pos, align 8
  %39 = load i8*, i8** %out.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %40 = load i64, i64* %out_capacity.addr, align 8
  %cmp58 = icmp ult i64 %sub.ptr.sub, %40
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %if.then52
  br label %if.end61

if.else:                                          ; preds = %if.then52
  call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 noundef 147, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.base64_decode, i64 0, i64 0)) #7
  unreachable

if.end61:                                         ; preds = %if.then60
  %arrayidx62 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 1
  %41 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %41 to i32
  %shl64 = shl i32 %conv63, 4
  %arrayidx65 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 2
  %42 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %42 to i32
  %shr67 = ashr i32 %conv66, 2
  %or68 = or i32 %shl64, %shr67
  %conv69 = trunc i32 %or68 to i8
  %43 = load i8*, i8** %pos, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr70, i8** %pos, align 8
  store i8 %conv69, i8* %43, align 1
  %44 = load i8*, i8** %pos, align 8
  %45 = load i8*, i8** %out.addr, align 8
  %sub.ptr.lhs.cast71 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast72 = ptrtoint i8* %45 to i64
  %sub.ptr.sub73 = sub i64 %sub.ptr.lhs.cast71, %sub.ptr.rhs.cast72
  %46 = load i64, i64* %out_capacity.addr, align 8
  %cmp74 = icmp ult i64 %sub.ptr.sub73, %46
  br i1 %cmp74, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.end61
  br label %if.end78

if.else77:                                        ; preds = %if.end61
  call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 noundef 149, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.base64_decode, i64 0, i64 0)) #7
  unreachable

if.end78:                                         ; preds = %if.then76
  %arrayidx79 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 2
  %47 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %47 to i32
  %shl81 = shl i32 %conv80, 6
  %arrayidx82 = getelementptr inbounds [4 x i8], [4 x i8]* %block, i64 0, i64 3
  %48 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %48 to i32
  %or84 = or i32 %shl81, %conv83
  %conv85 = trunc i32 %or84 to i8
  %49 = load i8*, i8** %pos, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr86, i8** %pos, align 8
  store i8 %conv85, i8* %49, align 1
  %50 = load i8*, i8** %pos, align 8
  %51 = load i8*, i8** %out.addr, align 8
  %sub.ptr.lhs.cast87 = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast88 = ptrtoint i8* %51 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %52 = load i64, i64* %out_capacity.addr, align 8
  %cmp90 = icmp ult i64 %sub.ptr.sub89, %52
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %if.end78
  br label %if.end94

if.else93:                                        ; preds = %if.end78
  call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 noundef 151, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.base64_decode, i64 0, i64 0)) #7
  unreachable

if.end94:                                         ; preds = %if.then92
  store i64 0, i64* %count, align 8
  %53 = load i32, i32* %pad, align 4
  %tobool95 = icmp ne i32 %53, 0
  br i1 %tobool95, label %if.then96, label %if.end108

if.then96:                                        ; preds = %if.end94
  %54 = load i32, i32* %pad, align 4
  %cmp97 = icmp eq i32 %54, 1
  br i1 %cmp97, label %if.then99, label %if.else101

if.then99:                                        ; preds = %if.then96
  %55 = load i8*, i8** %pos, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %incdec.ptr100, i8** %pos, align 8
  br label %if.end107

if.else101:                                       ; preds = %if.then96
  %56 = load i32, i32* %pad, align 4
  %cmp102 = icmp eq i32 %56, 2
  br i1 %cmp102, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.else101
  %57 = load i8*, i8** %pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 -2
  store i8* %add.ptr, i8** %pos, align 8
  br label %if.end106

if.else105:                                       ; preds = %if.else101
  store i8* null, i8** %retval, align 8
  br label %return

if.end106:                                        ; preds = %if.then104
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then99
  br label %for.end112

if.end108:                                        ; preds = %if.end94
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end47
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109, %if.then39
  %58 = load i64, i64* %i, align 8
  %inc111 = add i64 %58, 1
  store i64 %inc111, i64* %i, align 8
  br label %for.cond29, !llvm.loop !8

for.end112:                                       ; preds = %if.end107, %for.cond29
  %59 = load i8*, i8** %pos, align 8
  %60 = load i8*, i8** %out.addr, align 8
  %sub.ptr.lhs.cast113 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast114 = ptrtoint i8* %60 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.lhs.cast113, %sub.ptr.rhs.cast114
  %61 = load i64*, i64** %out_size.addr, align 8
  store i64 %sub.ptr.sub115, i64* %61, align 8
  %62 = load i8*, i8** %out.addr, align 8
  store i8* %62, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end112, %if.else105, %if.then27, %if.then23, %if.then19
  %63 = load i8*, i8** %retval, align 8
  ret i8* %63
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_json_rec(i8* noundef %user_data, %struct.psbt_record* noundef %rec) #0 {
entry:
  %user_data.addr = alloca i8*, align 8
  %rec.addr = alloca %struct.psbt_record*, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct.psbt_record* %rec, %struct.psbt_record** %rec.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %0 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %type = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %0, i32 0, i32 0
  %1 = load i8, i8* %type, align 8
  %2 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %scope = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %2, i32 0, i32 5
  %3 = load i32, i32* %scope, align 4
  %call2 = call i8* @psbt_type_tostr(i8 noundef zeroext %1, i32 noundef %3)
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* noundef %call2)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psbt_type_tostr(i8 noundef zeroext %type, i32 noundef %scope) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i8, align 1
  %scope.addr = alloca i32, align 4
  store i8 %type, i8* %type.addr, align 1
  store i32 %scope, i32* %scope.addr, align 4
  %0 = load i32, i32* %scope.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* %type.addr, align 1
  %conv = zext i8 %1 to i32
  %call = call i8* @psbt_global_type_tostr(i32 noundef %conv)
  store i8* %call, i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  %2 = load i8, i8* %type.addr, align 1
  %conv2 = zext i8 %2 to i32
  %call3 = call i8* @psbt_input_type_tostr(i32 noundef %conv2)
  store i8* %call3, i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  %3 = load i8, i8* %type.addr, align 1
  %conv5 = zext i8 %3 to i32
  %call6 = call i8* @psbt_output_type_tostr(i32 noundef %conv5)
  store i8* %call6, i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb4, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txid_print(i8* noundef %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 31, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_print__cli(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_rec(%struct.psbt_elem* noundef %elem) #0 {
entry:
  %elem.addr = alloca %struct.psbt_elem*, align 8
  %type_str = alloca i8*, align 8
  %rec = alloca %struct.psbt_record*, align 8
  %txelem = alloca %struct.psbt_txelem*, align 8
  %txin = alloca %struct.psbt_txin*, align 8
  %txout = alloca %struct.psbt_txout*, align 8
  %tx = alloca %struct.psbt_tx*, align 8
  store %struct.psbt_elem* %elem, %struct.psbt_elem** %elem.addr, align 8
  store i8* null, i8** %type_str, align 8
  store %struct.psbt_record* null, %struct.psbt_record** %rec, align 8
  store %struct.psbt_txelem* null, %struct.psbt_txelem** %txelem, align 8
  store %struct.psbt_txin* null, %struct.psbt_txin** %txin, align 8
  store %struct.psbt_txout* null, %struct.psbt_txout** %txout, align 8
  store %struct.psbt_tx* null, %struct.psbt_tx** %tx, align 8
  %0 = load %struct.psbt_elem*, %struct.psbt_elem** %elem.addr, align 8
  %type = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %0, i32 0, i32 0
  %1 = load i32, i32* %type, align 8
  switch i32 %1, label %sw.epilog43 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.psbt_elem*, %struct.psbt_elem** %elem.addr, align 8
  %elem1 = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %2, i32 0, i32 3
  %rec2 = bitcast %union.anon* %elem1 to %struct.psbt_record**
  %3 = load %struct.psbt_record*, %struct.psbt_record** %rec2, align 8
  store %struct.psbt_record* %3, %struct.psbt_record** %rec, align 8
  %4 = load %struct.psbt_record*, %struct.psbt_record** %rec, align 8
  %type3 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %4, i32 0, i32 0
  %5 = load i8, i8* %type3, align 8
  %6 = load %struct.psbt_record*, %struct.psbt_record** %rec, align 8
  %scope = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %6, i32 0, i32 5
  %7 = load i32, i32* %scope, align 4
  %call = call i8* @psbt_type_tostr(i8 noundef zeroext %5, i32 noundef %7)
  store i8* %call, i8** %type_str, align 8
  %8 = load i8*, i8** %type_str, align 8
  %9 = load %struct.psbt_elem*, %struct.psbt_elem** %elem.addr, align 8
  %index = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %9, i32 0, i32 2
  %10 = load i32, i32* %index, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* noundef %8, i32 noundef %10)
  %11 = load %struct.psbt_record*, %struct.psbt_record** %rec, align 8
  %key_size = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %11, i32 0, i32 2
  %12 = load i32, i32* %key_size, align 8
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %13 = load %struct.psbt_record*, %struct.psbt_record** %rec, align 8
  %key = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %13, i32 0, i32 1
  %14 = load i8*, i8** %key, align 8
  %15 = load %struct.psbt_record*, %struct.psbt_record** %rec, align 8
  %key_size5 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %15, i32 0, i32 2
  %16 = load i32, i32* %key_size5, align 8
  %conv = zext i32 %16 to i64
  call void @hex_print__cli(i8* noundef %14, i64 noundef %conv)
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %17 = load %struct.psbt_record*, %struct.psbt_record** %rec, align 8
  %val = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %17, i32 0, i32 3
  %18 = load i8*, i8** %val, align 8
  %19 = load %struct.psbt_record*, %struct.psbt_record** %rec, align 8
  %val_size = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %19, i32 0, i32 4
  %20 = load i32, i32* %val_size, align 8
  %conv7 = zext i32 %20 to i64
  call void @hex_print__cli(i8* noundef %18, i64 noundef %conv7)
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %sw.epilog43

sw.bb9:                                           ; preds = %entry
  %21 = load %struct.psbt_elem*, %struct.psbt_elem** %elem.addr, align 8
  %elem10 = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %21, i32 0, i32 3
  %txelem11 = bitcast %union.anon* %elem10 to %struct.psbt_txelem**
  %22 = load %struct.psbt_txelem*, %struct.psbt_txelem** %txelem11, align 8
  store %struct.psbt_txelem* %22, %struct.psbt_txelem** %txelem, align 8
  %23 = load %struct.psbt_txelem*, %struct.psbt_txelem** %txelem, align 8
  %elem_type = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %23, i32 0, i32 0
  %24 = load i32, i32* %elem_type, align 8
  %call12 = call i8* @psbt_txelem_type_tostr(i32 noundef %24)
  store i8* %call12, i8** %type_str, align 8
  %25 = load i8*, i8** %type_str, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %25)
  %26 = load %struct.psbt_txelem*, %struct.psbt_txelem** %txelem, align 8
  %elem_type14 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %26, i32 0, i32 0
  %27 = load i32, i32* %elem_type14, align 8
  switch i32 %27, label %sw.default [
    i32 0, label %sw.bb15
    i32 1, label %sw.bb27
    i32 2, label %sw.bb39
  ]

sw.bb15:                                          ; preds = %sw.bb9
  %28 = load %struct.psbt_txelem*, %struct.psbt_txelem** %txelem, align 8
  %elem16 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %28, i32 0, i32 2
  %txin17 = bitcast %union.anon.0* %elem16 to %struct.psbt_txin**
  %29 = load %struct.psbt_txin*, %struct.psbt_txin** %txin17, align 8
  store %struct.psbt_txin* %29, %struct.psbt_txin** %txin, align 8
  %30 = load %struct.psbt_txin*, %struct.psbt_txin** %txin, align 8
  %txid = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %30, i32 0, i32 0
  %31 = load i8*, i8** %txid, align 8
  call void @txid_print(i8* noundef %31)
  %32 = load %struct.psbt_txin*, %struct.psbt_txin** %txin, align 8
  %index18 = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %32, i32 0, i32 1
  %33 = load i32, i32* %index18, align 8
  %call19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 noundef %33)
  %34 = load %struct.psbt_txin*, %struct.psbt_txin** %txin, align 8
  %sequence_number = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %34, i32 0, i32 4
  %35 = load i32, i32* %sequence_number, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef %35)
  %36 = load %struct.psbt_txin*, %struct.psbt_txin** %txin, align 8
  %script_len = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %36, i32 0, i32 3
  %37 = load i32, i32* %script_len, align 8
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then21, label %if.end25

if.then21:                                        ; preds = %sw.bb15
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %38 = load %struct.psbt_txin*, %struct.psbt_txin** %txin, align 8
  %script = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %38, i32 0, i32 2
  %39 = load i8*, i8** %script, align 8
  %40 = load %struct.psbt_txin*, %struct.psbt_txin** %txin, align 8
  %script_len23 = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %40, i32 0, i32 3
  %41 = load i32, i32* %script_len23, align 8
  %conv24 = zext i32 %41 to i64
  call void @hex_print__cli(i8* noundef %39, i64 noundef %conv24)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %sw.bb15
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %sw.epilog

sw.bb27:                                          ; preds = %sw.bb9
  %42 = load %struct.psbt_txelem*, %struct.psbt_txelem** %txelem, align 8
  %elem28 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %42, i32 0, i32 2
  %txout29 = bitcast %union.anon.0* %elem28 to %struct.psbt_txout**
  %43 = load %struct.psbt_txout*, %struct.psbt_txout** %txout29, align 8
  store %struct.psbt_txout* %43, %struct.psbt_txout** %txout, align 8
  %44 = load %struct.psbt_txout*, %struct.psbt_txout** %txout, align 8
  %script_len30 = getelementptr inbounds %struct.psbt_txout, %struct.psbt_txout* %44, i32 0, i32 2
  %45 = load i32, i32* %script_len30, align 8
  %tobool31 = icmp ne i32 %45, 0
  br i1 %tobool31, label %if.then32, label %if.end37

if.then32:                                        ; preds = %sw.bb27
  %46 = load %struct.psbt_txout*, %struct.psbt_txout** %txout, align 8
  %script33 = getelementptr inbounds %struct.psbt_txout, %struct.psbt_txout* %46, i32 0, i32 1
  %47 = load i8*, i8** %script33, align 8
  %48 = load %struct.psbt_txout*, %struct.psbt_txout** %txout, align 8
  %script_len34 = getelementptr inbounds %struct.psbt_txout, %struct.psbt_txout* %48, i32 0, i32 2
  %49 = load i32, i32* %script_len34, align 8
  %conv35 = zext i32 %49 to i64
  call void @hex_print__cli(i8* noundef %47, i64 noundef %conv35)
  %call36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %sw.bb27
  %50 = load %struct.psbt_txout*, %struct.psbt_txout** %txout, align 8
  %amount = getelementptr inbounds %struct.psbt_txout, %struct.psbt_txout* %50, i32 0, i32 0
  %51 = load i64, i64* %amount, align 8
  %call38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 noundef %51)
  br label %sw.epilog

sw.bb39:                                          ; preds = %sw.bb9
  %52 = load %struct.psbt_txelem*, %struct.psbt_txelem** %txelem, align 8
  %elem40 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %52, i32 0, i32 2
  %tx41 = bitcast %union.anon.0* %elem40 to %struct.psbt_tx**
  %53 = load %struct.psbt_tx*, %struct.psbt_tx** %tx41, align 8
  store %struct.psbt_tx* %53, %struct.psbt_tx** %tx, align 8
  %54 = load %struct.psbt_tx*, %struct.psbt_tx** %tx, align 8
  %version = getelementptr inbounds %struct.psbt_tx, %struct.psbt_tx* %54, i32 0, i32 0
  %55 = load i32, i32* %version, align 4
  %56 = load %struct.psbt_tx*, %struct.psbt_tx** %tx, align 8
  %lock_time = getelementptr inbounds %struct.psbt_tx, %struct.psbt_tx* %56, i32 0, i32 1
  %57 = load i32, i32* %lock_time, align 4
  %call42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 noundef %55, i32 noundef %57)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb39, %if.end37, %if.end25
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %sw.epilog, %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psbt_txelem_type_tostr(i32 noundef %txelem_type) #0 {
entry:
  %retval = alloca i8*, align 8
  %txelem_type.addr = alloca i32, align 4
  store i32 %txelem_type, i32* %txelem_type.addr, align 4
  %0 = load i32, i32* %txelem_type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
    i32 3, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usage() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %psbt = alloca %struct.psbt, align 8
  %res = alloca i32, align 4
  %psbt_len = alloca i64, align 8
  %out_len = alloca i64, align 8
  %psbt_hex_len = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @usage()
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i64 @strlen(i8* noundef %2) #8
  store i64 %call1, i64* %psbt_hex_len, align 8
  %call2 = call i32 @psbt_init(%struct.psbt* noundef %psbt, i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @main.buffer, i64 0, i64 0), i64 noundef 4096)
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx3, align 8
  %5 = load i64, i64* %psbt_hex_len, align 8
  %call4 = call i32 @psbt_decode(i8* noundef %4, i64 noundef %5, i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @main.buffer, i64 0, i64 0), i64 noundef 4096, i64* noundef %psbt_len)
  store i32 %call4, i32* %res, align 4
  %6 = load i32, i32* %res, align 4
  %cmp5 = icmp ne i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %7 = load i32, i32* %res, align 4
  %8 = load i8*, i8** @psbt_errmsg, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %psbt, i32 0, i32 0
  %9 = load i32, i32* %state, align 8
  %call7 = call i8* @psbt_state_tostr(i32 noundef %9)
  %call8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 noundef %7, i8* noundef %8, i8* noundef %call7)
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %10 = load i64, i64* %psbt_len, align 8
  %call10 = call i32 @psbt_read(i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @main.buffer, i64 0, i64 0), i64 noundef %10, %struct.psbt* noundef %psbt, void (%struct.psbt_elem*)* noundef @print_rec, i8* noundef null)
  store i32 %call10, i32* %res, align 4
  %11 = load i32, i32* %res, align 4
  %cmp11 = icmp ne i32 %11, 0
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end9
  %12 = load i32, i32* %res, align 4
  %13 = load i8*, i8** @psbt_errmsg, align 8
  %state13 = getelementptr inbounds %struct.psbt, %struct.psbt* %psbt, i32 0, i32 0
  %14 = load i32, i32* %state13, align 8
  %call14 = call i8* @psbt_state_tostr(i32 noundef %14)
  %call15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 noundef %12, i8* noundef %13, i8* noundef %call14)
  store i32 1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end9
  %call17 = call i32 @psbt_encode(%struct.psbt* noundef %psbt, i32 noundef 2, i8* noundef getelementptr inbounds ([4096 x i8], [4096 x i8]* @main.buffer, i64 0, i64 0), i64 noundef 4096, i64* noundef %out_len)
  store i32 %call17, i32* %res, align 4
  %15 = load i32, i32* %res, align 4
  %cmp18 = icmp ne i32 %15, 0
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end16
  %16 = load i32, i32* %res, align 4
  %17 = load i8*, i8** @psbt_errmsg, align 8
  %state20 = getelementptr inbounds %struct.psbt, %struct.psbt* %psbt, i32 0, i32 0
  %18 = load i32, i32* %state20, align 8
  %call21 = call i8* @psbt_state_tostr(i32 noundef %18)
  %call22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 noundef %16, i8* noundef %17, i8* noundef %call21)
  store i32 1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then19, %if.then12, %if.then6, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_init(%struct.psbt* noundef %tx, i8* noundef %dest, i64 noundef %dest_size) #0 {
entry:
  %tx.addr = alloca %struct.psbt*, align 8
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  %0 = load i8*, i8** %dest.addr, align 8
  %1 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos = getelementptr inbounds %struct.psbt, %struct.psbt* %1, i32 0, i32 2
  store i8* %0, i8** %write_pos, align 8
  %2 = load i8*, i8** %dest.addr, align 8
  %3 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %3, i32 0, i32 1
  store i8* %2, i8** %data, align 8
  %4 = load i64, i64* %dest_size.addr, align 8
  %5 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity = getelementptr inbounds %struct.psbt, %struct.psbt* %5, i32 0, i32 3
  store i64 %4, i64* %data_capacity, align 8
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 0
  store i32 2, i32* %state, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_decode(i8* noundef %src, i64 noundef %src_size, i8* noundef %dest, i64 noundef %dest_size, i64* noundef %psbt_size) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %psbt_size.addr = alloca i64*, align 8
  %res = alloca i32, align 4
  %b64_magic_size = alloca i64, align 8
  %c = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i64* %psbt_size, i64** %psbt_size.addr, align 8
  store i64 5, i64* %b64_magic_size, align 8
  %0 = load i64, i64* %src_size.addr, align 8
  %1 = load i64, i64* %b64_magic_size, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i64, i64* %b64_magic_size, align 8
  %call = call i32 @memcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i64 noundef %3) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %src.addr, align 8
  %5 = load i64, i64* %src_size.addr, align 8
  %6 = load i8*, i8** %dest.addr, align 8
  %7 = load i64, i64* %dest_size.addr, align 8
  %8 = load i64*, i64** %psbt_size.addr, align 8
  %call3 = call i8* @base64_decode(i8* noundef %4, i64 noundef %5, i8* noundef %6, i64 noundef %7, i64* noundef %8)
  store i8* %call3, i8** %c, align 8
  %9 = load i8*, i8** %c, align 8
  %cmp4 = icmp eq i8* %9, null
  %10 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 2, i32 0
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load i64, i64* %src_size.addr, align 8
  %div = udiv i64 %11, 2
  %12 = load i64*, i64** %psbt_size.addr, align 8
  store i64 %div, i64* %12, align 8
  %13 = load i8*, i8** %src.addr, align 8
  %14 = load i64, i64* %src_size.addr, align 8
  %15 = load i8*, i8** %dest.addr, align 8
  %16 = load i64, i64* %dest_size.addr, align 8
  %call6 = call i32 @psbt_hex_decode(i8* noundef %13, i64 noundef %14, i8* noundef %15, i64 noundef %16)
  store i32 %call6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then2, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psbt_state_tostr(i32 noundef %state) #0 {
entry:
  %retval = alloca i8*, align 8
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  %0 = load i32, i32* %state.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
    i32 8, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_read(i8* noundef %src, i64 noundef %src_size, %struct.psbt* noundef %tx, void (%struct.psbt_elem*)* noundef %elem_handler, i8* noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  %tx.addr = alloca %struct.psbt*, align 8
  %elem_handler.addr = alloca void (%struct.psbt_elem*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %rec = alloca %struct.psbt_record, align 8
  %res = alloca i32, align 4
  %elem = alloca %struct.psbt_elem, align 8
  %kvs = alloca i32, align 4
  %end = alloca i8*, align 8
  %counter = alloca %struct.psbt_tx_counter, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  store void (%struct.psbt_elem*)* %elem_handler, void (%struct.psbt_elem*)** %elem_handler.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %type = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %elem, i32 0, i32 0
  store i32 0, i32* %type, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %user_data1 = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %elem, i32 0, i32 1
  store i8* %0, i8** %user_data1, align 8
  store i32 0, i32* %kvs, align 4
  %inputs = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %counter, i32 0, i32 0
  store i32 0, i32* %inputs, align 8
  %outputs = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %counter, i32 0, i32 1
  store i32 0, i32* %outputs, align 4
  %user_data2 = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %counter, i32 0, i32 2
  %1 = load i8*, i8** %user_data.addr, align 8
  store i8* %1, i8** %user_data2, align 8
  %handler = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %counter, i32 0, i32 3
  %2 = load void (%struct.psbt_elem*)*, void (%struct.psbt_elem*)** %elem_handler.addr, align 8
  store void (%struct.psbt_elem*)* %2, void (%struct.psbt_elem*)** %handler, align 8
  %3 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %3, i32 0, i32 0
  %4 = load i32, i32* %state, align 8
  %cmp = icmp ne i32 %4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.69, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %src_size.addr, align 8
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 3
  %7 = load i64, i64* %data_capacity, align 8
  %cmp3 = icmp ugt i64 %5, %7
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.70, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load i8*, i8** %src.addr, align 8
  %9 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %9, i32 0, i32 1
  %10 = load i8*, i8** %data, align 8
  %cmp6 = icmp ne i8* %8, %10
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %11 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data8 = getelementptr inbounds %struct.psbt, %struct.psbt* %11, i32 0, i32 1
  %12 = load i8*, i8** %data8, align 8
  %13 = load i8*, i8** %src.addr, align 8
  %14 = load i64, i64* %src_size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 %14, i1 false)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %15 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state10 = getelementptr inbounds %struct.psbt, %struct.psbt* %15, i32 0, i32 0
  store i32 2, i32* %state10, align 8
  %16 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data11 = getelementptr inbounds %struct.psbt, %struct.psbt* %16, i32 0, i32 1
  %17 = load i8*, i8** %data11, align 8
  %18 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos = getelementptr inbounds %struct.psbt, %struct.psbt* %18, i32 0, i32 2
  store i8* %17, i8** %write_pos, align 8
  %19 = load i64, i64* %src_size.addr, align 8
  %20 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity12 = getelementptr inbounds %struct.psbt, %struct.psbt* %20, i32 0, i32 3
  store i64 %19, i64* %data_capacity12, align 8
  %21 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data13 = getelementptr inbounds %struct.psbt, %struct.psbt* %21, i32 0, i32 1
  %22 = load i8*, i8** %data13, align 8
  %23 = load i64, i64* %src_size.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %add.ptr, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog96, %if.end9
  %24 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state14 = getelementptr inbounds %struct.psbt, %struct.psbt* %24, i32 0, i32 0
  %25 = load i32, i32* %state14, align 8
  %cmp15 = icmp ne i32 %25, 8
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos16 = getelementptr inbounds %struct.psbt, %struct.psbt* %26, i32 0, i32 2
  %27 = load i8*, i8** %write_pos16, align 8
  %28 = load i8*, i8** %end, align 8
  %cmp17 = icmp ule i8* %27, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %30 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state18 = getelementptr inbounds %struct.psbt, %struct.psbt* %30, i32 0, i32 0
  %31 = load i32, i32* %state18, align 8
  switch i32 %31, label %sw.epilog96 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb22
    i32 4, label %sw.bb22
    i32 6, label %sw.bb22
    i32 7, label %sw.bb74
    i32 5, label %sw.bb84
    i32 8, label %sw.bb95
  ]

sw.bb:                                            ; preds = %while.body
  %32 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call = call i32 @psbt_read_header(%struct.psbt* noundef %32)
  store i32 %call, i32* %res, align 4
  %33 = load i32, i32* %res, align 4
  %cmp19 = icmp ne i32 %33, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %sw.bb
  %34 = load i32, i32* %res, align 4
  store i32 %34, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %sw.bb
  br label %sw.epilog96

sw.bb22:                                          ; preds = %while.body, %while.body, %while.body
  %35 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos23 = getelementptr inbounds %struct.psbt, %struct.psbt* %35, i32 0, i32 2
  %36 = load i8*, i8** %write_pos23, align 8
  %37 = load i8, i8* %36, align 1
  %conv = zext i8 %37 to i32
  %cmp24 = icmp eq i32 %conv, 0
  br i1 %cmp24, label %if.then26, label %if.else48

if.then26:                                        ; preds = %sw.bb22
  %38 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state27 = getelementptr inbounds %struct.psbt, %struct.psbt* %38, i32 0, i32 0
  %39 = load i32, i32* %state27, align 8
  switch i32 %39, label %sw.default [
    i32 3, label %sw.bb28
    i32 4, label %sw.bb30
    i32 6, label %sw.bb38
  ]

sw.bb28:                                          ; preds = %if.then26
  %40 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state29 = getelementptr inbounds %struct.psbt, %struct.psbt* %40, i32 0, i32 0
  store i32 5, i32* %state29, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.then26
  %41 = load i32, i32* %kvs, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %kvs, align 4
  %inputs31 = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %counter, i32 0, i32 0
  %42 = load i32, i32* %inputs31, align 8
  %cmp32 = icmp sge i32 %inc, %42
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %sw.bb30
  %43 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state35 = getelementptr inbounds %struct.psbt, %struct.psbt* %43, i32 0, i32 0
  store i32 7, i32* %state35, align 8
  store i32 0, i32* %kvs, align 4
  br label %if.end37

if.else:                                          ; preds = %sw.bb30
  %44 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state36 = getelementptr inbounds %struct.psbt, %struct.psbt* %44, i32 0, i32 0
  store i32 5, i32* %state36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then34
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.then26
  %45 = load i32, i32* %kvs, align 4
  %inc39 = add nsw i32 %45, 1
  store i32 %inc39, i32* %kvs, align 4
  %outputs40 = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %counter, i32 0, i32 1
  %46 = load i32, i32* %outputs40, align 4
  %cmp41 = icmp sge i32 %inc39, %46
  br i1 %cmp41, label %if.then43, label %if.else45

if.then43:                                        ; preds = %sw.bb38
  %47 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state44 = getelementptr inbounds %struct.psbt, %struct.psbt* %47, i32 0, i32 0
  store i32 8, i32* %state44, align 8
  br label %if.end47

if.else45:                                        ; preds = %sw.bb38
  %48 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state46 = getelementptr inbounds %struct.psbt, %struct.psbt* %48, i32 0, i32 0
  store i32 7, i32* %state46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then43
  br label %sw.epilog

sw.default:                                       ; preds = %if.then26
  call void @__assert_fail(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.62, i64 0, i64 0), i32 noundef 454, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.psbt_read, i64 0, i64 0)) #7
  unreachable

sw.epilog:                                        ; preds = %if.end47, %if.end37, %sw.bb28
  br label %if.end73

if.else48:                                        ; preds = %sw.bb22
  %49 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %50 = load i64, i64* %src_size.addr, align 8
  %call49 = call i32 @psbt_read_record(%struct.psbt* noundef %49, i64 noundef %50, %struct.psbt_record* noundef %rec)
  store i32 %call49, i32* %res, align 4
  %51 = load i32, i32* %res, align 4
  %cmp50 = icmp ne i32 %51, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.else48
  %52 = load i32, i32* %res, align 4
  store i32 %52, i32* %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.else48
  %53 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state54 = getelementptr inbounds %struct.psbt, %struct.psbt* %53, i32 0, i32 0
  %54 = load i32, i32* %state54, align 8
  %cmp55 = icmp eq i32 %54, 3
  br i1 %cmp55, label %land.lhs.true, label %if.end67

land.lhs.true:                                    ; preds = %if.end53
  %type57 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %rec, i32 0, i32 0
  %55 = load i8, i8* %type57, align 8
  %conv58 = zext i8 %55 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %if.then61, label %if.end67

if.then61:                                        ; preds = %land.lhs.true
  %val = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %rec, i32 0, i32 3
  %56 = load i8*, i8** %val, align 8
  %val_size = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %rec, i32 0, i32 4
  %57 = load i32, i32* %val_size, align 8
  %58 = bitcast %struct.psbt_tx_counter* %counter to i8*
  %call62 = call i32 @psbt_btc_tx_parse(i8* noundef %56, i32 noundef %57, i8* noundef %58, void (%struct.psbt_txelem*)* noundef @tx_counter)
  store i32 %call62, i32* %res, align 4
  %59 = load i32, i32* %res, align 4
  %cmp63 = icmp ne i32 %59, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then61
  %60 = load i32, i32* %res, align 4
  store i32 %60, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.then61
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %land.lhs.true, %if.end53
  %61 = load void (%struct.psbt_elem*)*, void (%struct.psbt_elem*)** %elem_handler.addr, align 8
  %tobool = icmp ne void (%struct.psbt_elem*)* %61, null
  br i1 %tobool, label %if.then68, label %if.end72

if.then68:                                        ; preds = %if.end67
  %type69 = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %elem, i32 0, i32 0
  store i32 0, i32* %type69, align 8
  %62 = load i32, i32* %kvs, align 4
  %index = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %elem, i32 0, i32 2
  store i32 %62, i32* %index, align 8
  %elem70 = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %elem, i32 0, i32 3
  %rec71 = bitcast %union.anon* %elem70 to %struct.psbt_record**
  store %struct.psbt_record* %rec, %struct.psbt_record** %rec71, align 8
  %63 = load void (%struct.psbt_elem*)*, void (%struct.psbt_elem*)** %elem_handler.addr, align 8
  call void %63(%struct.psbt_elem* noundef %elem)
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %if.end67
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %sw.epilog
  br label %sw.epilog96

sw.bb74:                                          ; preds = %while.body
  %64 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos75 = getelementptr inbounds %struct.psbt, %struct.psbt* %64, i32 0, i32 2
  %65 = load i8*, i8** %write_pos75, align 8
  %66 = load i8, i8* %65, align 1
  %conv76 = zext i8 %66 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %sw.bb74
  br label %if.end81

if.else80:                                        ; preds = %sw.bb74
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.62, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.psbt_read, i64 0, i64 0)) #7
  unreachable

if.end81:                                         ; preds = %if.then79
  %67 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos82 = getelementptr inbounds %struct.psbt, %struct.psbt* %67, i32 0, i32 2
  %68 = load i8*, i8** %write_pos82, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr, i8** %write_pos82, align 8
  %69 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state83 = getelementptr inbounds %struct.psbt, %struct.psbt* %69, i32 0, i32 0
  store i32 6, i32* %state83, align 8
  br label %sw.epilog96

sw.bb84:                                          ; preds = %while.body
  %70 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos85 = getelementptr inbounds %struct.psbt, %struct.psbt* %70, i32 0, i32 2
  %71 = load i8*, i8** %write_pos85, align 8
  %72 = load i8, i8* %71, align 1
  %conv86 = zext i8 %72 to i32
  %cmp87 = icmp eq i32 %conv86, 0
  br i1 %cmp87, label %if.then89, label %if.else90

if.then89:                                        ; preds = %sw.bb84
  br label %if.end91

if.else90:                                        ; preds = %sw.bb84
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.62, i64 0, i64 0), i32 noundef 495, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.psbt_read, i64 0, i64 0)) #7
  unreachable

if.end91:                                         ; preds = %if.then89
  %73 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos92 = getelementptr inbounds %struct.psbt, %struct.psbt* %73, i32 0, i32 2
  %74 = load i8*, i8** %write_pos92, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr93, i8** %write_pos92, align 8
  %75 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state94 = getelementptr inbounds %struct.psbt, %struct.psbt* %75, i32 0, i32 0
  store i32 4, i32* %state94, align 8
  br label %sw.epilog96

sw.bb95:                                          ; preds = %while.body
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.62, i64 0, i64 0), i32 noundef 501, i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @__PRETTY_FUNCTION__.psbt_read, i64 0, i64 0)) #7
  unreachable

sw.epilog96:                                      ; preds = %while.body, %if.end91, %if.end81, %if.end73, %if.end21
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %land.end
  %76 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state97 = getelementptr inbounds %struct.psbt, %struct.psbt* %76, i32 0, i32 0
  %77 = load i32, i32* %state97, align 8
  %cmp98 = icmp ne i32 %77, 8
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %while.end
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.74, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.else101:                                       ; preds = %while.end
  %78 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state102 = getelementptr inbounds %struct.psbt, %struct.psbt* %78, i32 0, i32 0
  %79 = load i32, i32* %state102, align 8
  %cmp103 = icmp eq i32 %79, 8
  br i1 %cmp103, label %land.lhs.true105, label %if.end111

land.lhs.true105:                                 ; preds = %if.else101
  %80 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos106 = getelementptr inbounds %struct.psbt, %struct.psbt* %80, i32 0, i32 2
  %81 = load i8*, i8** %write_pos106, align 8
  %82 = load i8, i8* %81, align 1
  %conv107 = zext i8 %82 to i32
  %cmp108 = icmp ne i32 %conv107, 0
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %land.lhs.true105
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end111:                                        ; preds = %land.lhs.true105, %if.else101
  br label %if.end112

if.end112:                                        ; preds = %if.end111
  %83 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos113 = getelementptr inbounds %struct.psbt, %struct.psbt* %83, i32 0, i32 2
  %84 = load i8*, i8** %write_pos113, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr114, i8** %write_pos113, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end112, %if.then110, %if.then100, %if.then65, %if.then52, %if.then20, %if.then4, %if.then
  %85 = load i32, i32* %retval, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_encode(%struct.psbt* noundef %psbt, i32 noundef %encoding, i8* noundef %dest, i64 noundef %dest_size, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %psbt.addr = alloca %struct.psbt*, align 8
  %encoding.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %out_len.addr = alloca i64*, align 8
  store %struct.psbt* %psbt, %struct.psbt** %psbt.addr, align 8
  store i32 %encoding, i32* %encoding.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %psbt.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 8
  %cmp = icmp ne i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.89, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psbt*, %struct.psbt** %psbt.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %4 = load %struct.psbt*, %struct.psbt** %psbt.addr, align 8
  %call = call i64 @psbt_size(%struct.psbt* noundef %4)
  %5 = load i32, i32* %encoding.addr, align 4
  %6 = load i8*, i8** %dest.addr, align 8
  %7 = load i64, i64* %dest_size.addr, align 8
  %8 = load i64*, i64** %out_len.addr, align 8
  %call1 = call i32 @psbt_encode_raw(i8* noundef %3, i64 noundef %call, i32 noundef %5, i8* noundef %6, i64 noundef %7, i64* noundef %8)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compactsize_peek_length(i8 noundef zeroext %chsize) #0 {
entry:
  %retval = alloca i32, align 4
  %chsize.addr = alloca i8, align 1
  store i8 %chsize, i8* %chsize.addr, align 1
  %0 = load i8, i8* %chsize.addr, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 253
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %chsize.addr, align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 253
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 3, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  %2 = load i8, i8* %chsize.addr, align 1
  %conv7 = zext i8 %2 to i32
  %cmp8 = icmp eq i32 %conv7, 254
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else6
  store i32 5, i32* %retval, align 4
  br label %return

if.else11:                                        ; preds = %if.else6
  store i32 9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else11, %if.then10, %if.then5, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compactsize_length(i64 noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i64, align 8
  store i64 %data, i64* %data.addr, align 8
  %0 = load i64, i64* %data.addr, align 8
  %cmp = icmp ult i64 %0, 253
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %data.addr, align 8
  %cmp1 = icmp ule i64 %1, 65535
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 3, i32* %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load i64, i64* %data.addr, align 8
  %cmp4 = icmp ule i64 %2, 4294967295
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i32 5, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else3
  store i32 9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then2, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serialize_u8(i8* noundef %dest, i8 noundef zeroext %data) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %data.addr = alloca i8, align 1
  store i8* %dest, i8** %dest.addr, align 8
  store i8 %data, i8* %data.addr, align 1
  %0 = load i8, i8* %data.addr, align 1
  %1 = load i8*, i8** %dest.addr, align 8
  store i8 %0, i8* %1, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serialize_u16(i8* noundef %dest, i16 noundef zeroext %data) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %data.addr = alloca i16, align 2
  store i8* %dest, i8** %dest.addr, align 8
  store i16 %data, i16* %data.addr, align 2
  %0 = load i16, i16* %data.addr, align 2
  %call = call zeroext i16 @__uint16_identity(i16 noundef zeroext %0)
  store i16 %call, i16* %data.addr, align 2
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = bitcast i16* %data.addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 2 %2, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serialize_u32(i8* noundef %dest, i32 noundef %data) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %data.addr = alloca i32, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %data, i32* %data.addr, align 4
  %0 = load i32, i32* %data.addr, align 4
  %call = call i32 @__uint32_identity(i32 noundef %0)
  store i32 %call, i32* %data.addr, align 4
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = bitcast i32* %data.addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 4 %2, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serialize_u64(i8* noundef %dest, i64 noundef %data) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %data.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %data, i64* %data.addr, align 8
  %0 = load i64, i64* %data.addr, align 8
  %call = call i64 @__uint64_identity(i64 noundef %0)
  store i64 %call, i64* %data.addr, align 8
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = bitcast i64* %data.addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 8 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @deserialize_u8(i8* noundef %src) #0 {
entry:
  %src.addr = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i8, i8* %0, align 1
  ret i8 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @deserialize_u16(i8* noundef %src) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %data = alloca i16, align 2
  store i8* %src, i8** %src.addr, align 8
  %0 = bitcast i16* %data to i8*
  %1 = load i8*, i8** %src.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %0, i8* align 1 %1, i64 2, i1 false)
  %2 = load i16, i16* %data, align 2
  %call = call zeroext i16 @__uint16_identity(i16 noundef zeroext %2)
  ret i16 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deserialize_u32(i8* noundef %src) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %data = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  %0 = bitcast i32* %data to i8*
  %1 = load i8*, i8** %src.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 1 %1, i64 4, i1 false)
  %2 = load i32, i32* %data, align 4
  %call = call i32 @__uint32_identity(i32 noundef %2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @deserialize_u64(i8* noundef %src) #0 {
entry:
  %src.addr = alloca i8*, align 8
  %data = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = bitcast i64* %data to i8*
  %1 = load i8*, i8** %src.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 1 %1, i64 8, i1 false)
  %2 = load i64, i64* %data, align 8
  %call = call i64 @__uint64_identity(i64 noundef %2)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compactsize_write(i8* noundef %dest, i64 noundef %size) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, 253
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dest.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %conv = trunc i64 %2 to i8
  call void @serialize_u8(i8* noundef %1, i8 noundef zeroext %conv)
  br label %if.end12

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ule i64 %3, 65535
  br i1 %cmp1, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %4 = load i8*, i8** %dest.addr, align 8
  call void @serialize_u8(i8* noundef %4, i8 noundef zeroext -3)
  %5 = load i8*, i8** %dest.addr, align 8
  %6 = load i64, i64* %size.addr, align 8
  %conv4 = trunc i64 %6 to i16
  call void @serialize_u16(i8* noundef %5, i16 noundef zeroext %conv4)
  br label %if.end11

if.else5:                                         ; preds = %if.else
  %7 = load i64, i64* %size.addr, align 8
  %cmp6 = icmp ule i64 %7, 4294967295
  br i1 %cmp6, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %8 = load i8*, i8** %dest.addr, align 8
  call void @serialize_u8(i8* noundef %8, i8 noundef zeroext -2)
  %9 = load i8*, i8** %dest.addr, align 8
  %10 = load i64, i64* %size.addr, align 8
  %conv9 = trunc i64 %10 to i32
  call void @serialize_u32(i8* noundef %9, i32 noundef %conv9)
  br label %if.end

if.else10:                                        ; preds = %if.else5
  %11 = load i8*, i8** %dest.addr, align 8
  call void @serialize_u8(i8* noundef %11, i8 noundef zeroext -1)
  %12 = load i8*, i8** %dest.addr, align 8
  %13 = load i64, i64* %size.addr, align 8
  call void @serialize_u64(i8* noundef %12, i64 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @compactsize_read(i8* noundef %data, i32* noundef %err) #0 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %err.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  %chsize = alloca i8, align 1
  %ret_size = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32* %err, i32** %err.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %call = call zeroext i8 @deserialize_u8(i8* noundef %1)
  store i8 %call, i8* %chsize, align 1
  store i64 0, i64* %ret_size, align 8
  %2 = load i8, i8* %chsize, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp slt i32 %conv, 253
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8, i8* %chsize, align 1
  %conv2 = zext i8 %3 to i64
  store i64 %conv2, i64* %ret_size, align 8
  br label %if.end39

if.else:                                          ; preds = %entry
  %4 = load i8, i8* %chsize, align 1
  %conv3 = zext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 253
  br i1 %cmp4, label %if.then6, label %if.else14

if.then6:                                         ; preds = %if.else
  %5 = load i8*, i8** %p, align 8
  %call7 = call zeroext i16 @deserialize_u16(i8* noundef %5)
  %conv8 = zext i16 %call7 to i64
  store i64 %conv8, i64* %ret_size, align 8
  %6 = load i64, i64* %ret_size, align 8
  %cmp9 = icmp ult i64 %6, 253
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then6
  %7 = load i32*, i32** %err.addr, align 8
  %tobool = icmp ne i32* %7, null
  br i1 %tobool, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then11
  %8 = load i32*, i32** %err.addr, align 8
  store i32 1, i32* %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then11
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i64 -1, i64* %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.then6
  br label %if.end38

if.else14:                                        ; preds = %if.else
  %9 = load i8, i8* %chsize, align 1
  %conv15 = zext i8 %9 to i32
  %cmp16 = icmp eq i32 %conv15, 254
  br i1 %cmp16, label %if.then18, label %if.else28

if.then18:                                        ; preds = %if.else14
  %10 = load i8*, i8** %p, align 8
  %call19 = call i32 @deserialize_u32(i8* noundef %10)
  %conv20 = zext i32 %call19 to i64
  store i64 %conv20, i64* %ret_size, align 8
  %11 = load i64, i64* %ret_size, align 8
  %cmp21 = icmp ult i64 %11, 65536
  br i1 %cmp21, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.then18
  %12 = load i32*, i32** %err.addr, align 8
  %tobool24 = icmp ne i32* %12, null
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then23
  %13 = load i32*, i32** %err.addr, align 8
  store i32 1, i32* %13, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then23
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i64 -1, i64* %retval, align 8
  br label %return

if.end27:                                         ; preds = %if.then18
  br label %if.end37

if.else28:                                        ; preds = %if.else14
  %14 = load i8*, i8** %p, align 8
  %call29 = call i64 @deserialize_u64(i8* noundef %14)
  store i64 %call29, i64* %ret_size, align 8
  %15 = load i64, i64* %ret_size, align 8
  %cmp30 = icmp ult i64 %15, 4294967296
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.else28
  %16 = load i32*, i32** %err.addr, align 8
  %tobool33 = icmp ne i32* %16, null
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then32
  %17 = load i32*, i32** %err.addr, align 8
  store i32 1, i32* %17, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then32
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i64 -1, i64* %retval, align 8
  br label %return

if.end36:                                         ; preds = %if.else28
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end27
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end13
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then
  %18 = load i64, i64* %ret_size, align 8
  %cmp40 = icmp ugt i64 %18, 33554432
  br i1 %cmp40, label %if.then42, label %if.end46

if.then42:                                        ; preds = %if.end39
  %19 = load i32*, i32** %err.addr, align 8
  %tobool43 = icmp ne i32* %19, null
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then42
  %20 = load i32*, i32** %err.addr, align 8
  store i32 1, i32* %20, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.then42
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i64 -1, i64* %retval, align 8
  br label %return

if.end46:                                         ; preds = %if.end39
  %21 = load i64, i64* %ret_size, align 8
  store i64 %21, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end46, %if.end45, %if.end35, %if.end26, %if.end
  %22 = load i64, i64* %retval, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @psbt_size(%struct.psbt* noundef %tx) #0 {
entry:
  %tx.addr = alloca %struct.psbt*, align 8
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 2
  %1 = load i8*, i8** %write_pos, align 8
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_print__psbt(i8* noundef %data, i64 noundef %len) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbt_write_header(%struct.psbt* noundef %tx) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 2
  %1 = load i8*, i8** %write_pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity = getelementptr inbounds %struct.psbt, %struct.psbt* %4, i32 0, i32 3
  %5 = load i64, i64* %data_capacity, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 %5
  %cmp = icmp ugt i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.18, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos2 = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 2
  %7 = load i8*, i8** %write_pos2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @PSBT_MAGIC, i64 0, i64 0), i64 4, i1 false)
  %8 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos3 = getelementptr inbounds %struct.psbt, %struct.psbt* %8, i32 0, i32 2
  %9 = load i8*, i8** %write_pos3, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %9, i64 4
  store i8* %add.ptr4, i8** %write_pos3, align 8
  %10 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos5 = getelementptr inbounds %struct.psbt, %struct.psbt* %10, i32 0, i32 2
  %11 = load i8*, i8** %write_pos5, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data7 = getelementptr inbounds %struct.psbt, %struct.psbt* %12, i32 0, i32 1
  %13 = load i8*, i8** %data7, align 8
  %14 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity8 = getelementptr inbounds %struct.psbt, %struct.psbt* %14, i32 0, i32 3
  %15 = load i64, i64* %data_capacity8, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %13, i64 %15
  %cmp10 = icmp ugt i8* %add.ptr6, %add.ptr9
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.19, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %16 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos13 = getelementptr inbounds %struct.psbt, %struct.psbt* %16, i32 0, i32 2
  %17 = load i8*, i8** %write_pos13, align 8
  store i8 -1, i8* %17, align 1
  %18 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos14 = getelementptr inbounds %struct.psbt, %struct.psbt* %18, i32 0, i32 2
  %19 = load i8*, i8** %write_pos14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %write_pos14, align 8
  %20 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %20, i32 0, i32 0
  store i32 3, i32* %state, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_close_records(%struct.psbt* noundef %tx) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 2
  %1 = load i8*, i8** %write_pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity = getelementptr inbounds %struct.psbt, %struct.psbt* %4, i32 0, i32 3
  %5 = load i64, i64* %data_capacity, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 %5
  %cmp = icmp ugt i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.20, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos2 = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 2
  %7 = load i8*, i8** %write_pos2, align 8
  store i8 0, i8* %7, align 1
  %8 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos3 = getelementptr inbounds %struct.psbt, %struct.psbt* %8, i32 0, i32 2
  %9 = load i8*, i8** %write_pos3, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %write_pos3, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_finalize(%struct.psbt* noundef %tx) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %res = alloca i32, align 4
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 8
  %cmp = icmp ne i32 %1, 7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state1 = getelementptr inbounds %struct.psbt, %struct.psbt* %2, i32 0, i32 0
  %3 = load i32, i32* %state1, align 8
  %cmp2 = icmp ne i32 %3, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call = call i32 @psbt_close_records(%struct.psbt* noundef %4)
  store i32 %call, i32* %res, align 4
  %5 = load i32, i32* %res, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %res, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state6 = getelementptr inbounds %struct.psbt, %struct.psbt* %7, i32 0, i32 0
  store i32 8, i32* %state6, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbt_write_record(%struct.psbt* noundef %tx, %struct.psbt_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %rec.addr = alloca %struct.psbt_record*, align 8
  %size = alloca i32, align 4
  %key_size_with_type = alloca i32, align 4
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  store %struct.psbt_record* %rec, %struct.psbt_record** %rec.addr, align 8
  %0 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %key_size = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %0, i32 0, i32 2
  %1 = load i32, i32* %key_size, align 8
  %add = add i32 %1, 1
  store i32 %add, i32* %key_size_with_type, align 4
  %2 = load i32, i32* %key_size_with_type, align 4
  %conv = zext i32 %2 to i64
  %call = call i32 @compactsize_length(i64 noundef %conv)
  store i32 %call, i32* %size, align 4
  %3 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos = getelementptr inbounds %struct.psbt, %struct.psbt* %3, i32 0, i32 2
  %4 = load i8*, i8** %write_pos, align 8
  %5 = load i32, i32* %size, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8
  %8 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity = getelementptr inbounds %struct.psbt, %struct.psbt* %8, i32 0, i32 3
  %9 = load i64, i64* %data_capacity, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %7, i64 %9
  %cmp = icmp ugt i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.22, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos3 = getelementptr inbounds %struct.psbt, %struct.psbt* %10, i32 0, i32 2
  %11 = load i8*, i8** %write_pos3, align 8
  %12 = load i32, i32* %key_size_with_type, align 4
  %conv4 = zext i32 %12 to i64
  call void @compactsize_write(i8* noundef %11, i64 noundef %conv4)
  %13 = load i32, i32* %size, align 4
  %14 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos5 = getelementptr inbounds %struct.psbt, %struct.psbt* %14, i32 0, i32 2
  %15 = load i8*, i8** %write_pos5, align 8
  %idx.ext6 = zext i32 %13 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 %idx.ext6
  store i8* %add.ptr7, i8** %write_pos5, align 8
  %16 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos8 = getelementptr inbounds %struct.psbt, %struct.psbt* %16, i32 0, i32 2
  %17 = load i8*, i8** %write_pos8, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data10 = getelementptr inbounds %struct.psbt, %struct.psbt* %18, i32 0, i32 1
  %19 = load i8*, i8** %data10, align 8
  %20 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity11 = getelementptr inbounds %struct.psbt, %struct.psbt* %20, i32 0, i32 3
  %21 = load i64, i64* %data_capacity11, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %19, i64 %21
  %cmp13 = icmp ugt i8* %add.ptr9, %add.ptr12
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.23, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  %22 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %type = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %22, i32 0, i32 0
  %23 = load i8, i8* %type, align 8
  %24 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos17 = getelementptr inbounds %struct.psbt, %struct.psbt* %24, i32 0, i32 2
  %25 = load i8*, i8** %write_pos17, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %write_pos17, align 8
  store i8 %23, i8* %25, align 1
  %26 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos18 = getelementptr inbounds %struct.psbt, %struct.psbt* %26, i32 0, i32 2
  %27 = load i8*, i8** %write_pos18, align 8
  %28 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %key_size19 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %28, i32 0, i32 2
  %29 = load i32, i32* %key_size19, align 8
  %idx.ext20 = zext i32 %29 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %27, i64 %idx.ext20
  %30 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data22 = getelementptr inbounds %struct.psbt, %struct.psbt* %30, i32 0, i32 1
  %31 = load i8*, i8** %data22, align 8
  %32 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity23 = getelementptr inbounds %struct.psbt, %struct.psbt* %32, i32 0, i32 3
  %33 = load i64, i64* %data_capacity23, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %31, i64 %33
  %cmp25 = icmp ugt i8* %add.ptr21, %add.ptr24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end16
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.24, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end16
  %34 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos29 = getelementptr inbounds %struct.psbt, %struct.psbt* %34, i32 0, i32 2
  %35 = load i8*, i8** %write_pos29, align 8
  %36 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %key = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %36, i32 0, i32 1
  %37 = load i8*, i8** %key, align 8
  %38 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %key_size30 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %38, i32 0, i32 2
  %39 = load i32, i32* %key_size30, align 8
  %conv31 = zext i32 %39 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %37, i64 %conv31, i1 false)
  %40 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %key_size32 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %40, i32 0, i32 2
  %41 = load i32, i32* %key_size32, align 8
  %42 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos33 = getelementptr inbounds %struct.psbt, %struct.psbt* %42, i32 0, i32 2
  %43 = load i8*, i8** %write_pos33, align 8
  %idx.ext34 = zext i32 %41 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %43, i64 %idx.ext34
  store i8* %add.ptr35, i8** %write_pos33, align 8
  %44 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %val_size = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %44, i32 0, i32 4
  %45 = load i32, i32* %val_size, align 8
  %conv36 = zext i32 %45 to i64
  %call37 = call i32 @compactsize_length(i64 noundef %conv36)
  store i32 %call37, i32* %size, align 4
  %46 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos38 = getelementptr inbounds %struct.psbt, %struct.psbt* %46, i32 0, i32 2
  %47 = load i8*, i8** %write_pos38, align 8
  %48 = load i32, i32* %size, align 4
  %idx.ext39 = zext i32 %48 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %47, i64 %idx.ext39
  %49 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data41 = getelementptr inbounds %struct.psbt, %struct.psbt* %49, i32 0, i32 1
  %50 = load i8*, i8** %data41, align 8
  %51 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity42 = getelementptr inbounds %struct.psbt, %struct.psbt* %51, i32 0, i32 3
  %52 = load i64, i64* %data_capacity42, align 8
  %add.ptr43 = getelementptr inbounds i8, i8* %50, i64 %52
  %cmp44 = icmp ugt i8* %add.ptr40, %add.ptr43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end28
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.25, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end28
  %53 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos48 = getelementptr inbounds %struct.psbt, %struct.psbt* %53, i32 0, i32 2
  %54 = load i8*, i8** %write_pos48, align 8
  %55 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %val_size49 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %55, i32 0, i32 4
  %56 = load i32, i32* %val_size49, align 8
  %conv50 = zext i32 %56 to i64
  call void @compactsize_write(i8* noundef %54, i64 noundef %conv50)
  %57 = load i32, i32* %size, align 4
  %58 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos51 = getelementptr inbounds %struct.psbt, %struct.psbt* %58, i32 0, i32 2
  %59 = load i8*, i8** %write_pos51, align 8
  %idx.ext52 = zext i32 %57 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %59, i64 %idx.ext52
  store i8* %add.ptr53, i8** %write_pos51, align 8
  %60 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos54 = getelementptr inbounds %struct.psbt, %struct.psbt* %60, i32 0, i32 2
  %61 = load i8*, i8** %write_pos54, align 8
  %62 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %val_size55 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %62, i32 0, i32 4
  %63 = load i32, i32* %val_size55, align 8
  %idx.ext56 = zext i32 %63 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %61, i64 %idx.ext56
  %64 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data58 = getelementptr inbounds %struct.psbt, %struct.psbt* %64, i32 0, i32 1
  %65 = load i8*, i8** %data58, align 8
  %66 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity59 = getelementptr inbounds %struct.psbt, %struct.psbt* %66, i32 0, i32 3
  %67 = load i64, i64* %data_capacity59, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %65, i64 %67
  %cmp61 = icmp ugt i8* %add.ptr57, %add.ptr60
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end47
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.26, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.end47
  %68 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos65 = getelementptr inbounds %struct.psbt, %struct.psbt* %68, i32 0, i32 2
  %69 = load i8*, i8** %write_pos65, align 8
  %70 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %val = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %70, i32 0, i32 3
  %71 = load i8*, i8** %val, align 8
  %72 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %val_size66 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %72, i32 0, i32 4
  %73 = load i32, i32* %val_size66, align 8
  %conv67 = zext i32 %73 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %71, i64 %conv67, i1 false)
  %74 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %val_size68 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %74, i32 0, i32 4
  %75 = load i32, i32* %val_size68, align 8
  %76 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos69 = getelementptr inbounds %struct.psbt, %struct.psbt* %76, i32 0, i32 2
  %77 = load i8*, i8** %write_pos69, align 8
  %idx.ext70 = zext i32 %75 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %77, i64 %idx.ext70
  store i8* %add.ptr71, i8** %write_pos69, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then63, %if.then46, %if.then27, %if.then15, %if.then
  %78 = load i32, i32* %retval, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbt_read_header(%struct.psbt* noundef %tx) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 2
  %1 = load i8*, i8** %write_pos, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 4
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %2, i32 0, i32 1
  %3 = load i8*, i8** %data, align 8
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity = getelementptr inbounds %struct.psbt, %struct.psbt* %4, i32 0, i32 3
  %5 = load i64, i64* %data_capacity, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 %5
  %cmp = icmp ugt i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.27, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos2 = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 2
  %7 = load i8*, i8** %write_pos2, align 8
  %call = call i32 @memcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @PSBT_MAGIC, i64 0, i64 0), i64 noundef 4) #8
  %cmp3 = icmp ne i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos6 = getelementptr inbounds %struct.psbt, %struct.psbt* %8, i32 0, i32 2
  %9 = load i8*, i8** %write_pos6, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %9, i64 4
  store i8* %add.ptr7, i8** %write_pos6, align 8
  %10 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos8 = getelementptr inbounds %struct.psbt, %struct.psbt* %10, i32 0, i32 2
  %11 = load i8*, i8** %write_pos8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %write_pos8, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i32
  %cmp9 = icmp ne i32 %conv, 255
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end5
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end5
  %13 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %13, i32 0, i32 0
  store i32 3, i32* %state, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then4, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psbt_input_type_tostr(i32 noundef %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.37, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psbt_output_type_tostr(i32 noundef %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psbt_global_type_tostr(i32 noundef %type) #0 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), i8** %retval, align 8
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), i8** %retval, align 8
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %1 = load i8*, i8** %retval, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbt_read_record(%struct.psbt* noundef %tx, i64 noundef %src_size, %struct.psbt_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %src_size.addr = alloca i64, align 8
  %rec.addr = alloca %struct.psbt_record*, align 8
  %res = alloca i32, align 4
  %size = alloca i64, align 8
  %size_len = alloca i32, align 4
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  store %struct.psbt_record* %rec, %struct.psbt_record** %rec.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 2
  %1 = load i8*, i8** %write_pos, align 8
  %2 = load i8, i8* %1, align 1
  %call = call i32 @compactsize_peek_length(i8 noundef zeroext %2)
  store i32 %call, i32* %size_len, align 4
  %3 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos1 = getelementptr inbounds %struct.psbt, %struct.psbt* %3, i32 0, i32 2
  %4 = load i8*, i8** %write_pos1, align 8
  %5 = load i32, i32* %size_len, align 4
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8
  %8 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity = getelementptr inbounds %struct.psbt, %struct.psbt* %8, i32 0, i32 3
  %9 = load i64, i64* %data_capacity, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 %9
  %cmp = icmp ugt i8* %add.ptr, %add.ptr2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.60, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos3 = getelementptr inbounds %struct.psbt, %struct.psbt* %10, i32 0, i32 2
  %11 = load i8*, i8** %write_pos3, align 8
  %call4 = call i64 @compactsize_read(i8* noundef %11, i32* noundef %res)
  store i64 %call4, i64* %size, align 8
  %12 = load i64, i64* %size, align 8
  %cmp5 = icmp ugt i64 %12, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.62, i64 0, i64 0), i32 noundef 273, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.psbt_read_record, i64 0, i64 0)) #7
  unreachable

if.end7:                                          ; preds = %if.then6
  %13 = load i32, i32* %size_len, align 4
  %14 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos8 = getelementptr inbounds %struct.psbt, %struct.psbt* %14, i32 0, i32 2
  %15 = load i8*, i8** %write_pos8, align 8
  %idx.ext9 = zext i32 %13 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %15, i64 %idx.ext9
  store i8* %add.ptr10, i8** %write_pos8, align 8
  %16 = load i32, i32* %res, align 4
  %cmp11 = icmp ne i32 %16, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  %17 = load i32, i32* %res, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end7
  %18 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos14 = getelementptr inbounds %struct.psbt, %struct.psbt* %18, i32 0, i32 2
  %19 = load i8*, i8** %write_pos14, align 8
  %20 = load i64, i64* %size, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %19, i64 %20
  %21 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data16 = getelementptr inbounds %struct.psbt, %struct.psbt* %21, i32 0, i32 1
  %22 = load i8*, i8** %data16, align 8
  %23 = load i64, i64* %src_size.addr, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %22, i64 %23
  %cmp18 = icmp ugt i8* %add.ptr15, %add.ptr17
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end13
  %24 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos21 = getelementptr inbounds %struct.psbt, %struct.psbt* %24, i32 0, i32 2
  %25 = load i8*, i8** %write_pos21, align 8
  %26 = load i64, i64* %size, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %25, i64 %26
  %27 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data23 = getelementptr inbounds %struct.psbt, %struct.psbt* %27, i32 0, i32 1
  %28 = load i8*, i8** %data23, align 8
  %29 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity24 = getelementptr inbounds %struct.psbt, %struct.psbt* %29, i32 0, i32 3
  %30 = load i64, i64* %data_capacity24, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %28, i64 %30
  %cmp26 = icmp ugt i8* %add.ptr22, %add.ptr25
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end20
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.64, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end20
  %31 = load i64, i64* %size, align 8
  %sub = sub i64 %31, 1
  %conv = trunc i64 %sub to i32
  %32 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %key_size = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %32, i32 0, i32 2
  store i32 %conv, i32* %key_size, align 8
  %33 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos29 = getelementptr inbounds %struct.psbt, %struct.psbt* %33, i32 0, i32 2
  %34 = load i8*, i8** %write_pos29, align 8
  %35 = load i8, i8* %34, align 1
  %36 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %type = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %36, i32 0, i32 0
  store i8 %35, i8* %type, align 8
  %37 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos30 = getelementptr inbounds %struct.psbt, %struct.psbt* %37, i32 0, i32 2
  %38 = load i8*, i8** %write_pos30, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %key = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %39, i32 0, i32 1
  store i8* %add.ptr31, i8** %key, align 8
  %40 = load i64, i64* %size, align 8
  %41 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos32 = getelementptr inbounds %struct.psbt, %struct.psbt* %41, i32 0, i32 2
  %42 = load i8*, i8** %write_pos32, align 8
  %add.ptr33 = getelementptr inbounds i8, i8* %42, i64 %40
  store i8* %add.ptr33, i8** %write_pos32, align 8
  %43 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %43, i32 0, i32 0
  %44 = load i32, i32* %state, align 8
  switch i32 %44, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb34
    i32 6, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end28
  %45 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %scope = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %45, i32 0, i32 5
  store i32 0, i32* %scope, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end28
  %46 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %scope35 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %46, i32 0, i32 5
  store i32 1, i32* %scope35, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end28
  %47 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %scope37 = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %47, i32 0, i32 5
  store i32 2, i32* %scope37, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end28
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb34, %sw.bb
  %48 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos38 = getelementptr inbounds %struct.psbt, %struct.psbt* %48, i32 0, i32 2
  %49 = load i8*, i8** %write_pos38, align 8
  %50 = load i8, i8* %49, align 1
  %call39 = call i32 @compactsize_peek_length(i8 noundef zeroext %50)
  store i32 %call39, i32* %size_len, align 4
  %51 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos40 = getelementptr inbounds %struct.psbt, %struct.psbt* %51, i32 0, i32 2
  %52 = load i8*, i8** %write_pos40, align 8
  %53 = load i32, i32* %size_len, align 4
  %idx.ext41 = zext i32 %53 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %52, i64 %idx.ext41
  %54 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data43 = getelementptr inbounds %struct.psbt, %struct.psbt* %54, i32 0, i32 1
  %55 = load i8*, i8** %data43, align 8
  %56 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity44 = getelementptr inbounds %struct.psbt, %struct.psbt* %56, i32 0, i32 3
  %57 = load i64, i64* %data_capacity44, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %55, i64 %57
  %cmp46 = icmp ugt i8* %add.ptr42, %add.ptr45
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %sw.epilog
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.66, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end49:                                         ; preds = %sw.epilog
  %58 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos50 = getelementptr inbounds %struct.psbt, %struct.psbt* %58, i32 0, i32 2
  %59 = load i8*, i8** %write_pos50, align 8
  %call51 = call i64 @compactsize_read(i8* noundef %59, i32* noundef %res)
  store i64 %call51, i64* %size, align 8
  %60 = load i32, i32* %res, align 4
  %cmp52 = icmp ne i32 %60, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end49
  %61 = load i32, i32* %res, align 4
  store i32 %61, i32* %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end49
  %62 = load i32, i32* %size_len, align 4
  %63 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos56 = getelementptr inbounds %struct.psbt, %struct.psbt* %63, i32 0, i32 2
  %64 = load i8*, i8** %write_pos56, align 8
  %idx.ext57 = zext i32 %62 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %64, i64 %idx.ext57
  store i8* %add.ptr58, i8** %write_pos56, align 8
  %65 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos59 = getelementptr inbounds %struct.psbt, %struct.psbt* %65, i32 0, i32 2
  %66 = load i8*, i8** %write_pos59, align 8
  %67 = load i64, i64* %size, align 8
  %add.ptr60 = getelementptr inbounds i8, i8* %66, i64 %67
  %68 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data61 = getelementptr inbounds %struct.psbt, %struct.psbt* %68, i32 0, i32 1
  %69 = load i8*, i8** %data61, align 8
  %70 = load i64, i64* %src_size.addr, align 8
  %add.ptr62 = getelementptr inbounds i8, i8* %69, i64 %70
  %cmp63 = icmp ugt i8* %add.ptr60, %add.ptr62
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end55
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.end55
  %71 = load i64, i64* %size, align 8
  %conv67 = trunc i64 %71 to i32
  %72 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %val_size = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %72, i32 0, i32 4
  store i32 %conv67, i32* %val_size, align 8
  %73 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos68 = getelementptr inbounds %struct.psbt, %struct.psbt* %73, i32 0, i32 2
  %74 = load i8*, i8** %write_pos68, align 8
  %75 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %val = getelementptr inbounds %struct.psbt_record, %struct.psbt_record* %75, i32 0, i32 3
  store i8* %74, i8** %val, align 8
  %76 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos69 = getelementptr inbounds %struct.psbt, %struct.psbt* %76, i32 0, i32 2
  %77 = load i8*, i8** %write_pos69, align 8
  %78 = load i64, i64* %size, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %77, i64 %78
  %79 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data71 = getelementptr inbounds %struct.psbt, %struct.psbt* %79, i32 0, i32 1
  %80 = load i8*, i8** %data71, align 8
  %81 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data_capacity72 = getelementptr inbounds %struct.psbt, %struct.psbt* %81, i32 0, i32 3
  %82 = load i64, i64* %data_capacity72, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %80, i64 %82
  %cmp74 = icmp ugt i8* %add.ptr70, %add.ptr73
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end66
  store i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.68, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 6, i32* %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end66
  %83 = load i64, i64* %size, align 8
  %84 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %write_pos78 = getelementptr inbounds %struct.psbt, %struct.psbt* %84, i32 0, i32 2
  %85 = load i8*, i8** %write_pos78, align 8
  %add.ptr79 = getelementptr inbounds i8, i8* %85, i64 %83
  store i8* %add.ptr79, i8** %write_pos78, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end77, %if.then76, %if.then65, %if.then54, %if.then48, %sw.default, %if.then27, %if.then19, %if.then12, %if.then
  %86 = load i32, i32* %retval, align 4
  ret i32 %86
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_counter(%struct.psbt_txelem* noundef %elem) #0 {
entry:
  %elem.addr = alloca %struct.psbt_txelem*, align 8
  %psbt_elem = alloca %struct.psbt_elem, align 8
  %counter = alloca %struct.psbt_tx_counter*, align 8
  store %struct.psbt_txelem* %elem, %struct.psbt_txelem** %elem.addr, align 8
  %0 = load %struct.psbt_txelem*, %struct.psbt_txelem** %elem.addr, align 8
  %user_data = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %0, i32 0, i32 1
  %1 = load i8*, i8** %user_data, align 8
  %2 = bitcast i8* %1 to %struct.psbt_tx_counter*
  store %struct.psbt_tx_counter* %2, %struct.psbt_tx_counter** %counter, align 8
  %3 = load %struct.psbt_tx_counter*, %struct.psbt_tx_counter** %counter, align 8
  %user_data1 = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %3, i32 0, i32 2
  %4 = load i8*, i8** %user_data1, align 8
  %user_data2 = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %psbt_elem, i32 0, i32 1
  store i8* %4, i8** %user_data2, align 8
  %type = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %psbt_elem, i32 0, i32 0
  store i32 1, i32* %type, align 8
  %5 = load %struct.psbt_txelem*, %struct.psbt_txelem** %elem.addr, align 8
  %elem3 = getelementptr inbounds %struct.psbt_elem, %struct.psbt_elem* %psbt_elem, i32 0, i32 3
  %txelem = bitcast %union.anon* %elem3 to %struct.psbt_txelem**
  store %struct.psbt_txelem* %5, %struct.psbt_txelem** %txelem, align 8
  %6 = load %struct.psbt_tx_counter*, %struct.psbt_tx_counter** %counter, align 8
  %handler = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %6, i32 0, i32 3
  %7 = load void (%struct.psbt_elem*)*, void (%struct.psbt_elem*)** %handler, align 8
  %tobool = icmp ne void (%struct.psbt_elem*)* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.psbt_tx_counter*, %struct.psbt_tx_counter** %counter, align 8
  %handler4 = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %8, i32 0, i32 3
  %9 = load void (%struct.psbt_elem*)*, void (%struct.psbt_elem*)** %handler4, align 8
  call void %9(%struct.psbt_elem* noundef %psbt_elem)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.psbt_txelem*, %struct.psbt_txelem** %elem.addr, align 8
  %elem_type = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %10, i32 0, i32 0
  %11 = load i32, i32* %elem_type, align 8
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %12 = load %struct.psbt_tx_counter*, %struct.psbt_tx_counter** %counter, align 8
  %inputs = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %12, i32 0, i32 0
  %13 = load i32, i32* %inputs, align 8
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %inputs, align 8
  br label %return

sw.bb5:                                           ; preds = %if.end
  %14 = load %struct.psbt_tx_counter*, %struct.psbt_tx_counter** %counter, align 8
  %outputs = getelementptr inbounds %struct.psbt_tx_counter, %struct.psbt_tx_counter* %14, i32 0, i32 1
  %15 = load i32, i32* %outputs, align 4
  %inc6 = add nsw i32 %15, 1
  store i32 %inc6, i32* %outputs, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_btc_tx_parse(i8* noundef %data, i32 noundef %data_size, i8* noundef %user_data, void (%struct.psbt_txelem*)* noundef %handler) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %handler.addr = alloca void (%struct.psbt_txelem*)*, align 8
  %tx = alloca %struct.psbt_tx, align 4
  %res = alloca i32, align 4
  %txin = alloca %struct.psbt_txin, align 8
  %txout = alloca %struct.psbt_txout, align 8
  %txelem = alloca %struct.psbt_txelem, align 8
  %wi = alloca %struct.psbt_witness_item, align 8
  %count = alloca i64, align 8
  %flag = alloca i8, align 1
  %size_len = alloca i32, align 4
  %inputs = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %data_size, i32* %data_size.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  store void (%struct.psbt_txelem*)* %handler, void (%struct.psbt_txelem*)** %handler.addr, align 8
  store i32 0, i32* %res, align 4
  store i64 0, i64* %count, align 8
  store i8 0, i8* %flag, align 1
  store i32 0, i32* %size_len, align 4
  store i64 0, i64* %inputs, align 8
  store i64 0, i64* %i, align 8
  store i64 0, i64* %j, align 8
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %p, align 8
  %1 = load i8*, i8** %user_data.addr, align 8
  %user_data1 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 1
  store i8* %1, i8** %user_data1, align 8
  %2 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 4
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i32, i32* %data_size.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %cmp = icmp ugt i8* %add.ptr, %add.ptr2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.101, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %call = call i32 @parse_le32(i8* noundef %5)
  %version = getelementptr inbounds %struct.psbt_tx, %struct.psbt_tx* %tx, i32 0, i32 0
  store i32 %call, i32* %version, align 4
  %6 = load i8*, i8** %p, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 4
  store i8* %add.ptr3, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i32, i32* %data_size.addr, align 4
  %idx.ext5 = zext i32 %9 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %8, i64 %idx.ext5
  %cmp7 = icmp ugt i8* %add.ptr4, %add.ptr6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.102, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %call10 = call i32 @compactsize_peek_length(i8 noundef zeroext %11)
  store i32 %call10, i32* %size_len, align 4
  %12 = load i8*, i8** %p, align 8
  %13 = load i32, i32* %size_len, align 4
  %idx.ext11 = zext i32 %13 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %12, i64 %idx.ext11
  %14 = load i8*, i8** %data.addr, align 8
  %15 = load i32, i32* %data_size.addr, align 4
  %idx.ext13 = zext i32 %15 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %14, i64 %idx.ext13
  %cmp15 = icmp ugt i8* %add.ptr12, %add.ptr14
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end9
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.103, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end9
  %16 = load i8*, i8** %p, align 8
  %call18 = call i64 @compactsize_read(i8* noundef %16, i32* noundef %res)
  store i64 %call18, i64* %count, align 8
  %17 = load i32, i32* %res, align 4
  %cmp19 = icmp ne i32 %17, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %18 = load i32, i32* %res, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  %19 = load i32, i32* %size_len, align 4
  %20 = load i8*, i8** %p, align 8
  %idx.ext22 = zext i32 %19 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %20, i64 %idx.ext22
  store i8* %add.ptr23, i8** %p, align 8
  %21 = load i64, i64* %count, align 8
  store i64 %21, i64* %inputs, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %count, align 8
  %cmp24 = icmp ult i64 %22, %23
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %data.addr, align 8
  %25 = load i32, i32* %data_size.addr, align 4
  %call25 = call i32 @parse_txin(i8** noundef %p, i8* noundef %24, i32 noundef %25, %struct.psbt_txin* noundef %txin)
  store i32 %call25, i32* %res, align 4
  %26 = load i32, i32* %res, align 4
  %cmp26 = icmp ne i32 %26, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  %27 = load i32, i32* %res, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %for.body
  %elem_type = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 0
  store i32 0, i32* %elem_type, align 8
  %elem = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 2
  %txin29 = bitcast %union.anon.0* %elem to %struct.psbt_txin**
  store %struct.psbt_txin* %txin, %struct.psbt_txin** %txin29, align 8
  %28 = load void (%struct.psbt_txelem*)*, void (%struct.psbt_txelem*)** %handler.addr, align 8
  call void %28(%struct.psbt_txelem* noundef %txelem)
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %29 = load i64, i64* %i, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %30 = load i8*, i8** %p, align 8
  %add.ptr30 = getelementptr inbounds i8, i8* %30, i64 1
  %31 = load i8*, i8** %data.addr, align 8
  %32 = load i32, i32* %data_size.addr, align 4
  %idx.ext31 = zext i32 %32 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %31, i64 %idx.ext31
  %cmp33 = icmp ugt i8* %add.ptr30, %add.ptr32
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.end
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.104, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %for.end
  %33 = load i8*, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %call36 = call i32 @compactsize_peek_length(i8 noundef zeroext %34)
  store i32 %call36, i32* %size_len, align 4
  %35 = load i8*, i8** %p, align 8
  %36 = load i32, i32* %size_len, align 4
  %idx.ext37 = zext i32 %36 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %35, i64 %idx.ext37
  %37 = load i8*, i8** %data.addr, align 8
  %38 = load i32, i32* %data_size.addr, align 4
  %idx.ext39 = zext i32 %38 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %37, i64 %idx.ext39
  %cmp41 = icmp ugt i8* %add.ptr38, %add.ptr40
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end35
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.105, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end35
  %39 = load i8*, i8** %p, align 8
  %call44 = call i64 @compactsize_read(i8* noundef %39, i32* noundef %res)
  store i64 %call44, i64* %count, align 8
  %40 = load i32, i32* %res, align 4
  %cmp45 = icmp ne i32 %40, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  %41 = load i32, i32* %res, align 4
  store i32 %41, i32* %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end43
  %42 = load i32, i32* %size_len, align 4
  %43 = load i8*, i8** %p, align 8
  %idx.ext48 = zext i32 %42 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %43, i64 %idx.ext48
  store i8* %add.ptr49, i8** %p, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc60, %if.end47
  %44 = load i64, i64* %i, align 8
  %45 = load i64, i64* %count, align 8
  %cmp51 = icmp ult i64 %44, %45
  br i1 %cmp51, label %for.body52, label %for.end62

for.body52:                                       ; preds = %for.cond50
  %46 = load i8*, i8** %data.addr, align 8
  %47 = load i32, i32* %data_size.addr, align 4
  %call53 = call i32 @parse_txout(i8** noundef %p, i8* noundef %46, i32 noundef %47, %struct.psbt_txout* noundef %txout)
  store i32 %call53, i32* %res, align 4
  %48 = load i32, i32* %res, align 4
  %cmp54 = icmp ne i32 %48, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.body52
  %49 = load i32, i32* %res, align 4
  store i32 %49, i32* %retval, align 4
  br label %return

if.end56:                                         ; preds = %for.body52
  %elem_type57 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 0
  store i32 1, i32* %elem_type57, align 8
  %elem58 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 2
  %txout59 = bitcast %union.anon.0* %elem58 to %struct.psbt_txout**
  store %struct.psbt_txout* %txout, %struct.psbt_txout** %txout59, align 8
  %50 = load void (%struct.psbt_txelem*)*, void (%struct.psbt_txelem*)** %handler.addr, align 8
  call void %50(%struct.psbt_txelem* noundef %txelem)
  br label %for.inc60

for.inc60:                                        ; preds = %if.end56
  %51 = load i64, i64* %i, align 8
  %inc61 = add i64 %51, 1
  store i64 %inc61, i64* %i, align 8
  br label %for.cond50, !llvm.loop !14

for.end62:                                        ; preds = %for.cond50
  %52 = load i8, i8* %flag, align 1
  %conv = zext i8 %52 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then63, label %if.end110

if.then63:                                        ; preds = %for.end62
  store i64 0, i64* %i, align 8
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc107, %if.then63
  %53 = load i64, i64* %i, align 8
  %54 = load i64, i64* %inputs, align 8
  %cmp65 = icmp ult i64 %53, %54
  br i1 %cmp65, label %for.body67, label %for.end109

for.body67:                                       ; preds = %for.cond64
  %55 = load i8*, i8** %p, align 8
  %add.ptr68 = getelementptr inbounds i8, i8* %55, i64 1
  %56 = load i8*, i8** %data.addr, align 8
  %57 = load i32, i32* %data_size.addr, align 4
  %idx.ext69 = zext i32 %57 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %56, i64 %idx.ext69
  %cmp71 = icmp ugt i8* %add.ptr68, %add.ptr70
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.body67
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.106, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end74:                                         ; preds = %for.body67
  %58 = load i8*, i8** %p, align 8
  %59 = load i8, i8* %58, align 1
  %call75 = call i32 @compactsize_peek_length(i8 noundef zeroext %59)
  store i32 %call75, i32* %size_len, align 4
  %60 = load i8*, i8** %p, align 8
  %61 = load i32, i32* %size_len, align 4
  %idx.ext76 = zext i32 %61 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %60, i64 %idx.ext76
  %62 = load i8*, i8** %data.addr, align 8
  %63 = load i32, i32* %data_size.addr, align 4
  %idx.ext78 = zext i32 %63 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %62, i64 %idx.ext78
  %cmp80 = icmp ugt i8* %add.ptr77, %add.ptr79
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end74
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.107, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.end74
  %64 = load i8*, i8** %p, align 8
  %call84 = call i64 @compactsize_read(i8* noundef %64, i32* noundef %res)
  store i64 %call84, i64* %count, align 8
  %65 = load i32, i32* %res, align 4
  %cmp85 = icmp ne i32 %65, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end83
  %66 = load i32, i32* %res, align 4
  store i32 %66, i32* %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.end83
  %67 = load i32, i32* %size_len, align 4
  %68 = load i8*, i8** %p, align 8
  %idx.ext89 = zext i32 %67 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %68, i64 %idx.ext89
  store i8* %add.ptr90, i8** %p, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc104, %if.end88
  %69 = load i64, i64* %j, align 8
  %70 = load i64, i64* %count, align 8
  %cmp92 = icmp ult i64 %69, %70
  br i1 %cmp92, label %for.body94, label %for.end106

for.body94:                                       ; preds = %for.cond91
  %71 = load i8*, i8** %data.addr, align 8
  %72 = load i32, i32* %data_size.addr, align 4
  %call95 = call i32 @parse_witness_item(i8** noundef %p, i8* noundef %71, i32 noundef %72, %struct.psbt_witness_item* noundef %wi)
  store i32 %call95, i32* %res, align 4
  %73 = load i32, i32* %res, align 4
  %cmp96 = icmp ne i32 %73, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %for.body94
  %74 = load i32, i32* %res, align 4
  store i32 %74, i32* %retval, align 4
  br label %return

if.end99:                                         ; preds = %for.body94
  %75 = load i64, i64* %i, align 8
  %conv100 = trunc i64 %75 to i32
  %input_index = getelementptr inbounds %struct.psbt_witness_item, %struct.psbt_witness_item* %wi, i32 0, i32 0
  store i32 %conv100, i32* %input_index, align 8
  %76 = load i64, i64* %j, align 8
  %conv101 = trunc i64 %76 to i32
  %item_index = getelementptr inbounds %struct.psbt_witness_item, %struct.psbt_witness_item* %wi, i32 0, i32 1
  store i32 %conv101, i32* %item_index, align 4
  %elem_type102 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 0
  store i32 3, i32* %elem_type102, align 8
  %elem103 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 2
  %witness_item = bitcast %union.anon.0* %elem103 to %struct.psbt_witness_item**
  store %struct.psbt_witness_item* %wi, %struct.psbt_witness_item** %witness_item, align 8
  %77 = load void (%struct.psbt_txelem*)*, void (%struct.psbt_txelem*)** %handler.addr, align 8
  call void %77(%struct.psbt_txelem* noundef %txelem)
  br label %for.inc104

for.inc104:                                       ; preds = %if.end99
  %78 = load i64, i64* %j, align 8
  %inc105 = add i64 %78, 1
  store i64 %inc105, i64* %j, align 8
  br label %for.cond91, !llvm.loop !15

for.end106:                                       ; preds = %for.cond91
  br label %for.inc107

for.inc107:                                       ; preds = %for.end106
  %79 = load i64, i64* %i, align 8
  %inc108 = add i64 %79, 1
  store i64 %inc108, i64* %i, align 8
  br label %for.cond64, !llvm.loop !16

for.end109:                                       ; preds = %for.cond64
  br label %if.end110

if.end110:                                        ; preds = %for.end109, %for.end62
  %80 = load i8*, i8** %p, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %80, i64 4
  %81 = load i8*, i8** %data.addr, align 8
  %82 = load i32, i32* %data_size.addr, align 4
  %idx.ext112 = zext i32 %82 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %81, i64 %idx.ext112
  %cmp114 = icmp ugt i8* %add.ptr111, %add.ptr113
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end110
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.108, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end117:                                        ; preds = %if.end110
  %83 = load i8*, i8** %p, align 8
  %call118 = call i32 @parse_le32(i8* noundef %83)
  %lock_time = getelementptr inbounds %struct.psbt_tx, %struct.psbt_tx* %tx, i32 0, i32 1
  store i32 %call118, i32* %lock_time, align 4
  %84 = load i8*, i8** %p, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %84, i64 4
  store i8* %add.ptr119, i8** %p, align 8
  %85 = load i8*, i8** %p, align 8
  %86 = load i8*, i8** %data.addr, align 8
  %87 = load i32, i32* %data_size.addr, align 4
  %idx.ext120 = zext i32 %87 to i64
  %add.ptr121 = getelementptr inbounds i8, i8* %86, i64 %idx.ext120
  %cmp122 = icmp ne i8* %85, %add.ptr121
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end117
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.109, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end125:                                        ; preds = %if.end117
  %elem_type126 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 0
  store i32 2, i32* %elem_type126, align 8
  %elem127 = getelementptr inbounds %struct.psbt_txelem, %struct.psbt_txelem* %txelem, i32 0, i32 2
  %tx128 = bitcast %union.anon.0* %elem127 to %struct.psbt_tx**
  store %struct.psbt_tx* %tx, %struct.psbt_tx** %tx128, align 8
  %88 = load void (%struct.psbt_txelem*)*, void (%struct.psbt_txelem*)** %handler.addr, align 8
  call void %88(%struct.psbt_txelem* noundef %txelem)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end125, %if.then124, %if.then116, %if.then98, %if.then87, %if.then82, %if.then73, %if.then55, %if.then46, %if.then42, %if.then34, %if.then27, %if.then20, %if.then16, %if.then8, %if.then
  %89 = load i32, i32* %retval, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_write_global_record(%struct.psbt* noundef %tx, %struct.psbt_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %rec.addr = alloca %struct.psbt_record*, align 8
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  store %struct.psbt_record* %rec, %struct.psbt_record** %rec.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call = call i32 @psbt_write_header(%struct.psbt* noundef %2)
  %3 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state1 = getelementptr inbounds %struct.psbt, %struct.psbt* %3, i32 0, i32 0
  store i32 3, i32* %state1, align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state2 = getelementptr inbounds %struct.psbt, %struct.psbt* %4, i32 0, i32 0
  %5 = load i32, i32* %state2, align 8
  %cmp3 = icmp ne i32 %5, 3
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.76, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %7 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %call6 = call i32 @psbt_write_record(%struct.psbt* noundef %6, %struct.psbt_record* noundef %7)
  store i32 %call6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_new_input_record_set(%struct.psbt* noundef %tx) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %res = alloca i32, align 4
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state1 = getelementptr inbounds %struct.psbt, %struct.psbt* %2, i32 0, i32 0
  %3 = load i32, i32* %state1, align 8
  %cmp2 = icmp eq i32 %3, 5
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state4 = getelementptr inbounds %struct.psbt, %struct.psbt* %4, i32 0, i32 0
  %5 = load i32, i32* %state4, align 8
  %cmp5 = icmp eq i32 %5, 4
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call = call i32 @psbt_close_records(%struct.psbt* noundef %6)
  store i32 %call, i32* %res, align 4
  %7 = load i32, i32* %res, align 4
  %cmp6 = icmp ne i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %8 = load i32, i32* %res, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state8 = getelementptr inbounds %struct.psbt, %struct.psbt* %9, i32 0, i32 0
  store i32 5, i32* %state8, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false3
  %10 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state9 = getelementptr inbounds %struct.psbt, %struct.psbt* %10, i32 0, i32 0
  %11 = load i32, i32* %state9, align 8
  %cmp10 = icmp ne i32 %11, 4
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.77, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  %12 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call14 = call i32 @psbt_close_records(%struct.psbt* noundef %12)
  store i32 %call14, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.end, %if.then7
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_new_output_record_set(%struct.psbt* noundef %tx) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %res = alloca i32, align 4
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state1 = getelementptr inbounds %struct.psbt, %struct.psbt* %2, i32 0, i32 0
  %3 = load i32, i32* %state1, align 8
  %cmp2 = icmp eq i32 %3, 5
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state4 = getelementptr inbounds %struct.psbt, %struct.psbt* %4, i32 0, i32 0
  %5 = load i32, i32* %state4, align 8
  %cmp5 = icmp eq i32 %5, 7
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state7 = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 0
  %7 = load i32, i32* %state7, align 8
  %cmp8 = icmp eq i32 %7, 6
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %8 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call = call i32 @psbt_close_records(%struct.psbt* noundef %8)
  store i32 %call, i32* %res, align 4
  %9 = load i32, i32* %res, align 4
  %cmp9 = icmp ne i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %10 = load i32, i32* %res, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state11 = getelementptr inbounds %struct.psbt, %struct.psbt* %11, i32 0, i32 0
  store i32 7, i32* %state11, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false6
  %12 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state12 = getelementptr inbounds %struct.psbt, %struct.psbt* %12, i32 0, i32 0
  %13 = load i32, i32* %state12, align 8
  %cmp13 = icmp ne i32 %13, 6
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.78, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  %14 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call17 = call i32 @psbt_close_records(%struct.psbt* noundef %14)
  store i32 %call17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.end, %if.then10
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_print(%struct.psbt* noundef %tx, %struct._IO_FILE* noundef %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 8
  %cmp = icmp ne i32 %1, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call = call i64 @psbt_size(%struct.psbt* noundef %2)
  store i64 %call, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %size, align 8
  %cmp1 = icmp ult i64 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %data = getelementptr inbounds %struct.psbt, %struct.psbt* %6, i32 0, i32 1
  %7 = load i8*, i8** %data, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_write_input_record(%struct.psbt* noundef %tx, %struct.psbt_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %rec.addr = alloca %struct.psbt_record*, align 8
  %res = alloca i32, align 4
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  store %struct.psbt_record* %rec, %struct.psbt_record** %rec.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call = call i32 @psbt_close_records(%struct.psbt* noundef %2)
  store i32 %call, i32* %res, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %res, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state3 = getelementptr inbounds %struct.psbt, %struct.psbt* %4, i32 0, i32 0
  store i32 4, i32* %state3, align 8
  br label %if.end10

if.else:                                          ; preds = %entry
  %5 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state4 = getelementptr inbounds %struct.psbt, %struct.psbt* %5, i32 0, i32 0
  %6 = load i32, i32* %state4, align 8
  %cmp5 = icmp ne i32 %6, 4
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state6 = getelementptr inbounds %struct.psbt, %struct.psbt* %7, i32 0, i32 0
  %8 = load i32, i32* %state6, align 8
  %cmp7 = icmp ne i32 %8, 5
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.80, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %9 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %10 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %call11 = call i32 @psbt_write_record(%struct.psbt* noundef %9, %struct.psbt_record* noundef %10)
  store i32 %call11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then8, %if.then2
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_write_output_record(%struct.psbt* noundef %tx, %struct.psbt_record* noundef %rec) #0 {
entry:
  %retval = alloca i32, align 4
  %tx.addr = alloca %struct.psbt*, align 8
  %rec.addr = alloca %struct.psbt_record*, align 8
  %res = alloca i32, align 4
  store %struct.psbt* %tx, %struct.psbt** %tx.addr, align 8
  store %struct.psbt_record* %rec, %struct.psbt_record** %rec.addr, align 8
  %0 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state = getelementptr inbounds %struct.psbt, %struct.psbt* %0, i32 0, i32 0
  %1 = load i32, i32* %state, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %call = call i32 @psbt_close_records(%struct.psbt* noundef %2)
  store i32 %call, i32* %res, align 4
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i32, i32* %res, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state3 = getelementptr inbounds %struct.psbt, %struct.psbt* %4, i32 0, i32 0
  store i32 6, i32* %state3, align 8
  br label %if.end10

if.else:                                          ; preds = %entry
  %5 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state4 = getelementptr inbounds %struct.psbt, %struct.psbt* %5, i32 0, i32 0
  %6 = load i32, i32* %state4, align 8
  %cmp5 = icmp ne i32 %6, 6
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %state6 = getelementptr inbounds %struct.psbt, %struct.psbt* %7, i32 0, i32 0
  %8 = load i32, i32* %state6, align 8
  %cmp7 = icmp ne i32 %8, 7
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.80, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 4, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %9 = load %struct.psbt*, %struct.psbt** %tx.addr, align 8
  %10 = load %struct.psbt_record*, %struct.psbt_record** %rec.addr, align 8
  %call11 = call i32 @psbt_write_record(%struct.psbt* noundef %9, %struct.psbt_record* noundef %10)
  store i32 %call11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then8, %if.then2
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hexdigit(i8 noundef signext %hex) #0 {
entry:
  %hex.addr = alloca i8, align 1
  store i8 %hex, i8* %hex.addr, align 1
  %0 = load i8, i8* %hex.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 57
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8, i8* %hex.addr, align 1
  %conv2 = sext i8 %1 to i32
  %sub = sub nsw i32 %conv2, 48
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8, i8* %hex.addr, align 1
  %conv3 = sext i8 %2 to i32
  %call = call i32 @toupper(i32 noundef %conv3) #8
  %sub4 = sub nsw i32 %call, 65
  %add = add nsw i32 %sub4, 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  ret i8 %conv5
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_hex_decode(i8* noundef %src, i64 noundef %src_size, i8* noundef %dest, i64 noundef %dest_size) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %src_size.addr = alloca i64, align 8
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %res = alloca i32, align 4
  %i = alloca i64, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i8* %src, i8** %src.addr, align 8
  store i64 %src_size, i64* %src_size.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load i64, i64* %src_size.addr, align 8
  %rem = urem i64 %0, 2
  %cmp = icmp ne i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.81, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %dest_size.addr, align 8
  %2 = load i64, i64* %src_size.addr, align 8
  %div = udiv i64 %2, 2
  %cmp1 = icmp ult i64 %1, %div
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.82, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* %res, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load i32, i32* %res, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %src_size.addr, align 8
  %cmp7 = icmp ult i64 %5, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx, align 1
  store i8 %9, i8* %c1, align 1
  %10 = load i8*, i8** %src.addr, align 8
  %11 = load i64, i64* %i, align 8
  %add = add i64 %11, 1
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 %add
  %12 = load i8, i8* %arrayidx8, align 1
  store i8 %12, i8* %c2, align 1
  %call = call i16** @__ctype_b_loc() #9
  %13 = load i16*, i16** %call, align 8
  %14 = load i8, i8* %c1, align 1
  %conv = zext i8 %14 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx9 = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %15 = load i16, i16* %arrayidx9, align 2
  %conv10 = zext i16 %15 to i32
  %and = and i32 %conv10, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then18

lor.lhs.false:                                    ; preds = %for.body
  %call11 = call i16** @__ctype_b_loc() #9
  %16 = load i16*, i16** %call11, align 8
  %17 = load i8, i8* %c2, align 1
  %conv12 = zext i8 %17 to i32
  %idxprom13 = sext i32 %conv12 to i64
  %arrayidx14 = getelementptr inbounds i16, i16* %16, i64 %idxprom13
  %18 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %18 to i32
  %and16 = and i32 %conv15, 4096
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %for.body
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.81, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  %19 = load i8, i8* %c1, align 1
  %call20 = call zeroext i8 @hexdigit(i8 noundef signext %19)
  %conv21 = zext i8 %call20 to i32
  %shl = shl i32 %conv21, 4
  %20 = load i8, i8* %c2, align 1
  %call22 = call zeroext i8 @hexdigit(i8 noundef signext %20)
  %conv23 = zext i8 %call22 to i32
  %or = or i32 %shl, %conv23
  %conv24 = trunc i32 %or to i8
  %21 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %conv24, i8* %21, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %22 = load i64, i64* %i, align 8
  %add25 = add i64 %22, 2
  store i64 %add25, i64* %i, align 8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then18, %if.then5, %if.then2, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @hexchar(i32 noundef %val) #0 {
entry:
  %retval = alloca i8, align 1
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  %cmp = icmp ult i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %val.addr, align 4
  %add = add i32 48, %1
  %conv = trunc i32 %add to i8
  store i8 %conv, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4
  %cmp1 = icmp ult i32 %2, 16
  br i1 %cmp1, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %val.addr, align 4
  %add4 = add i32 97, %3
  %sub = sub i32 %add4, 10
  %conv5 = trunc i32 %sub to i8
  store i8 %conv5, i8* %retval, align 1
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.85, i64 0, i64 0), i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.62, i64 0, i64 0), i32 noundef 710, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.hexchar, i64 0, i64 0)) #7
  unreachable

return:                                           ; preds = %if.then3, %if.then
  %4 = load i8, i8* %retval, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex_encode(i8* noundef %buf, i64 noundef %bufsize, i8* noundef %dest, i64 noundef %dest_size) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %c = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  %0 = load i64, i64* %dest_size.addr, align 8
  %1 = load i64, i64* %bufsize.addr, align 8
  %mul = mul i64 %1, 2
  %add = add i64 %mul, 1
  %cmp = icmp ult i64 %0, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %bufsize.addr, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %buf.addr, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  store i32 %conv, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %shr = lshr i32 %7, 4
  %call = call signext i8 @hexchar(i32 noundef %shr)
  %8 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %dest.addr, align 8
  store i8 %call, i8* %8, align 1
  %9 = load i32, i32* %c, align 4
  %and = and i32 %9, 15
  %call2 = call signext i8 @hexchar(i32 noundef %and)
  %10 = load i8*, i8** %dest.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr3, i8** %dest.addr, align 8
  store i8 %call2, i8* %10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %12 = load i8*, i8** %dest.addr, align 8
  store i8 0, i8* %12, align 1
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protobuf_encode(i8* noundef %psbt, i64 noundef %psbt_size, i8* noundef %dest, i64 noundef %dest_size) #0 {
entry:
  %psbt.addr = alloca i8*, align 8
  %psbt_size.addr = alloca i64, align 8
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  store i8* %psbt, i8** %psbt.addr, align 8
  store i64 %psbt_size, i64* %psbt_size.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  ret i32 5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psbt_encode_raw(i8* noundef %psbt_data, i64 noundef %psbt_len, i32 noundef %encoding, i8* noundef %dest, i64 noundef %dest_size, i64* noundef %out_len) #0 {
entry:
  %retval = alloca i32, align 4
  %psbt_data.addr = alloca i8*, align 8
  %psbt_len.addr = alloca i64, align 8
  %encoding.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %dest_size.addr = alloca i64, align 8
  %out_len.addr = alloca i64*, align 8
  %c = alloca i8*, align 8
  %res = alloca i32, align 4
  store i8* %psbt_data, i8** %psbt_data.addr, align 8
  store i64 %psbt_len, i64* %psbt_len.addr, align 8
  store i32 %encoding, i32* %encoding.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i64 %dest_size, i64* %dest_size.addr, align 8
  store i64* %out_len, i64** %out_len.addr, align 8
  %0 = load i32, i32* %encoding.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8*, i8** %psbt_data.addr, align 8
  %2 = load i64, i64* %psbt_len.addr, align 8
  %3 = load i8*, i8** %dest.addr, align 8
  %4 = load i64, i64* %dest_size.addr, align 8
  %call = call i32 @hex_encode(i8* noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4)
  store i32 %call, i32* %res, align 4
  %5 = load i64, i64* %psbt_len.addr, align 8
  %mul = mul i64 %5, 2
  %add = add i64 %mul, 1
  %6 = load i64*, i64** %out_len.addr, align 8
  store i64 %add, i64* %6, align 8
  %7 = load i32, i32* %res, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %8 = load i8*, i8** %psbt_data.addr, align 8
  %9 = load i64, i64* %psbt_len.addr, align 8
  %10 = load i8*, i8** %dest.addr, align 8
  %11 = load i64, i64* %dest_size.addr, align 8
  %12 = load i64*, i64** %out_len.addr, align 8
  %call2 = call i8* @base64_encode(i8* noundef %8, i64 noundef %9, i8* noundef %10, i64 noundef %11, i64* noundef %12)
  store i8* %call2, i8** %c, align 8
  %13 = load i8*, i8** %c, align 8
  %cmp = icmp eq i8* %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.86, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %sw.bb1
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %14 = load i8*, i8** %psbt_data.addr, align 8
  %15 = load i64, i64* %psbt_len.addr, align 8
  %16 = load i8*, i8** %dest.addr, align 8
  %17 = load i64, i64* %dest_size.addr, align 8
  %18 = load i64*, i64** %out_len.addr, align 8
  %call4 = call i8* @base62_encode(i8* noundef %14, i64 noundef %15, i8* noundef %16, i64 noundef %17, i64* noundef %18)
  store i8* %call4, i8** %c, align 8
  %19 = load i8*, i8** %c, align 8
  %cmp5 = icmp eq i8* %19, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %sw.bb3
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 3, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %sw.bb3
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  %20 = load i8*, i8** %psbt_data.addr, align 8
  %21 = load i64, i64* %psbt_len.addr, align 8
  %22 = load i8*, i8** %dest.addr, align 8
  %23 = load i64, i64* %dest_size.addr, align 8
  %call9 = call i32 @protobuf_encode(i8* noundef %20, i64 noundef %21, i8* noundef %22, i64 noundef %23)
  store i32 %call9, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.88, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb8, %if.end7, %if.then6, %if.end, %if.then, %sw.bb
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @psbt_geterr() #0 {
entry:
  %0 = load i8*, i8** @psbt_errmsg, align 8
  ret i8* %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_le32(i8* noundef %cursor) #0 {
entry:
  %cursor.addr = alloca i8*, align 8
  store i8* %cursor, i8** %cursor.addr, align 8
  %0 = load i8*, i8** %cursor.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %call = call i32 @__uint32_identity(i32 noundef %2)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_le64(i8* noundef %cursor) #0 {
entry:
  %cursor.addr = alloca i8*, align 8
  store i8* %cursor, i8** %cursor.addr, align 8
  %0 = load i8*, i8** %cursor.addr, align 8
  %1 = bitcast i8* %0 to i64*
  %2 = load i64, i64* %1, align 8
  %call = call i64 @__uint64_identity(i64 noundef %2)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_txin(i8** noundef %cursor, i8* noundef %data, i32 noundef %data_size, %struct.psbt_txin* noundef %txin) #0 {
entry:
  %retval = alloca i32, align 4
  %cursor.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i32, align 4
  %txin.addr = alloca %struct.psbt_txin*, align 8
  %script_len = alloca i64, align 8
  %size_len = alloca i32, align 4
  %res = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8** %cursor, i8*** %cursor.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %data_size, i32* %data_size.addr, align 4
  store %struct.psbt_txin* %txin, %struct.psbt_txin** %txin.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load i8**, i8*** %cursor.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 32
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i32, i32* %data_size.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %cmp = icmp ugt i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.90, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load %struct.psbt_txin*, %struct.psbt_txin** %txin.addr, align 8
  %txid = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %6, i32 0, i32 0
  store i8* %5, i8** %txid, align 8
  %7 = load i8*, i8** %p, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 32
  store i8* %add.ptr2, i8** %p, align 8
  %8 = load i8*, i8** %p, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 4
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i32, i32* %data_size.addr, align 4
  %idx.ext4 = zext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 %idx.ext4
  %cmp6 = icmp ugt i8* %add.ptr3, %add.ptr5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.91, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %call = call i32 @parse_le32(i8* noundef %11)
  %12 = load %struct.psbt_txin*, %struct.psbt_txin** %txin.addr, align 8
  %index = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %12, i32 0, i32 1
  store i32 %call, i32* %index, align 8
  %13 = load i8*, i8** %p, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %add.ptr9, i8** %p, align 8
  %14 = load i8*, i8** %p, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i32, i32* %data_size.addr, align 4
  %idx.ext11 = zext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %15, i64 %idx.ext11
  %cmp13 = icmp ugt i8* %add.ptr10, %add.ptr12
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end8
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.92, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end8
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %call16 = call i32 @compactsize_peek_length(i8 noundef zeroext %18)
  store i32 %call16, i32* %size_len, align 4
  %19 = load i8*, i8** %p, align 8
  %20 = load i32, i32* %size_len, align 4
  %idx.ext17 = sext i32 %20 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %19, i64 %idx.ext17
  %21 = load i8*, i8** %data.addr, align 8
  %22 = load i32, i32* %data_size.addr, align 4
  %idx.ext19 = zext i32 %22 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %21, i64 %idx.ext19
  %cmp21 = icmp ugt i8* %add.ptr18, %add.ptr20
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.93, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end15
  %23 = load i8*, i8** %p, align 8
  %call24 = call i64 @compactsize_read(i8* noundef %23, i32* noundef %res)
  store i64 %call24, i64* %script_len, align 8
  %24 = load i32, i32* %res, align 4
  %cmp25 = icmp ne i32 %24, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  %25 = load i32, i32* %res, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end23
  %26 = load i32, i32* %size_len, align 4
  %27 = load i8*, i8** %p, align 8
  %idx.ext28 = sext i32 %26 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %27, i64 %idx.ext28
  store i8* %add.ptr29, i8** %p, align 8
  %28 = load i64, i64* %script_len, align 8
  %conv = trunc i64 %28 to i32
  %29 = load %struct.psbt_txin*, %struct.psbt_txin** %txin.addr, align 8
  %script_len30 = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %29, i32 0, i32 3
  store i32 %conv, i32* %script_len30, align 8
  %30 = load i64, i64* %script_len, align 8
  %tobool = icmp ne i64 %30, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end27
  %31 = load i8*, i8** %p, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end27
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %31, %cond.true ], [ null, %cond.false ]
  %32 = load %struct.psbt_txin*, %struct.psbt_txin** %txin.addr, align 8
  %script = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %32, i32 0, i32 2
  store i8* %cond, i8** %script, align 8
  %33 = load i64, i64* %script_len, align 8
  %34 = load i8*, i8** %p, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %add.ptr31, i8** %p, align 8
  %35 = load i8*, i8** %p, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %35, i64 4
  %36 = load i8*, i8** %data.addr, align 8
  %37 = load i32, i32* %data_size.addr, align 4
  %idx.ext33 = zext i32 %37 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %36, i64 %idx.ext33
  %cmp35 = icmp ugt i8* %add.ptr32, %add.ptr34
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %cond.end
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.94, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %cond.end
  %38 = load i8*, i8** %p, align 8
  %call39 = call i32 @parse_le32(i8* noundef %38)
  %39 = load %struct.psbt_txin*, %struct.psbt_txin** %txin.addr, align 8
  %sequence_number = getelementptr inbounds %struct.psbt_txin, %struct.psbt_txin* %39, i32 0, i32 4
  store i32 %call39, i32* %sequence_number, align 4
  %40 = load i8*, i8** %p, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %40, i64 4
  store i8* %add.ptr40, i8** %p, align 8
  %41 = load i8*, i8** %p, align 8
  %42 = load i8**, i8*** %cursor.addr, align 8
  store i8* %41, i8** %42, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then37, %if.then26, %if.then22, %if.then14, %if.then7, %if.then
  %43 = load i32, i32* %retval, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_txout(i8** noundef %cursor, i8* noundef %data, i32 noundef %data_size, %struct.psbt_txout* noundef %txout) #0 {
entry:
  %retval = alloca i32, align 4
  %cursor.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i32, align 4
  %txout.addr = alloca %struct.psbt_txout*, align 8
  %size_len = alloca i64, align 8
  %script_len = alloca i64, align 8
  %res = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8** %cursor, i8*** %cursor.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %data_size, i32* %data_size.addr, align 4
  store %struct.psbt_txout* %txout, %struct.psbt_txout** %txout.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load i8**, i8*** %cursor.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i32, i32* %data_size.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %cmp = icmp ugt i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.95, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %call = call i64 @parse_le64(i8* noundef %5)
  %6 = load %struct.psbt_txout*, %struct.psbt_txout** %txout.addr, align 8
  %amount = getelementptr inbounds %struct.psbt_txout, %struct.psbt_txout* %6, i32 0, i32 0
  store i64 %call, i64* %amount, align 8
  %7 = load i8*, i8** %p, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 8
  store i8* %add.ptr2, i8** %p, align 8
  %8 = load i8*, i8** %p, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i32, i32* %data_size.addr, align 4
  %idx.ext4 = zext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 %idx.ext4
  %cmp6 = icmp ugt i8* %add.ptr3, %add.ptr5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.96, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %call9 = call i32 @compactsize_peek_length(i8 noundef zeroext %12)
  %conv = zext i32 %call9 to i64
  store i64 %conv, i64* %size_len, align 8
  %13 = load i8*, i8** %p, align 8
  %14 = load i64, i64* %size_len, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %13, i64 %14
  %15 = load i8*, i8** %data.addr, align 8
  %16 = load i32, i32* %data_size.addr, align 4
  %idx.ext11 = zext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %15, i64 %idx.ext11
  %cmp13 = icmp ugt i8* %add.ptr10, %add.ptr12
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end8
  store i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.97, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end8
  %17 = load i8*, i8** %p, align 8
  %call17 = call i64 @compactsize_read(i8* noundef %17, i32* noundef %res)
  store i64 %call17, i64* %script_len, align 8
  %18 = load i32, i32* %res, align 4
  %cmp18 = icmp ne i32 %18, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  %19 = load i32, i32* %res, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %20 = load i64, i64* %size_len, align 8
  %21 = load i8*, i8** %p, align 8
  %add.ptr22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %add.ptr22, i8** %p, align 8
  %22 = load i8*, i8** %p, align 8
  %23 = load %struct.psbt_txout*, %struct.psbt_txout** %txout.addr, align 8
  %script = getelementptr inbounds %struct.psbt_txout, %struct.psbt_txout* %23, i32 0, i32 1
  store i8* %22, i8** %script, align 8
  %24 = load i64, i64* %script_len, align 8
  %conv23 = trunc i64 %24 to i32
  %25 = load %struct.psbt_txout*, %struct.psbt_txout** %txout.addr, align 8
  %script_len24 = getelementptr inbounds %struct.psbt_txout, %struct.psbt_txout* %25, i32 0, i32 2
  store i32 %conv23, i32* %script_len24, align 8
  %26 = load i8*, i8** %p, align 8
  %27 = load i64, i64* %script_len, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %26, i64 %27
  %28 = load i8*, i8** %data.addr, align 8
  %29 = load i32, i32* %data_size.addr, align 4
  %idx.ext26 = zext i32 %29 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %28, i64 %idx.ext26
  %cmp28 = icmp ugt i8* %add.ptr25, %add.ptr27
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end21
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.98, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end21
  %30 = load i64, i64* %script_len, align 8
  %31 = load i8*, i8** %p, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %31, i64 %30
  store i8* %add.ptr32, i8** %p, align 8
  %32 = load i8*, i8** %p, align 8
  %33 = load i8**, i8*** %cursor.addr, align 8
  store i8* %32, i8** %33, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then30, %if.then20, %if.then15, %if.then7, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_witness_item(i8** noundef %cursor, i8* noundef %data, i32 noundef %data_size, %struct.psbt_witness_item* noundef %witness_item) #0 {
entry:
  %retval = alloca i32, align 4
  %cursor.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i32, align 4
  %witness_item.addr = alloca %struct.psbt_witness_item*, align 8
  %size_len = alloca i32, align 4
  %item_len = alloca i32, align 4
  %res = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8** %cursor, i8*** %cursor.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %data_size, i32* %data_size.addr, align 4
  store %struct.psbt_witness_item* %witness_item, %struct.psbt_witness_item** %witness_item.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load i8**, i8*** %cursor.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i32, i32* %data_size.addr, align 4
  %idx.ext = zext i32 %4 to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %cmp = icmp ugt i8* %add.ptr, %add.ptr1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.99, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %call = call i32 @compactsize_peek_length(i8 noundef zeroext %6)
  store i32 %call, i32* %size_len, align 4
  %7 = load i8*, i8** %p, align 8
  %8 = load i32, i32* %size_len, align 4
  %idx.ext2 = zext i32 %8 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %7, i64 %idx.ext2
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i32, i32* %data_size.addr, align 4
  %idx.ext4 = zext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 %idx.ext4
  %cmp6 = icmp ugt i8* %add.ptr3, %add.ptr5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.100, i64 0, i64 0), i8** @psbt_errmsg, align 8
  store i32 2, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %11 = load i8*, i8** %p, align 8
  %call9 = call i64 @compactsize_read(i8* noundef %11, i32* noundef %res)
  %conv = trunc i64 %call9 to i32
  store i32 %conv, i32* %item_len, align 4
  %12 = load i32, i32* %res, align 4
  %cmp10 = icmp ne i32 %12, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  %13 = load i32, i32* %res, align 4
  store i32 %13, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end8
  %14 = load i32, i32* %size_len, align 4
  %15 = load i8*, i8** %p, align 8
  %idx.ext14 = zext i32 %14 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %15, i64 %idx.ext14
  store i8* %add.ptr15, i8** %p, align 8
  %16 = load i8*, i8** %p, align 8
  %17 = load %struct.psbt_witness_item*, %struct.psbt_witness_item** %witness_item.addr, align 8
  %item = getelementptr inbounds %struct.psbt_witness_item, %struct.psbt_witness_item* %17, i32 0, i32 2
  store i8* %16, i8** %item, align 8
  %18 = load i32, i32* %item_len, align 4
  %19 = load %struct.psbt_witness_item*, %struct.psbt_witness_item** %witness_item.addr, align 8
  %item_len16 = getelementptr inbounds %struct.psbt_witness_item, %struct.psbt_witness_item* %19, i32 0, i32 3
  store i32 %18, i32* %item_len16, align 8
  %20 = load i32, i32* %item_len, align 4
  %21 = load i8*, i8** %p, align 8
  %idx.ext17 = zext i32 %20 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %21, i64 %idx.ext17
  store i8* %add.ptr18, i8** %p, align 8
  %22 = load i8*, i8** %p, align 8
  %23 = load i8**, i8*** %cursor.addr, align 8
  store i8* %22, i8** %23, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then7, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

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
