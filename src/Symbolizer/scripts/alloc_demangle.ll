; ModuleID = 'alloc-7d56c4ec34b552ea.ll'
source_filename = "alloc.802914b5-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::ffi::c_str::CStr" = type { [0 x i8] }
%"string::Drain" = type { %"string::String"*, i64, i64, { i8*, i8* } }
%"string::String" = type { %"vec::Vec<u8>" }
%"vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::builders::DebugList" = type { %"core::fmt::builders::DebugInner" }
%"core::fmt::builders::DebugInner" = type { %"core::fmt::Formatter"*, i8, i8, [6 x i8] }
%"core::str::error::Utf8Error" = type { i64, { i8, i8 }, [6 x i8] }
%"borrow::Cow<str>" = type { i64, [3 x i64] }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"collections::btree::mem::replace::PanicGuard" = type {}
%"ffi::c_str::FromVecWithNulError" = type { { i64, i64 }, %"vec::Vec<u8>" }
%"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>" = type { i64, [4 x i64] }
%"core::result::Result<string::String, ffi::c_str::IntoStringError>" = type { i64, [4 x i64] }
%"string::FromUtf8Error" = type { %"vec::Vec<u8>", %"core::str::error::Utf8Error" }
%"core::result::Result<&str, core::str::error::Utf8Error>" = type { i64, [2 x i64] }
%"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>" = type { i64, [5 x i64] }
%"ffi::c_str::NulError" = type { i64, %"vec::Vec<u8>" }
%"ffi::c_str::IntoStringError" = type { { i8*, i64 }, %"core::str::error::Utf8Error" }
%"core::fmt::Error" = type {}
%"core::option::Option<core::str::lossy::Utf8LossyChunk>" = type { {}*, [3 x i64] }
%"core::str::lossy::Utf8Lossy" = type { [0 x i8] }
%"core::result::Result<string::String, string::FromUtf16Error>" = type { {}*, [2 x i64] }
%"string::String::retain::SetLenOnDrop" = type { %"string::String"*, i64, i64 }
%"string::FromUtf16Error" = type { {} }
%"core::str::pattern::StrSearcher" = type { { [0 x i8]*, i64 }, { [0 x i8]*, i64 }, %"core::str::pattern::StrSearcherImpl" }
%"core::str::pattern::StrSearcherImpl" = type { i64, [8 x i64] }
%"core::fmt::builders::DebugTuple" = type { %"core::fmt::Formatter"*, i64, i8, i8, [6 x i8] }
%"alloc::Global" = type {}
%"collections::btree::set_val::SetValZST" = type {}

@alloc8784 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"()" }>, align 1
@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%"string::String"**, [0 x i8]*, i64)* @"<&mut W as core::fmt::Write>::write_str" to i8*), i8* bitcast (i1 (%"string::String"**, i32)* @"<&mut W as core::fmt::Write>::write_char" to i8*), i8* bitcast (i1 (%"string::String"**, %"core::fmt::Arguments"*)* @"<&mut W as core::fmt::Write>::write_fmt" to i8*) }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i8**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.9" to i8*) }>, align 8
@alloc8775 = private unnamed_addr constant <{}> zeroinitializer, align 8
@vtable.2 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::fmt::Error"*, %"core::fmt::Formatter"*)* @"<core::fmt::Error as core::fmt::Debug>::fmt" to i8*) }>, align 8
@alloc8814 = private unnamed_addr constant <{ [123 x i8] }> <{ [123 x i8] c"/home/gabe/.rustup/toolchains/nightly-2022-08-05-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec.rs" }>, align 1
@alloc8841 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"capacity overflow" }>, align 1
@alloc8171 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @alloc8841, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@alloc8815 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [123 x i8] }>, <{ [123 x i8] }>* @alloc8814, i32 0, i32 0, i32 0), [16 x i8] c"{\00\00\00\00\00\00\00\06\02\00\00\05\00\00\00" }>, align 8
@alloc87 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"allocation failed" }>, align 1
@alloc88 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @alloc87, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00" }>, align 8
@alloc8818 = private unnamed_addr constant <{ [121 x i8] }> <{ [121 x i8] c"/home/gabe/.rustup/toolchains/nightly-2022-08-05-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/alloc.rs" }>, align 1
@alloc8817 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [121 x i8] }>, <{ [121 x i8] }>* @alloc8818, i32 0, i32 0, i32 0), [16 x i8] c"y\00\00\00\00\00\00\00|\01\00\00\09\00\00\00" }>, align 8
@alloc8188 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"memory allocation of " }>, align 1
@alloc8190 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c" bytes failed" }>, align 1
@alloc8189 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc8188, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [13 x i8] }>, <{ [13 x i8] }>* @alloc8190, i32 0, i32 0, i32 0), [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@alloc8819 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [121 x i8] }>, <{ [121 x i8] }>* @alloc8818, i32 0, i32 0, i32 0), [16 x i8] c"y\00\00\00\00\00\00\00\98\01\00\00\09\00\00\00" }>, align 8
@alloc8823 = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c"memory allocation failed" }>, align 1
@alloc8824 = private unnamed_addr constant <{ [46 x i8] }> <{ [46 x i8] c" because the memory allocator returned a error" }>, align 1
@alloc8825 = private unnamed_addr constant <{ [64 x i8] }> <{ [64 x i8] c" because the computed capacity exceeded the collection's maximum" }>, align 1
@alloc8835 = private unnamed_addr constant <{ [125 x i8] }> <{ [125 x i8] c"/home/gabe/.rustup/toolchains/nightly-2022-08-05-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/ffi/c_str.rs" }>, align 1
@alloc8834 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Option::unwrap()` on a `None` value" }>, align 1
@alloc8830 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [125 x i8] }>, <{ [125 x i8] }>* @alloc8835, i32 0, i32 0, i32 0), [16 x i8] c"}\00\00\00\00\00\00\00,\01\00\00\11\00\00\00" }>, align 8
@alloc8833 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [125 x i8] }>, <{ [125 x i8] }>* @alloc8835, i32 0, i32 0, i32 0), [16 x i8] c"}\00\00\00\00\00\00\002\01\00\00\11\00\00\00" }>, align 8
@alloc8836 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [125 x i8] }>, <{ [125 x i8] }>* @alloc8835, i32 0, i32 0, i32 0), [16 x i8] c"}\00\00\00\00\00\00\008\01\00\00\11\00\00\00" }>, align 8
@alloc8581 = private unnamed_addr constant <{ [45 x i8] }> <{ [45 x i8] c"nul byte found in provided data at position: " }>, align 1
@alloc8582 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [45 x i8] }>, <{ [45 x i8] }>* @alloc8581, i32 0, i32 0, i32 0), [8 x i8] c"-\00\00\00\00\00\00\00" }>, align 8
@alloc8588 = private unnamed_addr constant <{ [35 x i8] }> <{ [35 x i8] c"data provided is not nul terminated" }>, align 1
@alloc8589 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [35 x i8] }>, <{ [35 x i8] }>* @alloc8588, i32 0, i32 0, i32 0), [8 x i8] c"#\00\00\00\00\00\00\00" }>, align 8
@alloc8593 = private unnamed_addr constant <{ [51 x i8] }> <{ [51 x i8] c"data provided contains an interior nul byte at pos " }>, align 1
@alloc8594 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [51 x i8] }>, <{ [51 x i8] }>* @alloc8593, i32 0, i32 0, i32 0), [8 x i8] c"3\00\00\00\00\00\00\00" }>, align 8
@alloc8837 = private unnamed_addr constant <{ [33 x i8] }> <{ [33 x i8] c"C string contained non-utf8 bytes" }>, align 1
@alloc8838 = private unnamed_addr constant <{ [51 x i8] }> <{ [51 x i8] c"a formatting trait implementation returned an error" }>, align 1
@alloc8839 = private unnamed_addr constant <{ [119 x i8] }> <{ [119 x i8] c"/home/gabe/.rustup/toolchains/nightly-2022-08-05-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/fmt.rs" }>, align 1
@alloc8840 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [119 x i8] }>, <{ [119 x i8] }>* @alloc8839, i32 0, i32 0, i32 0), [16 x i8] c"w\00\00\00\00\00\00\00d\02\00\00 \00\00\00" }>, align 8
@alloc8846 = private unnamed_addr constant <{ [121 x i8] }> <{ [121 x i8] c"/home/gabe/.rustup/toolchains/nightly-2022-08-05-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/slice.rs" }>, align 1
@alloc8843 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [121 x i8] }>, <{ [121 x i8] }>* @alloc8846, i32 0, i32 0, i32 0), [16 x i8] c"y\00\00\00\00\00\00\00:\02\00\00\18\00\00\00" }>, align 8
@alloc8852 = private unnamed_addr constant <{ [119 x i8] }> <{ [119 x i8] c"/home/gabe/.rustup/toolchains/nightly-2022-08-05-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/str.rs" }>, align 1
@alloc8851 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [119 x i8] }>, <{ [119 x i8] }>* @alloc8852, i32 0, i32 0, i32 0), [16 x i8] c"w\00\00\00\00\00\00\00\A9\01\00\00<\00\00\00" }>, align 8
@alloc8853 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [119 x i8] }>, <{ [119 x i8] }>* @alloc8852, i32 0, i32 0, i32 0), [16 x i8] c"w\00\00\00\00\00\00\00\AA\01\00\000\00\00\00" }>, align 8
@alloc8854 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"\CF\82" }>, align 1
@alloc8855 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"\CF\83" }>, align 1
@alloc8858 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"\EF\BF\BD" }>, align 1
@alloc8861 = private unnamed_addr constant <{ [36 x i8] }> <{ [36 x i8] c"invalid utf-16: lone surrogate found" }>, align 1
@alloc8864 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"Drain" }>, align 1
@vtable.3 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.4" to i8*) }>, align 8
@alloc8250 = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"swap_remove index (is " }>, align 1
@alloc8274 = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c") should be < len (is " }>, align 1
@alloc8286 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c")" }>, align 1
@alloc8251 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [22 x i8] }>, <{ [22 x i8] }>* @alloc8250, i32 0, i32 0, i32 0), [8 x i8] c"\16\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [22 x i8] }>, <{ [22 x i8] }>* @alloc8274, i32 0, i32 0, i32 0), [8 x i8] c"\16\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc8286, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc8874 = private unnamed_addr constant <{ [123 x i8] }> <{ [123 x i8] c"/home/gabe/.rustup/toolchains/nightly-2022-08-05-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs" }>, align 1
@alloc8869 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [123 x i8] }>, <{ [123 x i8] }>* @alloc8874, i32 0, i32 0, i32 0), [16 x i8] c"{\00\00\00\00\00\00\009\05\00\00\0D\00\00\00" }>, align 8
@alloc8261 = private unnamed_addr constant <{ [20 x i8] }> <{ [20 x i8] c"insertion index (is " }>, align 1
@alloc8285 = private unnamed_addr constant <{ [23 x i8] }> <{ [23 x i8] c") should be <= len (is " }>, align 1
@alloc8262 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [20 x i8] }>, <{ [20 x i8] }>* @alloc8261, i32 0, i32 0, i32 0), [8 x i8] c"\14\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [23 x i8] }>, <{ [23 x i8] }>* @alloc8285, i32 0, i32 0, i32 0), [8 x i8] c"\17\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc8286, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc8871 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [123 x i8] }>, <{ [123 x i8] }>* @alloc8874, i32 0, i32 0, i32 0), [16 x i8] c"{\00\00\00\00\00\00\00b\05\00\00\0D\00\00\00" }>, align 8
@alloc8272 = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"removal index (is " }>, align 1
@alloc8273 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [18 x i8] }>, <{ [18 x i8] }>* @alloc8272, i32 0, i32 0, i32 0), [8 x i8] c"\12\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [22 x i8] }>, <{ [22 x i8] }>* @alloc8274, i32 0, i32 0, i32 0), [8 x i8] c"\16\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc8286, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc8283 = private unnamed_addr constant <{ [21 x i8] }> <{ [21 x i8] c"`at` split index (is " }>, align 1
@alloc8284 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [21 x i8] }>, <{ [21 x i8] }>* @alloc8283, i32 0, i32 0, i32 0), [8 x i8] c"\15\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [23 x i8] }>, <{ [23 x i8] }>* @alloc8285, i32 0, i32 0, i32 0), [8 x i8] c"\17\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc8286, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc8875 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [123 x i8] }>, <{ [123 x i8] }>* @alloc8874, i32 0, i32 0, i32 0), [16 x i8] c"{\00\00\00\00\00\00\00\CA\07\00\00\0D\00\00\00" }>, align 8
@alloc8876 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"Global" }>, align 1
@alloc8877 = private unnamed_addr constant <{ [9 x i8] }> <{ [9 x i8] c"SetValZST" }>, align 1
@alloc8878 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"TryReserveError" }>, align 1
@alloc8879 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"kind" }>, align 1
@vtable.4 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i64 }**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.7" to i8*) }>, align 8
@alloc8883 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"AllocError" }>, align 1
@alloc8884 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"layout" }>, align 1
@vtable.5 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i64 }**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt" to i8*) }>, align 8
@alloc8888 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"non_exhaustive" }>, align 1
@vtable.6 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({}**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.1" to i8*) }>, align 8
@alloc8892 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"CapacityOverflow" }>, align 1
@alloc8893 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"NulError" }>, align 1
@vtable.7 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (i64**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.8" to i8*) }>, align 8
@vtable.8 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%"vec::Vec<u8>"**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.5" to i8*) }>, align 8
@alloc8900 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"NotNulTerminated" }>, align 1
@alloc8901 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"InteriorNul" }>, align 1
@alloc8902 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"FromVecWithNulError" }>, align 1
@alloc8903 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"error_kind" }>, align 1
@vtable.9 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i64, i64 }**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.3" to i8*) }>, align 8
@alloc8918 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"bytes" }>, align 1
@alloc8908 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"IntoStringError" }>, align 1
@alloc8909 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"inner" }>, align 1
@vtable.a = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 ({ i8*, i64 }**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.2" to i8*) }>, align 8
@alloc8919 = private unnamed_addr constant <{ [5 x i8] }> <{ [5 x i8] c"error" }>, align 1
@vtable.b = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void (i8**)* @"core::ptr::drop_in_place<&u8>" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::str::error::Utf8Error"**, %"core::fmt::Formatter"*)* @"<&T as core::fmt::Debug>::fmt.6" to i8*) }>, align 8
@alloc8917 = private unnamed_addr constant <{ [13 x i8] }> <{ [13 x i8] c"FromUtf8Error" }>, align 1
@alloc8920 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"FromUtf16Error" }>, align 1

@"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE" = unnamed_addr alias { i8*, i64 } (%"core::ffi::c_str::CStr"*, i64), { i8*, i64 } (%"core::ffi::c_str::CStr"*, i64)* @"<alloc::ffi::c_str::CString as core::convert::From<&core::ffi::c_str::CStr>>::from"
@"_ZN72_$LT$alloc..string..Drain$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17h967953fe1ff5f944E" = unnamed_addr alias { [0 x i8]*, i64 } (%"string::Drain"*), { [0 x i8]*, i64 } (%"string::Drain"*)* @"alloc::string::Drain::as_str"
@"_ZN81_$LT$alloc..string..Drain$u20$as$u20$core..convert..AsRef$LT$$u5b$u8$u5d$$GT$$GT$6as_ref17ha1544401514f443eE" = unnamed_addr alias { [0 x i8]*, i64 } (%"string::Drain"*), { [0 x i8]*, i64 } (%"string::Drain"*)* @"alloc::string::Drain::as_str"

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt"({ i64, i64 }** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_6 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = tail call noundef zeroext i1 @"<core::alloc::layout::Layout as core::fmt::Debug>::fmt"({ i64, i64 }* noalias noundef nonnull readonly align 8 dereferenceable(16) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.1"({}** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = tail call noundef zeroext i1 @"core::fmt::Formatter::pad"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [2 x i8] }>* @alloc8784 to [0 x i8]*), i64 2)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.2"({ i8*, i64 }** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_6 = load { i8*, i64 }*, { i8*, i64 }** %self, align 8, !nonnull !2, !align !3, !noundef !2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %0 = bitcast { i8*, i64 }* %_6 to [0 x i8]**
  %_12.034.i = load [0 x i8]*, [0 x i8]** %0, align 8, !alias.scope !4, !noalias !7, !nonnull !2, !align !9
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i64 0, i32 1
  %_12.1.i = load i64, i64* %1, align 8, !alias.scope !4, !noalias !7
  %2 = tail call { %"core::ffi::c_str::CStr"*, i64 } @"core::ffi::c_str::CStr::from_bytes_with_nul_unchecked::rt_impl"([0 x i8]* noalias noundef nonnull readonly align 1 %_12.034.i, i64 %_12.1.i), !noalias !10
  %_5.0.i = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %2, 0
  %_5.1.i = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %2, 1
  %3 = tail call noundef zeroext i1 @"<core::ffi::c_str::CStr as core::fmt::Debug>::fmt"(%"core::ffi::c_str::CStr"* noalias noundef nonnull readonly align 1 %_5.0.i, i64 %_5.1.i, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f), !noalias !4
  ret i1 %3
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.3"({ i64, i64 }** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %__self_0.i = alloca i64*, align 8
  %_6 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !nonnull !2, !align !3, !noundef !2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i64 0, i32 0
  %_3.i = load i64, i64* %0, align 8, !range !14, !alias.scope !11, !noalias !15, !noundef !2
  %trunc.not.i = icmp eq i64 %_3.i, 0
  br i1 %trunc.not.i, label %bb3.i, label %bb1.i

bb3.i:                                            ; preds = %start
  %1 = bitcast i64** %__self_0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1), !noalias !17
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i64 0, i32 1
  store i64* %2, i64** %__self_0.i, align 8, !noalias !17
  %_8.0.i = bitcast i64** %__self_0.i to {}*
  %3 = call noundef zeroext i1 @"core::fmt::Formatter::debug_tuple_field1_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [11 x i8] }>* @alloc8901 to [0 x i8]*), i64 11, {}* noundef nonnull align 1 %_8.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.7 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1), !noalias !17
  br label %"_ZN81_$LT$alloc..ffi..c_str..FromBytesWithNulErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he4d37d582f750ebcE.exit"

bb1.i:                                            ; preds = %start
  %4 = tail call noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [16 x i8] }>* @alloc8900 to [0 x i8]*), i64 16), !noalias !11
  br label %"_ZN81_$LT$alloc..ffi..c_str..FromBytesWithNulErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he4d37d582f750ebcE.exit"

"_ZN81_$LT$alloc..ffi..c_str..FromBytesWithNulErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he4d37d582f750ebcE.exit": ; preds = %bb1.i, %bb3.i
  %.0.in.i = phi i1 [ %4, %bb1.i ], [ %3, %bb3.i ]
  ret i1 %.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.4"({ [0 x i8]*, i64 }* noalias nocapture noundef readonly align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i64 0, i32 0
  %_6.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2, !align !9, !noundef !2
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i64 0, i32 1
  %_6.1 = load i64, i64* %1, align 8
  %2 = tail call noundef zeroext i1 @"<str as core::fmt::Debug>::fmt"([0 x i8]* noalias noundef nonnull readonly align 1 %_6.0, i64 %_6.1, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %2
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.5"(%"vec::Vec<u8>"** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %entry.i.i.i = alloca i8*, align 8
  %_6.i.i = alloca %"core::fmt::builders::DebugList", align 8
  %_6 = load %"vec::Vec<u8>"*, %"vec::Vec<u8>"** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %_6.idx = getelementptr %"vec::Vec<u8>", %"vec::Vec<u8>"* %_6, i64 0, i32 0, i32 0
  %_6.idx.val = load i8*, i8** %_6.idx, align 8
  %_6.idx1 = getelementptr %"vec::Vec<u8>", %"vec::Vec<u8>"* %_6, i64 0, i32 1
  %_6.idx1.val = load i64, i64* %_6.idx1, align 8
  %0 = bitcast %"core::fmt::builders::DebugList"* %_6.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0), !noalias !18
  call void @"core::fmt::Formatter::debug_list"(%"core::fmt::builders::DebugList"* noalias nocapture noundef nonnull sret(%"core::fmt::builders::DebugList") dereferenceable(16) %_6.i.i, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f), !noalias !24
  %1 = getelementptr inbounds i8, i8* %_6.idx.val, i64 %_6.idx1.val
  %_12.i16.i.i.i = icmp eq i64 %_6.idx1.val, 0
  br i1 %_12.i16.i.i.i, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h45ad7dc277f624ffE.exit", label %bb4.lr.ph.i.i.i

bb4.lr.ph.i.i.i:                                  ; preds = %start
  %2 = bitcast i8** %entry.i.i.i to i8*
  %_14.0.i.i.i = bitcast i8** %entry.i.i.i to {}*
  br label %bb4.i.i.i

bb4.i.i.i:                                        ; preds = %bb4.i.i.i, %bb4.lr.ph.i.i.i
  %iter.sroa.0.017.i.i.i = phi i8* [ %_6.idx.val, %bb4.lr.ph.i.i.i ], [ %3, %bb4.i.i.i ]
  %3 = getelementptr inbounds i8, i8* %iter.sroa.0.017.i.i.i, i64 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2), !noalias !25
  store i8* %iter.sroa.0.017.i.i.i, i8** %entry.i.i.i, align 8, !noalias !25
  %_12.i.i.i = call noundef align 8 dereferenceable(16) %"core::fmt::builders::DebugList"* @"core::fmt::builders::DebugList::entry"(%"core::fmt::builders::DebugList"* noalias noundef nonnull align 8 dereferenceable(16) %_6.i.i, {}* noundef nonnull align 1 %_14.0.i.i.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2), !noalias !25
  %_12.i.i.i.i = icmp eq i8* %3, %1
  br i1 %_12.i.i.i.i, label %"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h45ad7dc277f624ffE.exit", label %bb4.i.i.i

"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h45ad7dc277f624ffE.exit": ; preds = %bb4.i.i.i, %start
  %4 = call noundef zeroext i1 @"core::fmt::builders::DebugList::finish"(%"core::fmt::builders::DebugList"* noalias noundef nonnull align 8 dereferenceable(16) %_6.i.i)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0), !noalias !18
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.6"(%"core::str::error::Utf8Error"** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_6 = load %"core::str::error::Utf8Error"*, %"core::str::error::Utf8Error"** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = tail call noundef zeroext i1 @"<core::str::error::Utf8Error as core::fmt::Debug>::fmt"(%"core::str::error::Utf8Error"* noalias noundef nonnull readonly align 8 dereferenceable(16) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.7"({ i64, i64 }** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %__self_1.i = alloca {}*, align 8
  %__self_0.i = alloca { i64, i64 }*, align 8
  %_6 = load { i64, i64 }*, { i64, i64 }** %self, align 8, !nonnull !2, !align !3, !noundef !2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i64 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !31, !alias.scope !28, !noalias !32, !noundef !2
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb3.i, label %bb1.i

bb3.i:                                            ; preds = %start
  %3 = tail call noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [16 x i8] }>* @alloc8892 to [0 x i8]*), i64 16), !noalias !28
  br label %"_ZN76_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hd2632802bbdf7040E.exit"

bb1.i:                                            ; preds = %start
  %4 = bitcast { i64, i64 }** %__self_0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4), !noalias !34
  store { i64, i64 }* %_6, { i64, i64 }** %__self_0.i, align 8, !noalias !34
  %5 = bitcast {}** %__self_1.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5), !noalias !34
  %6 = bitcast {}** %__self_1.i to { i64, i64 }**
  store { i64, i64 }* %_6, { i64, i64 }** %6, align 8, !noalias !34
  %_14.0.i = bitcast { i64, i64 }** %__self_0.i to {}*
  %_19.0.i = bitcast {}** %__self_1.i to {}*
  %7 = call noundef zeroext i1 @"core::fmt::Formatter::debug_struct_field2_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [10 x i8] }>* @alloc8883 to [0 x i8]*), i64 10, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [6 x i8] }>* @alloc8884 to [0 x i8]*), i64 6, {}* noundef nonnull align 1 %_14.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.5 to [3 x i64]*), [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [14 x i8] }>* @alloc8888 to [0 x i8]*), i64 14, {}* noundef nonnull align 1 %_19.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.6 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5), !noalias !34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4), !noalias !34
  br label %"_ZN76_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hd2632802bbdf7040E.exit"

"_ZN76_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hd2632802bbdf7040E.exit": ; preds = %bb1.i, %bb3.i
  %.0.in.i = phi i1 [ %3, %bb3.i ], [ %7, %bb1.i ]
  ret i1 %.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.8"(i64** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_6 = load i64*, i64** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %_3.i = tail call noundef zeroext i1 @"core::fmt::Formatter::debug_lower_hex"(%"core::fmt::Formatter"* noalias noundef nonnull readonly align 8 dereferenceable(64) %f), !noalias !35
  br i1 %_3.i, label %bb2.i, label %bb4.i

bb4.i:                                            ; preds = %start
  %_7.i = tail call noundef zeroext i1 @"core::fmt::Formatter::debug_upper_hex"(%"core::fmt::Formatter"* noalias noundef nonnull readonly align 8 dereferenceable(64) %f), !noalias !35
  br i1 %_7.i, label %bb6.i, label %bb8.i

bb2.i:                                            ; preds = %start
  %0 = tail call noundef zeroext i1 @"core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt"(i64* noalias noundef nonnull readonly align 8 dereferenceable(8) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h38579dcee183499eE.exit"

bb8.i:                                            ; preds = %bb4.i
  %1 = tail call noundef zeroext i1 @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt"(i64* noalias noundef nonnull readonly align 8 dereferenceable(8) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h38579dcee183499eE.exit"

bb6.i:                                            ; preds = %bb4.i
  %2 = tail call noundef zeroext i1 @"core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt"(i64* noalias noundef nonnull readonly align 8 dereferenceable(8) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h38579dcee183499eE.exit"

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h38579dcee183499eE.exit": ; preds = %bb6.i, %bb8.i, %bb2.i
  %.0.in.i = phi i1 [ %0, %bb2.i ], [ %2, %bb6.i ], [ %1, %bb8.i ]
  ret i1 %.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&T as core::fmt::Debug>::fmt.9"(i8** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_6 = load i8*, i8** %self, align 8, !nonnull !2, !align !9, !noundef !2
  %_3.i = tail call noundef zeroext i1 @"core::fmt::Formatter::debug_lower_hex"(%"core::fmt::Formatter"* noalias noundef nonnull readonly align 8 dereferenceable(64) %f), !noalias !38
  br i1 %_3.i, label %bb2.i, label %bb4.i

bb4.i:                                            ; preds = %start
  %_7.i = tail call noundef zeroext i1 @"core::fmt::Formatter::debug_upper_hex"(%"core::fmt::Formatter"* noalias noundef nonnull readonly align 8 dereferenceable(64) %f), !noalias !38
  br i1 %_7.i, label %bb6.i, label %bb8.i

bb2.i:                                            ; preds = %start
  %0 = tail call noundef zeroext i1 @"core::fmt::num::<impl core::fmt::LowerHex for u8>::fmt"(i8* noalias noundef nonnull readonly align 1 dereferenceable(1) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17he6609b16de39d762E.exit"

bb8.i:                                            ; preds = %bb4.i
  %1 = tail call noundef zeroext i1 @"core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt"(i8* noalias noundef nonnull readonly align 1 dereferenceable(1) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17he6609b16de39d762E.exit"

bb6.i:                                            ; preds = %bb4.i
  %2 = tail call noundef zeroext i1 @"core::fmt::num::<impl core::fmt::UpperHex for u8>::fmt"(i8* noalias noundef nonnull readonly align 1 dereferenceable(1) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  br label %"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17he6609b16de39d762E.exit"

"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17he6609b16de39d762E.exit": ; preds = %bb6.i, %bb8.i, %bb2.i
  %.0.in.i = phi i1 [ %0, %bb2.i ], [ %2, %bb6.i ], [ %1, %bb8.i ]
  ret i1 %.0.in.i
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @"core::intrinsics::const_eval_select"(i64 %arg.0, i64 noundef %arg.1) unnamed_addr #1 personality i32 (...)* @rust_eh_personality {
start:
  tail call fastcc void @"core::ops::function::FnOnce::call_once"(i64 %arg.0, i64 noundef %arg.1) #29
  unreachable
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @"core::ops::function::FnOnce::call_once"(i64 %0, i64 noundef %1) unnamed_addr #1 {
start:
  tail call void @"alloc::alloc::handle_alloc_error::rt_error"(i64 %0, i64 noundef %1) #29
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn
define internal void @"core::ptr::drop_in_place<&u8>"(i8** nocapture readnone %_1) unnamed_addr #2 {
start:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"core::ptr::drop_in_place<alloc::string::String>"(%"string::String"* nocapture readonly %_1) unnamed_addr #3 personality i32 (...)* @rust_eh_personality {
start:
  %.idx.i = getelementptr %"string::String", %"string::String"* %_1, i64 0, i32 0, i32 0, i32 0
  %.idx.val.i = load i8*, i8** %.idx.i, align 8
  %.idx4.i = getelementptr %"string::String", %"string::String"* %_1, i64 0, i32 0, i32 0, i32 1
  %.idx4.val.i = load i64, i64* %.idx4.i, align 8
  %0 = icmp slt i64 %.idx4.val.i, 1
  br i1 %0, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8619fa31df03db07E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i": ; preds = %start
  %1 = xor i64 %.idx4.val.i, -1
  %size.lobit.not.i.i.i.i.i.i = lshr i64 %1, 63
  %2 = icmp ne i8* %.idx.val.i, null
  tail call void @llvm.assume(i1 %2) #30
  tail call void @__rust_dealloc(i8* nonnull %.idx.val.i, i64 %.idx4.val.i, i64 %size.lobit.not.i.i.i.i.i.i) #30
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8619fa31df03db07E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8619fa31df03db07E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i", %start
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nocapture readonly %_1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
bb4:
  %.idx = getelementptr %"vec::Vec<u8>", %"vec::Vec<u8>"* %_1, i64 0, i32 0, i32 0
  %.idx.val = load i8*, i8** %.idx, align 8
  %.idx4 = getelementptr %"vec::Vec<u8>", %"vec::Vec<u8>"* %_1, i64 0, i32 0, i32 1
  %.idx4.val = load i64, i64* %.idx4, align 8
  %0 = icmp slt i64 %.idx4.val, 1
  br i1 %0, label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h50e6b2c11e4aa91aE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i": ; preds = %bb4
  %1 = xor i64 %.idx4.val, -1
  %size.lobit.not.i.i.i.i.i = lshr i64 %1, 63
  %2 = icmp ne i8* %.idx.val, null
  tail call void @llvm.assume(i1 %2) #30
  tail call void @__rust_dealloc(i8* nonnull %.idx.val, i64 %.idx4.val, i64 %size.lobit.not.i.i.i.i.i) #30
  br label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h50e6b2c11e4aa91aE.exit"

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h50e6b2c11e4aa91aE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i", %bb4
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"core::ptr::drop_in_place<alloc::borrow::Cow<str>>"(%"borrow::Cow<str>"* nocapture readonly %_1) unnamed_addr #3 personality i32 (...)* @rust_eh_personality {
start:
  %0 = getelementptr %"borrow::Cow<str>", %"borrow::Cow<str>"* %_1, i64 0, i32 0
  %_2 = load i64, i64* %0, align 8, !range !14, !noundef !2
  %1 = icmp eq i64 %_2, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i", %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %_1, i64 0, i32 1
  %.idx.i.i = bitcast [3 x i64]* %2 to i8**
  %.idx.val.i.i = load i8*, i8** %.idx.i.i, align 8
  %3 = getelementptr %"borrow::Cow<str>", %"borrow::Cow<str>"* %_1, i64 0, i32 1, i64 1
  %.idx4.val.i.i = load i64, i64* %3, align 8
  %4 = icmp slt i64 %.idx4.val.i.i, 1
  br i1 %4, label %bb1, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i": ; preds = %bb2
  %5 = xor i64 %.idx4.val.i.i, -1
  %size.lobit.not.i.i.i.i.i.i.i = lshr i64 %5, 63
  %6 = icmp ne i8* %.idx.val.i.i, null
  tail call void @llvm.assume(i1 %6) #30
  tail call void @__rust_dealloc(i8* nonnull %.idx.val.i.i, i64 %.idx4.val.i.i, i64 %size.lobit.not.i.i.i.i.i.i.i) #30
  br label %bb1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&mut W as core::fmt::Write>::write_char"(%"string::String"** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, i32 noundef %c) unnamed_addr #0 {
start:
  %_5 = load %"string::String"*, %"string::String"** %self, align 8, !nonnull !2, !align !3, !noundef !2
  tail call fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %_5, i32 noundef %c)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&mut W as core::fmt::Write>::write_fmt"(%"string::String"** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, %"core::fmt::Arguments"* noalias nocapture noundef readonly dereferenceable(48) %args) unnamed_addr #0 {
start:
  %_6.i = alloca %"core::fmt::Arguments", align 8
  %self.i = alloca %"string::String"*, align 8
  %_5 = load %"string::String"*, %"string::String"** %self, align 8, !nonnull !2, !align !3, !noundef !2
  %0 = bitcast %"core::fmt::Arguments"* %args to i8*
  %1 = bitcast %"string::String"** %self.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1)
  store %"string::String"* %_5, %"string::String"** %self.i, align 8, !noalias !41
  %_3.0.i = bitcast %"string::String"** %self.i to {}*
  %2 = bitcast %"core::fmt::Arguments"* %_6.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2), !noalias !41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %2, i8* noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %3 = call noundef zeroext i1 @"core::fmt::write"({}* noundef nonnull align 1 %_3.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), %"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_6.i), !noalias !45
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %2), !noalias !41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1)
  ret i1 %3
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"<&mut W as core::fmt::Write>::write_str"(%"string::String"** noalias nocapture noundef readonly align 8 dereferenceable(8) %self, [0 x i8]* noalias nocapture noundef nonnull readonly align 1 %s.0, i64 %s.1) unnamed_addr #0 {
start:
  %_5 = load %"string::String"*, %"string::String"** %self, align 8, !nonnull !2, !align !3, !noundef !2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %0 = getelementptr inbounds %"string::String", %"string::String"* %_5, i64 0, i32 0, i32 1
  %_5.i.i.i.i.i = load i64, i64* %0, align 8, !alias.scope !58, !noalias !61
  %self.idx.i.i.i.i.i.i = getelementptr %"string::String", %"string::String"* %_5, i64 0, i32 0, i32 0, i32 1
  %self.idx.val.i.i.i.i.i.i = load i64, i64* %self.idx.i.i.i.i.i.i, align 8, !alias.scope !64, !noalias !61
  %_5.i.i.i.i.i.i.i = sub i64 %self.idx.val.i.i.i.i.i.i, %_5.i.i.i.i.i
  %1 = icmp ult i64 %_5.i.i.i.i.i.i.i, %s.1
  br i1 %1, label %bb2.i.i.i.i.i.i, label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h92eb5fee78e7a351E.exit"

bb2.i.i.i.i.i.i:                                  ; preds = %start
  %_4.i.i.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %_5, i64 0, i32 0, i32 0
  tail call fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i.i, i64 %_5.i.i.i.i.i, i64 %s.1), !noalias !61
  %len.pre.i.i.i.i = load i64, i64* %0, align 8, !alias.scope !67, !noalias !61
  br label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h92eb5fee78e7a351E.exit"

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h92eb5fee78e7a351E.exit": ; preds = %bb2.i.i.i.i.i.i, %start
  %len.i.i.i.i = phi i64 [ %_5.i.i.i.i.i, %start ], [ %len.pre.i.i.i.i, %bb2.i.i.i.i.i.i ]
  %ptr.i.i.i = getelementptr [0 x i8], [0 x i8]* %s.0, i64 0, i64 0
  %self.idx.i.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %_5, i64 0, i32 0, i32 0, i32 0
  %self.idx.val.i.i.i.i = load i8*, i8** %self.idx.i.i.i.i, align 8, !alias.scope !67, !noalias !61
  %2 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i.i, i64 %len.i.i.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* nonnull align 1 %ptr.i.i.i, i64 %s.1, i1 false), !noalias !67
  %3 = add i64 %len.i.i.i.i, %s.1
  store i64 %3, i64* %0, align 8, !alias.scope !67, !noalias !61
  ret i1 false
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias nocapture noundef align 8 dereferenceable(16) %slf, i64 %len, i64 %additional) unnamed_addr #4 personality i32 (...)* @rust_eh_personality {
start:
  %_30.i = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %self3.i = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %0 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %len, i64 %additional) #30
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  br i1 %1, label %bb5.i, label %bb6.i

bb6.i:                                            ; preds = %start
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %slf, i64 0, i32 1
  %_20.i = load i64, i64* %3, align 8, !alias.scope !68
  %v1.i = shl i64 %_20.i, 1
  %4 = icmp ugt i64 %v1.i, %2
  %.0.sroa.speculated.i.i = select i1 %4, i64 %v1.i, i64 %2
  %5 = icmp ugt i64 %.0.sroa.speculated.i.i, 8
  %.0.sroa.speculated.i49.i = select i1 %5, i64 %.0.sroa.speculated.i.i, i64 8
  %6 = xor i64 %.0.sroa.speculated.i49.i, -1
  %size.lobit.not.i.i.i = lshr i64 %6, 63
  %7 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #30, !noalias !68
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #30, !noalias !68
  %self.idx.i = getelementptr { i8*, i64 }, { i8*, i64 }* %slf, i64 0, i32 0
  %_4.i.i = icmp eq i64 %_20.i, 0
  br i1 %_4.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i", label %bb5.i.i

bb5.i.i:                                          ; preds = %bb6.i
  %self.idx.val.i = load i8*, i8** %self.idx.i, align 8, !alias.scope !68
  %9 = xor i64 %_20.i, -1
  %size.lobit.not.i.i.i.i = lshr i64 %9, 63
  %_9.sroa.0.0..sroa_idx.i.i = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i to i8**
  store i8* %self.idx.val.i, i8** %_9.sroa.0.0..sroa_idx.i.i, align 8, !alias.scope !71, !noalias !68
  %10 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i, i64 0, i32 0, i64 1
  store i64 %_20.i, i64* %10, align 8, !alias.scope !71, !noalias !68
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i": ; preds = %bb5.i.i, %bb6.i
  %size.lobit.not.i.i.sink.i.i = phi i64 [ %size.lobit.not.i.i.i.i, %bb5.i.i ], [ 0, %bb6.i ]
  %11 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i, i64 0, i32 1
  store i64 %size.lobit.not.i.i.sink.i.i, i64* %11, align 8, !alias.scope !71, !noalias !68
  call fastcc void @"alloc::raw_vec::finish_grow"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* noalias nocapture noundef nonnull dereferenceable(24) %self3.i, i64 %.0.sroa.speculated.i49.i, i64 noundef %size.lobit.not.i.i.i, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture noundef nonnull dereferenceable(24) %_30.i) #30, !noalias !68
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #30, !noalias !68
  %12 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i, i64 0, i32 0
  %_61.i = load i64, i64* %12, align 8, !range !14, !noalias !68, !noundef !2
  %trunc.not.i = icmp eq i64 %_61.i, 0
  %13 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i, i64 0, i32 1, i64 0
  %e.09.i = load i64, i64* %13, align 8, !noalias !68
  %14 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i, i64 0, i32 1, i64 1
  %e.110.i = load i64, i64* %14, align 8, !noalias !68
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #30, !noalias !68
  br i1 %trunc.not.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit.thread", label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit.thread": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i"
  %15 = inttoptr i64 %e.09.i to i8*
  store i8* %15, i8** %self.idx.i, align 8, !alias.scope !74
  store i64 %.0.sroa.speculated.i49.i, i64* %3, align 8, !alias.scope !74
  br label %_ZN5alloc7raw_vec14handle_reserve17h4a19694639821ef9E.exit

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i"
  switch i64 %e.110.i, label %bb6.i1 [
    i64 -9223372036854775807, label %_ZN5alloc7raw_vec14handle_reserve17h4a19694639821ef9E.exit
    i64 0, label %bb5.i
  ]

bb5.i:                                            ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit", %start
  tail call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

bb6.i1:                                           ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %e.09.i, i64 noundef %e.110.i) #29
  unreachable

_ZN5alloc7raw_vec14handle_reserve17h4a19694639821ef9E.exit: ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit", %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit.thread"
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve_for_push"({ i8*, i64 }* noalias nocapture noundef align 8 dereferenceable(16) %self, i64 %len) unnamed_addr #5 personality i32 (...)* @rust_eh_personality {
start:
  %_30.i = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %self3.i = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %0 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %len, i64 1) #30
  %1 = extractvalue { i64, i1 } %0, 1
  %2 = extractvalue { i64, i1 } %0, 0
  br i1 %1, label %bb5.i, label %bb6.i

bb6.i:                                            ; preds = %start
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i64 0, i32 1
  %_20.i = load i64, i64* %3, align 8, !alias.scope !77
  %v1.i = shl i64 %_20.i, 1
  %4 = icmp ugt i64 %v1.i, %2
  %.0.sroa.speculated.i.i = select i1 %4, i64 %v1.i, i64 %2
  %5 = icmp ugt i64 %.0.sroa.speculated.i.i, 8
  %.0.sroa.speculated.i49.i = select i1 %5, i64 %.0.sroa.speculated.i.i, i64 8
  %6 = xor i64 %.0.sroa.speculated.i49.i, -1
  %size.lobit.not.i.i.i = lshr i64 %6, 63
  %7 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #30, !noalias !77
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #30, !noalias !77
  %self.idx.i = getelementptr { i8*, i64 }, { i8*, i64 }* %self, i64 0, i32 0
  %_4.i.i = icmp eq i64 %_20.i, 0
  br i1 %_4.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i", label %bb5.i.i

bb5.i.i:                                          ; preds = %bb6.i
  %self.idx.val.i = load i8*, i8** %self.idx.i, align 8, !alias.scope !77
  %9 = xor i64 %_20.i, -1
  %size.lobit.not.i.i.i.i = lshr i64 %9, 63
  %_9.sroa.0.0..sroa_idx.i.i = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i to i8**
  store i8* %self.idx.val.i, i8** %_9.sroa.0.0..sroa_idx.i.i, align 8, !alias.scope !80, !noalias !77
  %10 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i, i64 0, i32 0, i64 1
  store i64 %_20.i, i64* %10, align 8, !alias.scope !80, !noalias !77
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i": ; preds = %bb5.i.i, %bb6.i
  %size.lobit.not.i.i.sink.i.i = phi i64 [ %size.lobit.not.i.i.i.i, %bb5.i.i ], [ 0, %bb6.i ]
  %11 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i, i64 0, i32 1
  store i64 %size.lobit.not.i.i.sink.i.i, i64* %11, align 8, !alias.scope !80, !noalias !77
  call fastcc void @"alloc::raw_vec::finish_grow"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* noalias nocapture noundef nonnull dereferenceable(24) %self3.i, i64 %.0.sroa.speculated.i49.i, i64 noundef %size.lobit.not.i.i.i, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture noundef nonnull dereferenceable(24) %_30.i) #30, !noalias !77
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #30, !noalias !77
  %12 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i, i64 0, i32 0
  %_61.i = load i64, i64* %12, align 8, !range !14, !noalias !77, !noundef !2
  %trunc.not.i = icmp eq i64 %_61.i, 0
  %13 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i, i64 0, i32 1, i64 0
  %e.09.i = load i64, i64* %13, align 8, !noalias !77
  %14 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i, i64 0, i32 1, i64 1
  %e.110.i = load i64, i64* %14, align 8, !noalias !77
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #30, !noalias !77
  br i1 %trunc.not.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit.thread", label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit.thread": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i"
  %15 = inttoptr i64 %e.09.i to i8*
  store i8* %15, i8** %self.idx.i, align 8, !alias.scope !83
  store i64 %.0.sroa.speculated.i49.i, i64* %3, align 8, !alias.scope !83
  br label %_ZN5alloc7raw_vec14handle_reserve17h4a19694639821ef9E.exit

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i"
  switch i64 %e.110.i, label %bb6.i1 [
    i64 -9223372036854775807, label %_ZN5alloc7raw_vec14handle_reserve17h4a19694639821ef9E.exit
    i64 0, label %bb5.i
  ]

bb5.i:                                            ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit", %start
  tail call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

bb6.i1:                                           ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %e.09.i, i64 noundef %e.110.i) #29
  unreachable

_ZN5alloc7raw_vec14handle_reserve17h4a19694639821ef9E.exit: ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit", %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E.exit.thread"
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @"alloc::raw_vec::finish_grow"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* noalias nocapture noundef writeonly dereferenceable(24) %0, i64 %new_layout.0, i64 noundef %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture noundef readonly dereferenceable(24) %current_memory) unnamed_addr #6 {
start:
  %1 = icmp eq i64 %new_layout.1, 0
  br i1 %1, label %bb5, label %bb3

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !31, !noundef !2
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb10, label %bb11

bb5:                                              ; preds = %start
  %4 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %0, i64 0, i32 1, i64 0
  store i64 %new_layout.0, i64* %4, align 8
  br label %bb18

bb18:                                             ; preds = %bb1.i, %bb3.i5, %bb5
  %.sink1.i.sink = phi i64 [ 0, %bb5 ], [ %new_layout.1, %bb1.i ], [ %new_layout.0, %bb3.i5 ]
  %.sink.i6.sink = phi i64 [ 1, %bb5 ], [ 1, %bb1.i ], [ 0, %bb3.i5 ]
  %5 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %0, i64 0, i32 1, i64 1
  store i64 %.sink1.i.sink, i64* %5, align 8
  %6 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %0, i64 0, i32 0
  store i64 %.sink.i6.sink, i64* %6, align 8
  ret void

bb11:                                             ; preds = %bb3
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to i8**
  %ptr = load i8*, i8** %7, align 8, !nonnull !2, !noundef !2
  %8 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory, i64 0, i32 0, i64 1
  %9 = load i64, i64* %8, align 8
  %_31 = icmp eq i64 %3, %new_layout.1
  tail call void @llvm.assume(i1 %_31)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %bb1.i.i, label %bb4.i.i

bb1.i.i:                                          ; preds = %bb11
  %11 = icmp eq i64 %new_layout.0, 0
  br i1 %11, label %bb2.i.i.i, label %bb4.i.i.i

bb2.i.i.i:                                        ; preds = %bb1.i.i
  %12 = inttoptr i64 %new_layout.1 to [0 x i8]*
  %13 = getelementptr [0 x i8], [0 x i8]* %12, i64 0, i64 0
  br label %bb15

bb4.i.i.i:                                        ; preds = %bb1.i.i
  %14 = tail call i8* @__rust_alloc(i64 %new_layout.0, i64 %new_layout.1) #30
  br label %bb15

bb4.i.i:                                          ; preds = %bb11
  %_23.i.i = icmp ule i64 %9, %new_layout.0
  tail call void @llvm.assume(i1 %_23.i.i) #30
  %raw_ptr.i.i = tail call i8* @__rust_realloc(i8* nonnull %ptr, i64 %9, i64 %new_layout.1, i64 %new_layout.0) #30
  br label %bb15

bb10:                                             ; preds = %bb3
  %15 = icmp eq i64 %new_layout.0, 0
  br i1 %15, label %bb2.i.i, label %bb4.i.i3

bb2.i.i:                                          ; preds = %bb10
  %16 = inttoptr i64 %new_layout.1 to [0 x i8]*
  %17 = getelementptr [0 x i8], [0 x i8]* %16, i64 0, i64 0
  br label %bb15

bb4.i.i3:                                         ; preds = %bb10
  %18 = tail call i8* @__rust_alloc(i64 %new_layout.0, i64 %new_layout.1) #30
  br label %bb15

bb15:                                             ; preds = %bb4.i.i3, %bb2.i.i, %bb4.i.i, %bb4.i.i.i, %bb2.i.i.i
  %.sroa.0.0.i.i.pn = phi i8* [ %raw_ptr.i.i, %bb4.i.i ], [ %13, %bb2.i.i.i ], [ %14, %bb4.i.i.i ], [ %17, %bb2.i.i ], [ %18, %bb4.i.i3 ]
  %19 = icmp eq i8* %.sroa.0.0.i.i.pn, null
  br i1 %19, label %bb1.i, label %bb3.i5

bb3.i5:                                           ; preds = %bb15
  %20 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %0, i64 0, i32 1
  %21 = bitcast [2 x i64]* %20 to i8**
  store i8* %.sroa.0.0.i.i.pn, i8** %21, align 8, !alias.scope !86, !noalias !89
  br label %bb18

bb1.i:                                            ; preds = %bb15
  %22 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %0, i64 0, i32 1, i64 0
  store i64 %new_layout.0, i64* %22, align 8, !alias.scope !86, !noalias !89
  br label %bb18
}

; Function Attrs: noreturn nonlazybind uwtable
define void @"alloc::raw_vec::capacity_overflow"() unnamed_addr #7 {
start:
  %_2 = alloca %"core::fmt::Arguments", align 8
  %0 = bitcast %"core::fmt::Arguments"* %_2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0)
  %1 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_2, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc8171 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %1, align 8, !alias.scope !91, !noalias !94
  %2 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_2, i64 0, i32 0, i32 1
  store i64 1, i64* %2, align 8, !alias.scope !91, !noalias !94
  %3 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_2, i64 0, i32 1, i32 0
  store i64* null, i64** %3, align 8, !alias.scope !91, !noalias !94
  %4 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_2, i64 0, i32 2, i32 0
  store [0 x { i8*, i64* }]* bitcast (<{}>* @alloc8775 to [0 x { i8*, i64* }]*), [0 x { i8*, i64* }]** %4, align 8, !alias.scope !91, !noalias !94
  %5 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_2, i64 0, i32 2, i32 1
  store i64 0, i64* %5, align 8, !alias.scope !91, !noalias !94
  call void @"core::panicking::panic_fmt"(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_2, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8815 to %"core::panic::location::Location"*)) #29
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @"alloc::alloc::handle_alloc_error"(i64 %layout.0, i64 noundef %layout.1) unnamed_addr #8 {
start:
  tail call fastcc void @"core::intrinsics::const_eval_select"(i64 %layout.0, i64 noundef %layout.1) #29
  unreachable
}

; Function Attrs: noreturn nonlazybind uwtable
define void @"alloc::alloc::handle_alloc_error::ct_error"(i64 %_1.0, i64 noundef %_1.1) unnamed_addr #7 {
start:
  %_3 = alloca %"core::fmt::Arguments", align 8
  %0 = bitcast %"core::fmt::Arguments"* %_3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0)
  %1 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_3, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc88 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %1, align 8, !alias.scope !97, !noalias !100
  %2 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_3, i64 0, i32 0, i32 1
  store i64 1, i64* %2, align 8, !alias.scope !97, !noalias !100
  %3 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_3, i64 0, i32 1, i32 0
  store i64* null, i64** %3, align 8, !alias.scope !97, !noalias !100
  %4 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_3, i64 0, i32 2, i32 0
  store [0 x { i8*, i64* }]* bitcast (<{}>* @alloc8775 to [0 x { i8*, i64* }]*), [0 x { i8*, i64* }]** %4, align 8, !alias.scope !97, !noalias !100
  %5 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_3, i64 0, i32 2, i32 1
  store i64 0, i64* %5, align 8, !alias.scope !97, !noalias !100
  call void @"core::panicking::panic_fmt"(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_3, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8817 to %"core::panic::location::Location"*)) #29
  unreachable
}

; Function Attrs: noreturn nonlazybind uwtable
define void @"alloc::alloc::handle_alloc_error::rt_error"(i64 %0, i64 noundef %1) unnamed_addr #7 {
start:
  tail call void @__rust_alloc_error_handler(i64 %0, i64 %1) #29
  unreachable
}

; Function Attrs: noreturn nonlazybind uwtable
define void @__rdl_oom(i64 %0, i64 %_align) unnamed_addr #7 {
start:
  %_11 = alloca [1 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %size = alloca i64, align 8
  store i64 %0, i64* %size, align 8
  %1 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1)
  %2 = bitcast [1 x { i8*, i64* }]* %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2)
  %3 = bitcast [1 x { i8*, i64* }]* %_11 to i64**
  store i64* %size, i64** %3, align 8
  %4 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_11, i64 0, i64 0, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %4, align 8
  %5 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc8189 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %5, align 8, !alias.scope !103, !noalias !106
  %6 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 1
  store i64 2, i64* %6, align 8, !alias.scope !103, !noalias !106
  %7 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 1, i32 0
  store i64* null, i64** %7, align 8, !alias.scope !103, !noalias !106
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 0
  %9 = bitcast [0 x { i8*, i64* }]** %8 to [1 x { i8*, i64* }]**
  store [1 x { i8*, i64* }]* %_11, [1 x { i8*, i64* }]** %9, align 8, !alias.scope !103, !noalias !106
  %10 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 1
  store i64 1, i64* %10, align 8, !alias.scope !103, !noalias !106
  call void @"core::panicking::panic_fmt"(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_4, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8819 to %"core::panic::location::Location"*)) #29
  unreachable
}

; Function Attrs: noreturn nonlazybind uwtable
define void @__rg_oom(i64 %size, i64 %align) unnamed_addr #7 {
start:
  tail call void @rust_oom(i64 %size, i64 noundef %align) #29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn
define { [0 x i8]*, i64 } @"<alloc::boxed::Box<str> as core::default::Default>::default"() unnamed_addr #9 {
start:
  ret { [0 x i8]*, i64 } { [0 x i8]* inttoptr (i64 1 to [0 x i8]*), i64 0 }
}

; Function Attrs: nonlazybind uwtable
define { [0 x i8]*, i64 } @"<alloc::boxed::Box<str> as core::clone::Clone>::clone"({ [0 x i8]*, i64 }* noalias nocapture noundef readonly align 8 dereferenceable(16) %self) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i64 0, i32 0
  %_7.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2, !align !9, !noundef !2
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i64 0, i32 1
  %_7.1 = load i64, i64* %1, align 8
  %_6.i.i.i = icmp eq i64 %_7.1, 0
  br i1 %_6.i.i.i, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE.exit", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %start
  %2 = xor i64 %_7.1, -1
  %size.lobit.not.i.i.i.i.i = lshr i64 %2, 63
  %3 = icmp slt i64 %_7.1, 0
  br i1 %3, label %bb8.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i"

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !109
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i": ; preds = %bb6.i.i.i
  %4 = tail call i8* @__rust_alloc(i64 %_7.1, i64 %size.lobit.not.i.i.i.i.i) #30, !noalias !109
  %5 = icmp eq i8* %4, null
  br i1 %5, label %bb20.i.i.i, label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE.exit"

bb20.i.i.i:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %_7.1, i64 noundef %size.lobit.not.i.i.i.i.i) #29, !noalias !109
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i", %start
  %.sroa.0.0.i.i.i = phi i8* [ %4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i" ], [ inttoptr (i64 1 to i8*), %start ]
  %src.i.i = getelementptr [0 x i8], [0 x i8]* %_7.0, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.sroa.0.0.i.i.i, i8* nonnull align 1 %src.i.i, i64 %_7.1, i1 false)
  %6 = bitcast i8* %.sroa.0.0.i.i.i to [0 x i8]*
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %6, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %_7.1, 1
  ret { [0 x i8]*, i64 } %8
}

; Function Attrs: nonlazybind uwtable
define void @"<alloc::borrow::Cow<str> as core::ops::arith::AddAssign<&str>>::add_assign"(%"borrow::Cow<str>"* noalias noundef align 8 dereferenceable(32) %self, [0 x i8]* noalias noundef nonnull readonly align 1 %rhs.0, i64 %rhs.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %s = alloca %"string::String", align 8
  %0 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %self, i64 0, i32 0
  %_2.i = load i64, i64* %0, align 8, !range !14, !alias.scope !114, !noundef !2
  %trunc.not.i = icmp eq i64 %_2.i, 0
  %1 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %self, i64 0, i32 1, i64 2
  %2 = getelementptr %"borrow::Cow<str>", %"borrow::Cow<str>"* %self, i64 0, i32 1, i64 1
  %.sroa.0.0.in.in.i = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %self, i64 0, i32 1
  %.sroa.0.0.in.i = bitcast [3 x i64]* %.sroa.0.0.in.in.i to [0 x i8]**
  %.sroa.0.0.i = load [0 x i8]*, [0 x i8]** %.sroa.0.0.in.i, align 8, !alias.scope !114, !nonnull !2
  %.val.i = load i64, i64* %2, align 8, !alias.scope !114
  %.val1.i = load i64, i64* %1, align 8, !alias.scope !114
  %.sroa.3.0.i = select i1 %trunc.not.i, i64 %.val.i, i64 %.val1.i
  %3 = icmp eq i64 %.sroa.3.0.i, 0
  %4 = getelementptr [0 x i8], [0 x i8]* %.sroa.0.0.i, i64 0, i64 0
  br i1 %3, label %bb2, label %bb3

bb2:                                              ; preds = %start
  %5 = icmp slt i64 %.val.i, 1
  %or.cond = select i1 %trunc.not.i, i1 true, i1 %5
  br i1 %or.cond, label %bb12, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i": ; preds = %bb2
  %6 = xor i64 %.val.i, -1
  %size.lobit.not.i.i.i.i.i.i.i.i = lshr i64 %6, 63
  tail call void @__rust_dealloc(i8* nonnull %4, i64 %.val.i, i64 %size.lobit.not.i.i.i.i.i.i.i.i) #30
  br label %bb12

bb3:                                              ; preds = %start
  %_9.not = icmp eq i64 %rhs.1, 0
  br i1 %_9.not, label %bb9, label %bb4

bb4:                                              ; preds = %bb3
  br i1 %trunc.not.i, label %bb5, label %"_ZN5alloc6borrow12Cow$LT$B$GT$6to_mut17h40aa164feab23e8aE.exit"

bb5:                                              ; preds = %bb4
  %7 = bitcast %"string::String"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7)
  %capacity = add i64 %.val.i, %rhs.1
  %_6.i = icmp eq i64 %capacity, 0
  br i1 %_6.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit", label %bb6.i

bb6.i:                                            ; preds = %bb5
  %8 = xor i64 %capacity, -1
  %size.lobit.not.i.i.i = lshr i64 %8, 63
  %9 = icmp slt i64 %capacity, 0
  br i1 %9, label %bb8.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"

bb8.i:                                            ; preds = %bb6.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i": ; preds = %bb6.i
  %10 = tail call i8* @__rust_alloc(i64 %capacity, i64 %size.lobit.not.i.i.i) #30
  %11 = icmp eq i8* %10, null
  br i1 %11, label %bb20.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"

bb20.i:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %capacity, i64 noundef %size.lobit.not.i.i.i) #29
  unreachable

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i", %bb5
  %.sroa.0.0.i76 = phi i8* [ %10, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i" ], [ inttoptr (i64 1 to i8*), %bb5 ]
  %_50.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0, i32 0
  store i8* %.sroa.0.0.i76, i8** %_50.sroa.0.0..sroa_idx, align 8
  %_50.sroa.4.0..sroa_idx36 = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 %capacity, i64* %_50.sroa.4.0..sroa_idx36, align 8
  %_50.sroa.5.0..sroa_idx38 = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 1
  store i64 0, i64* %_50.sroa.5.0..sroa_idx38, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %12 = icmp ult i64 %capacity, %.val.i
  br i1 %12, label %bb2.i.i.i.i.i, label %bb22

bb2.i.i.i.i.i:                                    ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"
  %_4.i.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i, i64 0, i64 %.val.i)
          to label %.noexc unwind label %bb15

.noexc:                                           ; preds = %bb2.i.i.i.i.i
  %len.pre.i.i.i = load i64, i64* %_50.sroa.5.0..sroa_idx38, align 8, !alias.scope !126, !noalias !127
  %self.idx.val.i.i.i.pre = load i8*, i8** %_50.sroa.0.0..sroa_idx, align 8, !alias.scope !126, !noalias !127
  br label %bb22

"_ZN5alloc6borrow12Cow$LT$B$GT$6to_mut17h40aa164feab23e8aE.exit": ; preds = %bb6.thread, %bb4
  %self.idx.val.i.i.i.i.i81 = phi i64 [ %self.idx.val.i.i.i.i.i81.pre, %bb6.thread ], [ %.val.i, %bb4 ]
  %_5.i.i.i.i79 = phi i64 [ %_5.i.i.i.i79.pre, %bb6.thread ], [ %.val1.i, %bb4 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %_5.i.i.i.i.i.i82 = sub i64 %self.idx.val.i.i.i.i.i81, %_5.i.i.i.i79
  %13 = icmp ult i64 %_5.i.i.i.i.i.i82, %rhs.1
  br i1 %13, label %bb2.i.i.i.i.i85, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit90"

bb2.i.i.i.i.i85:                                  ; preds = %"_ZN5alloc6borrow12Cow$LT$B$GT$6to_mut17h40aa164feab23e8aE.exit"
  %_4.i.i.i.i83 = bitcast [3 x i64]* %.sroa.0.0.in.in.i to { i8*, i64 }*
  tail call fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i83, i64 %_5.i.i.i.i79, i64 %rhs.1), !noalias !138
  %len.pre.i.i.i84 = load i64, i64* %1, align 8, !alias.scope !140, !noalias !138
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit90"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit90": ; preds = %bb2.i.i.i.i.i85, %"_ZN5alloc6borrow12Cow$LT$B$GT$6to_mut17h40aa164feab23e8aE.exit"
  %len.i.i.i86 = phi i64 [ %_5.i.i.i.i79, %"_ZN5alloc6borrow12Cow$LT$B$GT$6to_mut17h40aa164feab23e8aE.exit" ], [ %len.pre.i.i.i84, %bb2.i.i.i.i.i85 ]
  %ptr.i.i87 = getelementptr [0 x i8], [0 x i8]* %rhs.0, i64 0, i64 0
  %self.idx.i.i.i88 = bitcast [3 x i64]* %.sroa.0.0.in.in.i to i8**
  %self.idx.val.i.i.i89 = load i8*, i8** %self.idx.i.i.i88, align 8, !alias.scope !140, !noalias !138
  %14 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i89, i64 %len.i.i.i86
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* nonnull align 1 %ptr.i.i87, i64 %rhs.1, i1 false), !noalias !140
  %15 = add i64 %len.i.i.i86, %rhs.1
  store i64 %15, i64* %1, align 8, !alias.scope !140, !noalias !138
  br label %bb9

bb22:                                             ; preds = %.noexc, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"
  %self.idx.val.i.i.i = phi i8* [ %.sroa.0.0.i76, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit" ], [ %self.idx.val.i.i.i.pre, %.noexc ]
  %len.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit" ], [ %len.pre.i.i.i, %.noexc ]
  %ptr.i.i = getelementptr [0 x i8], [0 x i8]* %.sroa.0.0.i, i64 0, i64 0
  %16 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i, i64 %len.i.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* nonnull align 1 %ptr.i.i, i64 %.val.i, i1 false), !noalias !126
  %17 = add i64 %len.i.i.i, %.val.i
  store i64 %17, i64* %_50.sroa.5.0..sroa_idx38, align 8, !alias.scope !126, !noalias !127
  %_2.i91 = load i64, i64* %0, align 8, !range !14, !noundef !2
  %18 = icmp eq i64 %_2.i91, 0
  br i1 %18, label %bb6.thread, label %bb2.i95

bb2.i95:                                          ; preds = %bb22
  %.idx.i.i.i92 = bitcast [3 x i64]* %.sroa.0.0.in.in.i to i8**
  %.idx.val.i.i.i93 = load i8*, i8** %.idx.i.i.i92, align 8
  %.idx4.val.i.i.i94 = load i64, i64* %2, align 8
  %19 = icmp slt i64 %.idx4.val.i.i.i94, 1
  br i1 %19, label %bb6.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i97"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i97": ; preds = %bb2.i95
  %20 = xor i64 %.idx4.val.i.i.i94, -1
  %size.lobit.not.i.i.i.i.i.i.i.i96 = lshr i64 %20, 63
  %21 = icmp ne i8* %.idx.val.i.i.i93, null
  tail call void @llvm.assume(i1 %21) #30
  tail call void @__rust_dealloc(i8* nonnull %.idx.val.i.i.i93, i64 %.idx4.val.i.i.i94, i64 %size.lobit.not.i.i.i.i.i.i.i.i96) #30
  br label %bb6.thread

bb6.thread:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i97", %bb2.i95, %bb22
  store i64 1, i64* %0, align 8
  %_22.sroa.5.0..sroa_cast24 = bitcast [3 x i64]* %.sroa.0.0.in.in.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_22.sroa.5.0..sroa_cast24, i8* noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7)
  %_5.i.i.i.i79.pre = load i64, i64* %1, align 8, !alias.scope !141, !noalias !138
  %self.idx.val.i.i.i.i.i81.pre = load i64, i64* %2, align 8, !alias.scope !144, !noalias !138
  br label %"_ZN5alloc6borrow12Cow$LT$B$GT$6to_mut17h40aa164feab23e8aE.exit"

bb15:                                             ; preds = %bb2.i.i.i.i.i
  %22 = landingpad { i8*, i32 }
          cleanup
  call fastcc void @"core::ptr::drop_in_place<alloc::string::String>"(%"string::String"* nonnull %s) #31
  resume { i8*, i32 } %22

bb9:                                              ; preds = %bb12, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit90", %bb3
  ret void

bb12:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i", %bb2
  store i64 0, i64* %0, align 8
  store [0 x i8]* %rhs.0, [0 x i8]** %.sroa.0.0.in.i, align 8
  store i64 %rhs.1, i64* %2, align 8
  br label %bb9
}

; Function Attrs: nonlazybind uwtable
define void @"<alloc::borrow::Cow<str> as core::ops::arith::AddAssign>::add_assign"(%"borrow::Cow<str>"* noalias noundef align 8 dereferenceable(32) %self, %"borrow::Cow<str>"* noalias nocapture noundef readonly dereferenceable(32) %rhs) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
bb1:
  %s = alloca %"string::String", align 8
  %0 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %self, i64 0, i32 0
  %_2.i = load i64, i64* %0, align 8, !range !14, !alias.scope !147, !noundef !2
  %trunc.not.i = icmp eq i64 %_2.i, 0
  %1 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %self, i64 0, i32 1, i64 2
  %2 = getelementptr %"borrow::Cow<str>", %"borrow::Cow<str>"* %self, i64 0, i32 1, i64 1
  %.sroa.0.0.in.in.i = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %self, i64 0, i32 1
  %.sroa.0.0.in.i = bitcast [3 x i64]* %.sroa.0.0.in.in.i to [0 x i8]**
  %.sroa.0.0.i = load [0 x i8]*, [0 x i8]** %.sroa.0.0.in.i, align 8, !alias.scope !147, !nonnull !2
  %.val.i = load i64, i64* %2, align 8, !alias.scope !147
  %.val1.i = load i64, i64* %1, align 8, !alias.scope !147
  %.sroa.3.0.i = select i1 %trunc.not.i, i64 %.val.i, i64 %.val1.i
  %3 = icmp eq i64 %.sroa.3.0.i, 0
  %4 = getelementptr [0 x i8], [0 x i8]* %.sroa.0.0.i, i64 0, i64 0
  br i1 %3, label %bb2, label %bb4

cleanup:                                          ; preds = %bb2.i.i.i.i.i110, %bb20.i, %bb8.i
  %5 = landingpad { i8*, i32 }
          cleanup
  br label %bb22

bb2:                                              ; preds = %bb1
  %6 = bitcast %"borrow::Cow<str>"* %rhs to i8*
  %7 = icmp slt i64 %.val.i, 1
  %or.cond = select i1 %trunc.not.i, i1 true, i1 %7
  br i1 %or.cond, label %bb16, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i": ; preds = %bb2
  %8 = xor i64 %.val.i, -1
  %size.lobit.not.i.i.i.i.i.i.i.i = lshr i64 %8, 63
  tail call void @__rust_dealloc(i8* nonnull %4, i64 %.val.i, i64 %size.lobit.not.i.i.i.i.i.i.i.i) #30
  br label %bb16

bb4:                                              ; preds = %bb1
  %9 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %rhs, i64 0, i32 0
  %_2.i66 = load i64, i64* %9, align 8, !range !14, !alias.scope !150, !noundef !2
  %trunc.not.i67 = icmp eq i64 %_2.i66, 0
  %10 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %rhs, i64 0, i32 1, i64 2
  %11 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %rhs, i64 0, i32 1, i64 1
  %.sroa.0.0.in.in.i68 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %rhs, i64 0, i32 1
  %.sroa.0.0.in.i69 = bitcast [3 x i64]* %.sroa.0.0.in.in.i68 to [0 x i8]**
  %.sroa.0.0.i70 = load [0 x i8]*, [0 x i8]** %.sroa.0.0.in.i69, align 8, !alias.scope !150, !nonnull !2
  %.val.i71 = load i64, i64* %11, align 8, !alias.scope !150
  %.val1.i72 = load i64, i64* %10, align 8, !alias.scope !150
  %.sroa.3.0.i73 = select i1 %trunc.not.i67, i64 %.val.i71, i64 %.val1.i72
  %_8.not = icmp eq i64 %.sroa.3.0.i73, 0
  br i1 %_8.not, label %bb19, label %bb5

bb5:                                              ; preds = %bb4
  br i1 %trunc.not.i, label %bb7, label %bb10

bb7:                                              ; preds = %bb5
  %12 = bitcast %"string::String"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12)
  %capacity = add i64 %.sroa.3.0.i73, %.val.i
  %_6.i = icmp eq i64 %capacity, 0
  br i1 %_6.i, label %bb28, label %bb6.i

bb6.i:                                            ; preds = %bb7
  %13 = xor i64 %capacity, -1
  %size.lobit.not.i.i.i = lshr i64 %13, 63
  %14 = icmp slt i64 %capacity, 0
  br i1 %14, label %bb8.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"

bb8.i:                                            ; preds = %bb6.i
  invoke void @"alloc::raw_vec::capacity_overflow"() #29
          to label %.noexc85 unwind label %cleanup

.noexc85:                                         ; preds = %bb8.i
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i": ; preds = %bb6.i
  %15 = tail call i8* @__rust_alloc(i64 %capacity, i64 %size.lobit.not.i.i.i) #30
  %16 = icmp eq i8* %15, null
  br i1 %16, label %bb20.i, label %bb28

bb20.i:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  invoke void @"alloc::alloc::handle_alloc_error"(i64 %capacity, i64 noundef %size.lobit.not.i.i.i) #29
          to label %.noexc86 unwind label %cleanup

.noexc86:                                         ; preds = %bb20.i
  unreachable

bb28:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i", %bb7
  %.sroa.0.0.i84 = phi i8* [ %15, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i" ], [ inttoptr (i64 1 to i8*), %bb7 ]
  %_57.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0, i32 0
  store i8* %.sroa.0.0.i84, i8** %_57.sroa.0.0..sroa_idx, align 8
  %_57.sroa.4.0..sroa_idx23 = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 %capacity, i64* %_57.sroa.4.0..sroa_idx23, align 8
  %_57.sroa.5.0..sroa_idx25 = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 1
  store i64 0, i64* %_57.sroa.5.0..sroa_idx25, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %17 = icmp ult i64 %capacity, %.val.i
  br i1 %17, label %bb2.i.i.i.i.i, label %bb29

bb2.i.i.i.i.i:                                    ; preds = %bb28
  %_4.i.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i, i64 0, i64 %.val.i)
          to label %.noexc87 unwind label %bb20

.noexc87:                                         ; preds = %bb2.i.i.i.i.i
  %len.pre.i.i.i = load i64, i64* %_57.sroa.5.0..sroa_idx25, align 8, !alias.scope !162, !noalias !163
  %self.idx.val.i.i.i.pre = load i8*, i8** %_57.sroa.0.0..sroa_idx, align 8, !alias.scope !162, !noalias !163
  br label %bb29

bb29:                                             ; preds = %.noexc87, %bb28
  %self.idx.val.i.i.i = phi i8* [ %.sroa.0.0.i84, %bb28 ], [ %self.idx.val.i.i.i.pre, %.noexc87 ]
  %len.i.i.i = phi i64 [ 0, %bb28 ], [ %len.pre.i.i.i, %.noexc87 ]
  %ptr.i.i = getelementptr [0 x i8], [0 x i8]* %.sroa.0.0.i, i64 0, i64 0
  %18 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i, i64 %len.i.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* nonnull align 1 %ptr.i.i, i64 %.val.i, i1 false), !noalias !162
  %19 = add i64 %len.i.i.i, %.val.i
  store i64 %19, i64* %_57.sroa.5.0..sroa_idx25, align 8, !alias.scope !162, !noalias !163
  %_2.i88 = load i64, i64* %0, align 8, !range !14, !noundef !2
  %20 = icmp eq i64 %_2.i88, 0
  br i1 %20, label %bb8.thread, label %bb2.i92

bb2.i92:                                          ; preds = %bb29
  %.idx.i.i.i89 = bitcast [3 x i64]* %.sroa.0.0.in.in.i to i8**
  %.idx.val.i.i.i90 = load i8*, i8** %.idx.i.i.i89, align 8
  %.idx4.val.i.i.i91 = load i64, i64* %2, align 8
  %21 = icmp slt i64 %.idx4.val.i.i.i91, 1
  br i1 %21, label %bb8.thread, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i94"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i94": ; preds = %bb2.i92
  %22 = xor i64 %.idx4.val.i.i.i91, -1
  %size.lobit.not.i.i.i.i.i.i.i.i93 = lshr i64 %22, 63
  %23 = icmp ne i8* %.idx.val.i.i.i90, null
  tail call void @llvm.assume(i1 %23) #30
  tail call void @__rust_dealloc(i8* nonnull %.idx.val.i.i.i90, i64 %.idx4.val.i.i.i91, i64 %size.lobit.not.i.i.i.i.i.i.i.i93) #30
  br label %bb8.thread

bb8.thread:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i94", %bb2.i92, %bb29
  store i64 1, i64* %0, align 8
  %_25.sroa.5.0..sroa_cast10 = bitcast [3 x i64]* %.sroa.0.0.in.in.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_25.sroa.5.0..sroa_cast10, i8* noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12)
  %_5.i.i.i.i104.pre = load i64, i64* %1, align 8, !alias.scope !165, !noalias !174
  %self.idx.val.i.i.i.i.i106.pre = load i64, i64* %2, align 8, !alias.scope !176, !noalias !174
  br label %bb10

bb20:                                             ; preds = %bb2.i.i.i.i.i
  %24 = landingpad { i8*, i32 }
          cleanup
  call fastcc void @"core::ptr::drop_in_place<alloc::string::String>"(%"string::String"* nonnull %s) #31
  br label %bb22

bb10:                                             ; preds = %bb8.thread, %bb5
  %self.idx.val.i.i.i.i.i106 = phi i64 [ %self.idx.val.i.i.i.i.i106.pre, %bb8.thread ], [ %.val.i, %bb5 ]
  %_5.i.i.i.i104 = phi i64 [ %_5.i.i.i.i104.pre, %bb8.thread ], [ %.val1.i, %bb5 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %_5.i.i.i.i.i.i107 = sub i64 %self.idx.val.i.i.i.i.i106, %_5.i.i.i.i104
  %25 = icmp ult i64 %_5.i.i.i.i.i.i107, %.sroa.3.0.i73
  br i1 %25, label %bb2.i.i.i.i.i110, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit116"

bb2.i.i.i.i.i110:                                 ; preds = %bb10
  %_4.i.i.i.i108 = bitcast [3 x i64]* %.sroa.0.0.in.in.i to { i8*, i64 }*
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i108, i64 %_5.i.i.i.i104, i64 %.sroa.3.0.i73)
          to label %.noexc115 unwind label %cleanup

.noexc115:                                        ; preds = %bb2.i.i.i.i.i110
  %len.pre.i.i.i109 = load i64, i64* %1, align 8, !alias.scope !182, !noalias !174
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit116"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit116": ; preds = %.noexc115, %bb10
  %len.i.i.i111 = phi i64 [ %_5.i.i.i.i104, %bb10 ], [ %len.pre.i.i.i109, %.noexc115 ]
  %ptr.i.i112 = getelementptr [0 x i8], [0 x i8]* %.sroa.0.0.i70, i64 0, i64 0
  %self.idx.i.i.i113 = bitcast [3 x i64]* %.sroa.0.0.in.in.i to i8**
  %self.idx.val.i.i.i114 = load i8*, i8** %self.idx.i.i.i113, align 8, !alias.scope !182, !noalias !174
  %26 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i114, i64 %len.i.i.i111
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* nonnull align 1 %ptr.i.i112, i64 %.sroa.3.0.i73, i1 false), !noalias !182
  %27 = add i64 %len.i.i.i111, %.sroa.3.0.i73
  store i64 %27, i64* %1, align 8, !alias.scope !182, !noalias !174
  br label %bb19

bb16:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i", %bb2
  %28 = bitcast %"borrow::Cow<str>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %28, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  br label %bb13

bb22:                                             ; preds = %bb20, %cleanup
  %.pn62.ph = phi { i8*, i32 } [ %24, %bb20 ], [ %5, %cleanup ]
  tail call fastcc void @"core::ptr::drop_in_place<alloc::borrow::Cow<str>>"(%"borrow::Cow<str>"* nonnull %rhs) #31
  resume { i8*, i32 } %.pn62.ph

bb13:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i123", %bb2.i121, %bb19, %bb16
  ret void

bb19:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit116", %bb4
  br i1 %trunc.not.i67, label %bb13, label %bb2.i121

bb2.i121:                                         ; preds = %bb19
  %.idx.i.i.i118 = bitcast [3 x i64]* %.sroa.0.0.in.in.i68 to i8**
  %.idx.val.i.i.i119 = load i8*, i8** %.idx.i.i.i118, align 8
  %29 = icmp slt i64 %.val.i71, 1
  br i1 %29, label %bb13, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i123"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i.i123": ; preds = %bb2.i121
  %30 = xor i64 %.val.i71, -1
  %size.lobit.not.i.i.i.i.i.i.i.i122 = lshr i64 %30, 63
  %31 = icmp ne i8* %.idx.val.i.i.i119, null
  tail call void @llvm.assume(i1 %31) #30
  tail call void @__rust_dealloc(i8* nonnull %.idx.val.i.i.i119, i64 %.val.i71, i64 %size.lobit.not.i.i.i.i.i.i.i.i122) #30
  br label %bb13
}

; Function Attrs: noreturn nounwind nonlazybind uwtable
define void @"<alloc::collections::btree::mem::replace::PanicGuard as core::ops::drop::Drop>::drop"(%"collections::btree::mem::replace::PanicGuard"* noalias nocapture noundef nonnull readnone align 1 %self) unnamed_addr #10 {
start:
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind uwtable willreturn writeonly
define void @"alloc::collections::btree::node::splitpoint"({ i64, { i64, i64 } }* noalias nocapture noundef writeonly sret({ i64, { i64, i64 } }) dereferenceable(24) %0, i64 %edge_idx) unnamed_addr #11 {
start:
  %_3 = icmp ult i64 %edge_idx, 5
  br i1 %_3, label %bb7, label %bb2

bb2:                                              ; preds = %start
  switch i64 %edge_idx, label %bb3 [
    i64 5, label %bb7
    i64 6, label %bb6
  ]

bb7:                                              ; preds = %bb6, %bb3, %bb2, %start
  %.sink12 = phi i64 [ 5, %bb6 ], [ 6, %bb3 ], [ %edge_idx, %bb2 ], [ 4, %start ]
  %.sink10 = phi i64 [ 1, %bb6 ], [ 1, %bb3 ], [ 0, %bb2 ], [ 0, %start ]
  %.sink = phi i64 [ 0, %bb6 ], [ %_10, %bb3 ], [ %edge_idx, %bb2 ], [ %edge_idx, %start ]
  %1 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i64 0, i32 0
  store i64 %.sink12, i64* %1, align 8
  %2 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i64 0, i32 1, i32 0
  store i64 %.sink10, i64* %2, align 8
  %3 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i64 0, i32 1, i32 1
  store i64 %.sink, i64* %3, align 8
  ret void

bb3:                                              ; preds = %bb2
  %_10 = add i64 %edge_idx, -7
  br label %bb7

bb6:                                              ; preds = %bb2
  br label %bb7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn
define noundef zeroext i1 @"<alloc::collections::btree::set_val::SetValZST as alloc::collections::btree::set_val::IsSetVal>::is_set_val"() unnamed_addr #9 {
start:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn
define i64 @"alloc::collections::vec_deque::VecDeque<T,A>::wrap_copy::diff"(i64 %a, i64 %b) unnamed_addr #9 {
start:
  %_3.not = icmp ugt i64 %a, %b
  %0 = sub i64 %b, %a
  %1 = sub i64 %a, %b
  %.0 = select i1 %_3.not, i64 %1, i64 %0
  ret i64 %.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::collections::TryReserveError as core::fmt::Display>::fmt"({ i64, i64 }* noalias nocapture noundef readonly align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %fmt) unnamed_addr #0 {
start:
  %0 = tail call noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %fmt, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [24 x i8] }>* @alloc8823 to [0 x i8]*), i64 24)
  br i1 %0, label %bb11, label %bb3

bb3:                                              ; preds = %start
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i64 0, i32 1
  %2 = load i64, i64* %1, align 8, !range !31, !noundef !2
  %3 = icmp eq i64 %2, 0
  %.4 = select i1 %3, [0 x i8]* bitcast (<{ [64 x i8] }>* @alloc8825 to [0 x i8]*), [0 x i8]* bitcast (<{ [46 x i8] }>* @alloc8824 to [0 x i8]*)
  %.5 = select i1 %3, i64 64, i64 46
  %4 = tail call noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %fmt, [0 x i8]* noalias noundef nonnull readonly align 1 %.4, i64 %.5)
  br label %bb11

bb11:                                             ; preds = %bb3, %start
  %.0 = phi i1 [ %4, %bb3 ], [ true, %start ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind readonly uwtable willreturn
define { [0 x i8]*, i64 } @"alloc::ffi::c_str::FromVecWithNulError::as_bytes"(%"ffi::c_str::FromVecWithNulError"* noalias nocapture noundef readonly align 8 dereferenceable(40) %self) unnamed_addr #12 personality i32 (...)* @rust_eh_personality {
start:
  %_3 = getelementptr inbounds %"ffi::c_str::FromVecWithNulError", %"ffi::c_str::FromVecWithNulError"* %self, i64 0, i32 1
  %0 = bitcast %"vec::Vec<u8>"* %_3 to [0 x i8]**
  %_3.idx.val2 = load [0 x i8]*, [0 x i8]** %0, align 8
  %_3.idx1 = getelementptr %"ffi::c_str::FromVecWithNulError", %"ffi::c_str::FromVecWithNulError"* %self, i64 0, i32 1, i32 1
  %_3.idx1.val = load i64, i64* %_3.idx1, align 8
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_3.idx.val2, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_3.idx1.val, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"alloc::ffi::c_str::FromVecWithNulError::into_bytes"(%"vec::Vec<u8>"* noalias nocapture noundef writeonly sret(%"vec::Vec<u8>") dereferenceable(24) %0, %"ffi::c_str::FromVecWithNulError"* noalias nocapture noundef readonly dereferenceable(40) %self) unnamed_addr #13 {
start:
  %1 = getelementptr inbounds %"ffi::c_str::FromVecWithNulError", %"ffi::c_str::FromVecWithNulError"* %self, i64 0, i32 1
  %2 = bitcast %"vec::Vec<u8>"* %0 to i8*
  %3 = bitcast %"vec::Vec<u8>"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"<&[u8] as alloc::ffi::c_str::CString::new::SpecNewImpl>::spec_new_impl"(%"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* noalias nocapture noundef writeonly sret(%"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>") dereferenceable(40) %0, [0 x i8]* noalias noundef nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_20 = alloca %"vec::Vec<u8>", align 8
  %buffer = alloca %"vec::Vec<u8>", align 8
  %1 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self.1, i64 1) #30
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  br i1 %2, label %bb12, label %bb6.i

bb12:                                             ; preds = %start
  tail call void @"core::panicking::panic"([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [43 x i8] }>* @alloc8834 to [0 x i8]*), i64 43, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8830 to %"core::panic::location::Location"*)) #29
  unreachable

bb6.i:                                            ; preds = %start
  %4 = bitcast %"vec::Vec<u8>"* %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4)
  %5 = xor i64 %3, -1
  %size.lobit.not.i.i.i = lshr i64 %5, 63
  %6 = icmp slt i64 %3, 0
  br i1 %6, label %bb8.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"

bb8.i:                                            ; preds = %bb6.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i": ; preds = %bb6.i
  %7 = tail call i8* @__rust_alloc(i64 %3, i64 %size.lobit.not.i.i.i) #30
  %8 = icmp eq i8* %7, null
  br i1 %8, label %bb20.i, label %bb2

bb20.i:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %3, i64 noundef %size.lobit.not.i.i.i) #29
  unreachable

bb2:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  %9 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 0, i32 1
  store i64 %3, i64* %10, align 8
  %11 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %ptr.i.i.i = getelementptr [0 x i8], [0 x i8]* %self.0, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %7, i8* nonnull align 1 %ptr.i.i.i, i64 %self.1, i1 false), !noalias !192
  store i64 %self.1, i64* %11, align 8, !alias.scope !192, !noalias !193
  %_3.i = icmp ult i64 %self.1, 16
  br i1 %_3.i, label %bb1.i, label %bb3.i

bb3.i:                                            ; preds = %bb2
  %12 = invoke { i64, i64 } @"core::slice::memchr::memchr_general_case"(i8 0, [0 x i8]* noalias noundef nonnull readonly align 1 %self.0, i64 %self.1)
          to label %bb3 unwind label %bb10

bb1.i:                                            ; preds = %bb2
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %self.1
  %_12.i31.i.i = icmp eq i64 %self.1, 0
  br i1 %_12.i31.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", label %bb8.i.i

bb8.i.i:                                          ; preds = %bb12.i.i, %bb1.i
  %i.033.i.i = phi i64 [ %_35.0.i.i, %bb12.i.i ], [ 0, %bb1.i ]
  %self1.i3032.i.i = phi i8* [ %14, %bb12.i.i ], [ %ptr.i.i.i, %bb1.i ]
  %14 = getelementptr inbounds i8, i8* %self1.i3032.i.i, i64 1
  %.val.i.i = load i8, i8* %self1.i3032.i.i, align 1, !alias.scope !195, !noalias !198
  %15 = icmp eq i8 %.val.i.i, 0
  br i1 %15, label %bb10.i.i, label %bb12.i.i

bb12.i.i:                                         ; preds = %bb8.i.i
  %_35.0.i.i = add nuw nsw i64 %i.033.i.i, 1
  %_12.i.i.i = icmp eq i8* %14, %13
  br i1 %_12.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", label %bb8.i.i

bb10.i.i:                                         ; preds = %bb8.i.i
  %_31.i.i = icmp ult i64 %i.033.i.i, %self.1
  tail call void @llvm.assume(i1 %_31.i.i) #30
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i": ; preds = %bb10.i.i, %bb12.i.i, %bb1.i
  %i.029.i.i = phi i64 [ %i.033.i.i, %bb10.i.i ], [ 0, %bb1.i ], [ %self.1, %bb12.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb10.i.i ], [ 0, %bb1.i ], [ 0, %bb12.i.i ]
  %16 = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i, 0
  %17 = insertvalue { i64, i64 } %16, i64 %i.029.i.i, 1
  br label %bb3

bb3:                                              ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", %bb3.i
  %.pn.i = phi { i64, i64 } [ %17, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i" ], [ %12, %bb3.i ]
  %.fca.0.extract3 = extractvalue { i64, i64 } %.pn.i, 0
  %switch17 = icmp eq i64 %.fca.0.extract3, 0
  br i1 %switch17, label %bb4, label %bb6

bb4:                                              ; preds = %bb3
  %18 = bitcast %"vec::Vec<u8>"* %_20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %18, i8* noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %19 = call { i8*, i64 } @"alloc::ffi::c_str::CString::_from_vec_unchecked"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_20)
  %_19.0 = extractvalue { i8*, i64 } %19, 0
  %_19.1 = extractvalue { i8*, i64 } %19, 1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18)
  %20 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1
  %21 = bitcast [4 x i64]* %20 to i8**
  store i8* %_19.0, i8** %21, align 8
  %22 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 1
  store i64 %_19.1, i64* %22, align 8
  br label %bb8

bb6:                                              ; preds = %bb3
  %.fca.1.extract4 = extractvalue { i64, i64 } %.pn.i, 1
  %_16.sroa.4.0..sroa_idx8 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 1
  %_16.sroa.4.0..sroa_idx83233 = bitcast i64* %_16.sroa.4.0..sroa_idx8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_16.sroa.4.0..sroa_idx83233, i8* noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %23 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 0
  store i64 %.fca.1.extract4, i64* %23, align 8
  br label %bb8

bb8:                                              ; preds = %bb6, %bb4
  %.sink = phi i64 [ 0, %bb4 ], [ 1, %bb6 ]
  %24 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 0
  store i64 %.sink, i64* %24, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4)
  ret void

bb9:                                              ; preds = %bb10
  resume { i8*, i32 } %lpad.thr_comm

bb10:                                             ; preds = %bb3.i
  %lpad.thr_comm = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %buffer) #31
          to label %bb9 unwind label %abort

abort:                                            ; preds = %bb10
  %25 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"<&str as alloc::ffi::c_str::CString::new::SpecNewImpl>::spec_new_impl"(%"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* noalias nocapture noundef writeonly sret(%"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>") dereferenceable(40) %0, [0 x i8]* noalias noundef nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_23 = alloca %"vec::Vec<u8>", align 8
  %buffer = alloca %"vec::Vec<u8>", align 8
  %1 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self.1, i64 1) #30
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  br i1 %2, label %bb13, label %bb6.i

bb13:                                             ; preds = %start
  tail call void @"core::panicking::panic"([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [43 x i8] }>* @alloc8834 to [0 x i8]*), i64 43, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8833 to %"core::panic::location::Location"*)) #29
  unreachable

bb6.i:                                            ; preds = %start
  %4 = bitcast %"vec::Vec<u8>"* %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4)
  %5 = xor i64 %3, -1
  %size.lobit.not.i.i.i = lshr i64 %5, 63
  %6 = icmp slt i64 %3, 0
  br i1 %6, label %bb8.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"

bb8.i:                                            ; preds = %bb6.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i": ; preds = %bb6.i
  %7 = tail call i8* @__rust_alloc(i64 %3, i64 %size.lobit.not.i.i.i) #30
  %8 = icmp eq i8* %7, null
  br i1 %8, label %bb20.i, label %bb3

bb20.i:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %3, i64 noundef %size.lobit.not.i.i.i) #29
  unreachable

bb3:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  %9 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 0, i32 1
  store i64 %3, i64* %10, align 8
  %11 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %ptr.i.i.i = getelementptr [0 x i8], [0 x i8]* %self.0, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %7, i8* nonnull align 1 %ptr.i.i.i, i64 %self.1, i1 false), !noalias !211
  store i64 %self.1, i64* %11, align 8, !alias.scope !211, !noalias !212
  %_3.i = icmp ult i64 %self.1, 16
  br i1 %_3.i, label %bb1.i, label %bb3.i

bb3.i:                                            ; preds = %bb3
  %12 = invoke { i64, i64 } @"core::slice::memchr::memchr_general_case"(i8 0, [0 x i8]* noalias noundef nonnull readonly align 1 %self.0, i64 %self.1)
          to label %bb4 unwind label %bb11

bb1.i:                                            ; preds = %bb3
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %self.1
  %_12.i31.i.i = icmp eq i64 %self.1, 0
  br i1 %_12.i31.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", label %bb8.i.i

bb8.i.i:                                          ; preds = %bb12.i.i, %bb1.i
  %i.033.i.i = phi i64 [ %_35.0.i.i, %bb12.i.i ], [ 0, %bb1.i ]
  %self1.i3032.i.i = phi i8* [ %14, %bb12.i.i ], [ %ptr.i.i.i, %bb1.i ]
  %14 = getelementptr inbounds i8, i8* %self1.i3032.i.i, i64 1
  %.val.i.i = load i8, i8* %self1.i3032.i.i, align 1, !alias.scope !214, !noalias !217
  %15 = icmp eq i8 %.val.i.i, 0
  br i1 %15, label %bb10.i.i, label %bb12.i.i

bb12.i.i:                                         ; preds = %bb8.i.i
  %_35.0.i.i = add nuw nsw i64 %i.033.i.i, 1
  %_12.i.i.i = icmp eq i8* %14, %13
  br i1 %_12.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", label %bb8.i.i

bb10.i.i:                                         ; preds = %bb8.i.i
  %_31.i.i = icmp ult i64 %i.033.i.i, %self.1
  tail call void @llvm.assume(i1 %_31.i.i) #30
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i": ; preds = %bb10.i.i, %bb12.i.i, %bb1.i
  %i.029.i.i = phi i64 [ %i.033.i.i, %bb10.i.i ], [ 0, %bb1.i ], [ %self.1, %bb12.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb10.i.i ], [ 0, %bb1.i ], [ 0, %bb12.i.i ]
  %16 = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i, 0
  %17 = insertvalue { i64, i64 } %16, i64 %i.029.i.i, 1
  br label %bb4

bb4:                                              ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", %bb3.i
  %.pn.i = phi { i64, i64 } [ %17, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i" ], [ %12, %bb3.i ]
  %.fca.0.extract3 = extractvalue { i64, i64 } %.pn.i, 0
  %switch21 = icmp eq i64 %.fca.0.extract3, 0
  br i1 %switch21, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %18 = bitcast %"vec::Vec<u8>"* %_23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %18, i8* noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %19 = call { i8*, i64 } @"alloc::ffi::c_str::CString::_from_vec_unchecked"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_23)
  %_22.0 = extractvalue { i8*, i64 } %19, 0
  %_22.1 = extractvalue { i8*, i64 } %19, 1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18)
  %20 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1
  %21 = bitcast [4 x i64]* %20 to i8**
  store i8* %_22.0, i8** %21, align 8
  %22 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 1
  store i64 %_22.1, i64* %22, align 8
  br label %bb9

bb7:                                              ; preds = %bb4
  %.fca.1.extract4 = extractvalue { i64, i64 } %.pn.i, 1
  %_19.sroa.4.0..sroa_idx8 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 1
  %_19.sroa.4.0..sroa_idx83637 = bitcast i64* %_19.sroa.4.0..sroa_idx8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_19.sroa.4.0..sroa_idx83637, i8* noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %23 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 0
  store i64 %.fca.1.extract4, i64* %23, align 8
  br label %bb9

bb9:                                              ; preds = %bb7, %bb5
  %.sink = phi i64 [ 0, %bb5 ], [ 1, %bb7 ]
  %24 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 0
  store i64 %.sink, i64* %24, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4)
  ret void

bb10:                                             ; preds = %bb11
  resume { i8*, i32 } %lpad.thr_comm

bb11:                                             ; preds = %bb3.i
  %lpad.thr_comm = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %buffer) #31
          to label %bb10 unwind label %abort

abort:                                            ; preds = %bb11
  %25 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"<&mut [u8] as alloc::ffi::c_str::CString::new::SpecNewImpl>::spec_new_impl"(%"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* noalias nocapture noundef writeonly sret(%"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>") dereferenceable(40) %0, [0 x i8]* noalias noundef nonnull align 1 %self.0, i64 %self.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_20 = alloca %"vec::Vec<u8>", align 8
  %buffer = alloca %"vec::Vec<u8>", align 8
  %1 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self.1, i64 1) #30
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  br i1 %2, label %bb12, label %bb6.i

bb12:                                             ; preds = %start
  tail call void @"core::panicking::panic"([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [43 x i8] }>* @alloc8834 to [0 x i8]*), i64 43, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8836 to %"core::panic::location::Location"*)) #29
  unreachable

bb6.i:                                            ; preds = %start
  %4 = bitcast %"vec::Vec<u8>"* %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4)
  %5 = xor i64 %3, -1
  %size.lobit.not.i.i.i = lshr i64 %5, 63
  %6 = icmp slt i64 %3, 0
  br i1 %6, label %bb8.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"

bb8.i:                                            ; preds = %bb6.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i": ; preds = %bb6.i
  %7 = tail call i8* @__rust_alloc(i64 %3, i64 %size.lobit.not.i.i.i) #30
  %8 = icmp eq i8* %7, null
  br i1 %8, label %bb20.i, label %bb2

bb20.i:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %3, i64 noundef %size.lobit.not.i.i.i) #29
  unreachable

bb2:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  %9 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 0, i32 1
  store i64 %3, i64* %10, align 8
  %11 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buffer, i64 0, i32 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %ptr.i.i.i = getelementptr [0 x i8], [0 x i8]* %self.0, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %7, i8* nonnull align 1 %ptr.i.i.i, i64 %self.1, i1 false), !noalias !230
  store i64 %self.1, i64* %11, align 8, !alias.scope !230, !noalias !231
  %_3.i = icmp ult i64 %self.1, 16
  br i1 %_3.i, label %bb1.i, label %bb3.i

bb3.i:                                            ; preds = %bb2
  %12 = invoke { i64, i64 } @"core::slice::memchr::memchr_general_case"(i8 0, [0 x i8]* noalias noundef nonnull readonly align 1 %self.0, i64 %self.1)
          to label %bb3 unwind label %bb10

bb1.i:                                            ; preds = %bb2
  %13 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %self.1
  %_12.i31.i.i = icmp eq i64 %self.1, 0
  br i1 %_12.i31.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", label %bb8.i.i

bb8.i.i:                                          ; preds = %bb12.i.i, %bb1.i
  %i.033.i.i = phi i64 [ %_35.0.i.i, %bb12.i.i ], [ 0, %bb1.i ]
  %self1.i3032.i.i = phi i8* [ %14, %bb12.i.i ], [ %ptr.i.i.i, %bb1.i ]
  %14 = getelementptr inbounds i8, i8* %self1.i3032.i.i, i64 1
  %.val.i.i = load i8, i8* %self1.i3032.i.i, align 1, !alias.scope !233, !noalias !236
  %15 = icmp eq i8 %.val.i.i, 0
  br i1 %15, label %bb10.i.i, label %bb12.i.i

bb12.i.i:                                         ; preds = %bb8.i.i
  %_35.0.i.i = add nuw nsw i64 %i.033.i.i, 1
  %_12.i.i.i = icmp eq i8* %14, %13
  br i1 %_12.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", label %bb8.i.i

bb10.i.i:                                         ; preds = %bb8.i.i
  %_31.i.i = icmp ult i64 %i.033.i.i, %self.1
  tail call void @llvm.assume(i1 %_31.i.i) #30
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i": ; preds = %bb10.i.i, %bb12.i.i, %bb1.i
  %i.029.i.i = phi i64 [ %i.033.i.i, %bb10.i.i ], [ 0, %bb1.i ], [ %self.1, %bb12.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb10.i.i ], [ 0, %bb1.i ], [ 0, %bb12.i.i ]
  %16 = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i, 0
  %17 = insertvalue { i64, i64 } %16, i64 %i.029.i.i, 1
  br label %bb3

bb3:                                              ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", %bb3.i
  %.pn.i = phi { i64, i64 } [ %17, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i" ], [ %12, %bb3.i ]
  %.fca.0.extract3 = extractvalue { i64, i64 } %.pn.i, 0
  %switch17 = icmp eq i64 %.fca.0.extract3, 0
  br i1 %switch17, label %bb4, label %bb6

bb4:                                              ; preds = %bb3
  %18 = bitcast %"vec::Vec<u8>"* %_20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %18, i8* noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %19 = call { i8*, i64 } @"alloc::ffi::c_str::CString::_from_vec_unchecked"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_20)
  %_19.0 = extractvalue { i8*, i64 } %19, 0
  %_19.1 = extractvalue { i8*, i64 } %19, 1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18)
  %20 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1
  %21 = bitcast [4 x i64]* %20 to i8**
  store i8* %_19.0, i8** %21, align 8
  %22 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 1
  store i64 %_19.1, i64* %22, align 8
  br label %bb8

bb6:                                              ; preds = %bb3
  %.fca.1.extract4 = extractvalue { i64, i64 } %.pn.i, 1
  %_16.sroa.4.0..sroa_idx8 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 1
  %_16.sroa.4.0..sroa_idx83233 = bitcast i64* %_16.sroa.4.0..sroa_idx8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_16.sroa.4.0..sroa_idx83233, i8* noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %23 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 1, i64 0
  store i64 %.fca.1.extract4, i64* %23, align 8
  br label %bb8

bb8:                                              ; preds = %bb6, %bb4
  %.sink = phi i64 [ 0, %bb4 ], [ 1, %bb6 ]
  %24 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::NulError>"* %0, i64 0, i32 0
  store i64 %.sink, i64* %24, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4)
  ret void

bb9:                                              ; preds = %bb10
  resume { i8*, i32 } %lpad.thr_comm

bb10:                                             ; preds = %bb3.i
  %lpad.thr_comm = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %buffer) #31
          to label %bb9 unwind label %abort

abort:                                            ; preds = %bb10
  %25 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i8*, i64 } @"alloc::ffi::c_str::CString::from_vec_unchecked"(%"vec::Vec<u8>"* noalias nocapture noundef readonly dereferenceable(24) %v) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_4 = alloca %"vec::Vec<u8>", align 8
  %0 = bitcast %"vec::Vec<u8>"* %_4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0)
  %1 = bitcast %"vec::Vec<u8>"* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %2 = call { i8*, i64 } @"alloc::ffi::c_str::CString::_from_vec_unchecked"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0)
  ret { i8*, i64 } %2
}

; Function Attrs: nonlazybind uwtable
define { i8*, i64 } @"alloc::ffi::c_str::CString::_from_vec_unchecked"(%"vec::Vec<u8>"* noalias nocapture noundef dereferenceable(24) %v) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_24.i.i.i.i = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %self3.i.i.i.i = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", align 8
  %_7 = alloca %"vec::Vec<u8>", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %0 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %v, i64 0, i32 1
  %_5.i = load i64, i64* %0, align 8, !alias.scope !240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %self.idx.i.i.i = getelementptr %"vec::Vec<u8>", %"vec::Vec<u8>"* %v, i64 0, i32 0, i32 1
  %self.idx.val.i.i.i = load i64, i64* %self.idx.i.i.i, align 8, !alias.scope !249
  %1 = icmp eq i64 %self.idx.val.i.i.i, %_5.i
  br i1 %1, label %bb2.i.i.i, label %bb1

bb2.i.i.i:                                        ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250) #30
  %2 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_5.i, i64 1) #30
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  br i1 %3, label %bb5.i.i.i, label %bb6.i.i.i.i

bb6.i.i.i.i:                                      ; preds = %bb2.i.i.i
  %5 = xor i64 %4, -1
  %size.lobit.not.i.i.i.i.i.i = lshr i64 %5, 63
  %6 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #30, !noalias !253
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_24.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #30, !noalias !253
  %self.idx.i.i.i.i = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %v, i64 0, i32 0, i32 0
  %_4.i.i.i.i.i = icmp eq i64 %_5.i, 0
  br i1 %_4.i.i.i.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i.i", label %bb5.i.i.i.i.i

bb5.i.i.i.i.i:                                    ; preds = %bb6.i.i.i.i
  %self.idx.val.i.i.i.i = load i8*, i8** %self.idx.i.i.i.i, align 8, !alias.scope !253
  %8 = xor i64 %_5.i, -1
  %size.lobit.not.i.i.i.i.i.i.i = lshr i64 %8, 63
  %_9.sroa.0.0..sroa_idx.i.i.i.i.i = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_24.i.i.i.i to i8**
  store i8* %self.idx.val.i.i.i.i, i8** %_9.sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !254, !noalias !253
  %9 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_24.i.i.i.i, i64 0, i32 0, i64 1
  store i64 %_5.i, i64* %9, align 8, !alias.scope !254, !noalias !253
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i.i"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i.i": ; preds = %bb5.i.i.i.i.i, %bb6.i.i.i.i
  %size.lobit.not.i.i.sink.i.i.i.i.i = phi i64 [ %size.lobit.not.i.i.i.i.i.i.i, %bb5.i.i.i.i.i ], [ 0, %bb6.i.i.i.i ]
  %10 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_24.i.i.i.i, i64 0, i32 1
  store i64 %size.lobit.not.i.i.sink.i.i.i.i.i, i64* %10, align 8, !alias.scope !254, !noalias !253
  call fastcc void @"alloc::raw_vec::finish_grow"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* noalias nocapture noundef nonnull dereferenceable(24) %self3.i.i.i.i, i64 %4, i64 noundef %size.lobit.not.i.i.i.i.i.i, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture noundef nonnull dereferenceable(24) %_24.i.i.i.i) #30, !noalias !253
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #30, !noalias !253
  %11 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i.i, i64 0, i32 0
  %_50.i.i.i.i = load i64, i64* %11, align 8, !range !14, !noalias !253, !noundef !2
  %trunc.not.i.i.i.i = icmp eq i64 %_50.i.i.i.i, 0
  %12 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i.i, i64 0, i32 1, i64 0
  %e.08.i.i.i.i = load i64, i64* %12, align 8, !noalias !253
  %13 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i.i, i64 0, i32 1, i64 1
  %e.19.i.i.i.i = load i64, i64* %13, align 8, !noalias !253
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #30, !noalias !253
  br i1 %trunc.not.i.i.i.i, label %bb13.i.i.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E.exit.i.i"

bb13.i.i.i.i:                                     ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i.i"
  %14 = inttoptr i64 %e.08.i.i.i.i to i8*
  store i8* %14, i8** %self.idx.i.i.i.i, align 8, !alias.scope !257
  store i64 %4, i64* %self.idx.i.i.i, align 8, !alias.scope !257
  br label %bb1

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E.exit.i.i": ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i.i"
  switch i64 %e.19.i.i.i.i, label %bb6.i.i.i [
    i64 -9223372036854775807, label %bb2.i
    i64 0, label %bb5.i.i.i
  ]

bb5.i.i.i:                                        ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E.exit.i.i", %bb2.i.i.i
  invoke void @"alloc::raw_vec::capacity_overflow"() #29
          to label %.noexc unwind label %bb5

.noexc:                                           ; preds = %bb5.i.i.i
  unreachable

bb6.i.i.i:                                        ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E.exit.i.i"
  invoke void @"alloc::alloc::handle_alloc_error"(i64 %e.08.i.i.i.i, i64 noundef %e.19.i.i.i.i) #29
          to label %.noexc5 unwind label %bb5

.noexc5:                                          ; preds = %bb6.i.i.i
  unreachable

bb1:                                              ; preds = %bb13.i.i.i.i, %start
  %15 = phi i64 [ %4, %bb13.i.i.i.i ], [ %self.idx.val.i.i.i, %start ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %_3.i = icmp eq i64 %_5.i, %15
  br i1 %_3.i, label %bb2.i, label %bb2

bb2.i:                                            ; preds = %bb1, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E.exit.i.i"
  %self1.i = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %v, i64 0, i32 0
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve_for_push"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %self1.i, i64 %_5.i)
          to label %.noexc6 unwind label %bb5

.noexc6:                                          ; preds = %bb2.i
  %count.pre.i = load i64, i64* %0, align 8, !alias.scope !260
  br label %bb2

bb2:                                              ; preds = %.noexc6, %bb1
  %count.i = phi i64 [ %count.pre.i, %.noexc6 ], [ %_5.i, %bb1 ]
  %self.idx.i = getelementptr %"vec::Vec<u8>", %"vec::Vec<u8>"* %v, i64 0, i32 0, i32 0
  %self.idx.val.i = load i8*, i8** %self.idx.i, align 8, !alias.scope !260
  %16 = getelementptr inbounds i8, i8* %self.idx.val.i, i64 %count.i
  store i8 0, i8* %16, align 1, !noalias !260
  %17 = add i64 %count.i, 1
  store i64 %17, i64* %0, align 8, !alias.scope !260
  %18 = bitcast %"vec::Vec<u8>"* %_7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18)
  %19 = bitcast %"vec::Vec<u8>"* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %18, i8* noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false)
  %20 = call fastcc { [0 x i8]*, i64 } @"alloc::vec::Vec<T,A>::into_boxed_slice"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_7)
  %_6.0 = extractvalue { [0 x i8]*, i64 } %20, 0
  %_6.1 = extractvalue { [0 x i8]*, i64 } %20, 1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18)
  %21 = getelementptr [0 x i8], [0 x i8]* %_6.0, i64 0, i64 0
  %22 = icmp ne [0 x i8]* %_6.0, null
  tail call void @llvm.assume(i1 %22)
  %23 = insertvalue { i8*, i64 } undef, i8* %21, 0
  %24 = insertvalue { i8*, i64 } %23, i64 %_6.1, 1
  ret { i8*, i64 } %24

bb4:                                              ; preds = %bb5
  resume { i8*, i32 } %lpad.thr_comm

bb5:                                              ; preds = %bb2.i, %bb6.i.i.i, %bb5.i.i.i
  %lpad.thr_comm = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %v) #31
          to label %bb4 unwind label %abort

abort:                                            ; preds = %bb5
  %25 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32
  unreachable
}

; Function Attrs: mustprogress nofree nounwind nonlazybind uwtable willreturn
define { i8*, i64 } @"alloc::ffi::c_str::CString::from_raw"(i8* %ptr) unnamed_addr #14 {
start:
  %_3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %ptr) #30
  %len = add i64 %_3, 1
  %0 = icmp ne i8* %ptr, null
  tail call void @llvm.assume(i1 %0)
  %1 = insertvalue { i8*, i64 } undef, i8* %ptr, 0
  %2 = insertvalue { i8*, i64 } %1, i64 %len, 1
  ret { i8*, i64 } %2
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::ffi::c_str::CString::into_string"(%"core::result::Result<string::String, ffi::c_str::IntoStringError>"* noalias nocapture noundef writeonly sret(%"core::result::Result<string::String, ffi::c_str::IntoStringError>") dereferenceable(40) %0, i8* noalias noundef nonnull align 1 %self.0, i64 %self.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_6.i.i = alloca %"vec::Vec<u8>", align 8
  %_9.sroa.0.i = alloca %"string::FromUtf8Error", align 8
  %_11.i = alloca %"string::FromUtf8Error", align 8
  %_2.i = alloca %"core::result::Result<&str, core::str::error::Utf8Error>", align 8
  %_3 = alloca %"vec::Vec<u8>", align 8
  %_2.sroa.4 = alloca [5 x i64], align 8
  %_2.sroa.4.0.sroa_cast11 = bitcast [5 x i64]* %_2.sroa.4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %_2.sroa.4.0.sroa_cast11)
  %1 = bitcast %"vec::Vec<u8>"* %_3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1)
  %2 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %_3, i64 0, i32 0, i32 0
  store i8* %self.0, i8** %2, align 8, !alias.scope !263, !noalias !270
  %3 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %_3, i64 0, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8, !alias.scope !263, !noalias !270
  %4 = icmp eq i64 %self.1, 0
  %5 = add i64 %self.1, -1
  %spec.select.i = select i1 %4, i64 0, i64 %5
  %6 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %_3, i64 0, i32 1
  store i64 %spec.select.i, i64* %6, align 8, !alias.scope !273, !noalias !274
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %7 = bitcast %"core::result::Result<&str, core::str::error::Utf8Error>"* %_2.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7), !noalias !280
  %8 = bitcast i8* %self.0 to [0 x i8]*
  invoke void @"core::str::converts::from_utf8"(%"core::result::Result<&str, core::str::error::Utf8Error>"* noalias nocapture noundef nonnull sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24) %_2.i, [0 x i8]* noalias noundef nonnull readonly align 1 %8, i64 %spec.select.i)
          to label %bb1.i unwind label %cleanup.i, !noalias !280

cleanup.i:                                        ; preds = %start
  %9 = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %_3) #31
          to label %bb7.i unwind label %abort.i, !noalias !275

bb1.i:                                            ; preds = %start
  %10 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>", %"core::result::Result<&str, core::str::error::Utf8Error>"* %_2.i, i64 0, i32 0
  %_7.i = load i64, i64* %10, align 8, !range !14, !noalias !280, !noundef !2
  %trunc.not.i = icmp eq i64 %_7.i, 0
  br i1 %trunc.not.i, label %bb3.i, label %bb1.i2

abort.i:                                          ; preds = %cleanup.i
  %11 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32, !noalias !280
  unreachable

bb7.i:                                            ; preds = %cleanup.i
  resume { i8*, i32 } %9

bb3.i:                                            ; preds = %bb1.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_2.sroa.4.0.sroa_cast11, i8* noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !280
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7), !noalias !280
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1)
  %_2.sroa.4.8._5.sroa.0.0..sroa_idx84748.i.sroa_idx = getelementptr inbounds %"core::result::Result<string::String, ffi::c_str::IntoStringError>", %"core::result::Result<string::String, ffi::c_str::IntoStringError>"* %0, i64 0, i32 1
  %_2.sroa.4.8._5.sroa.0.0..sroa_idx84748.i.sroa_cast = bitcast [4 x i64]* %_2.sroa.4.8._5.sroa.0.0..sroa_idx84748.i.sroa_idx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_2.sroa.4.8._5.sroa.0.0..sroa_idx84748.i.sroa_cast, i8* noundef nonnull align 8 dereferenceable(24) %_2.sroa.4.0.sroa_cast11, i64 24, i1 false), !alias.scope !281
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2da533b601abc621E.exit"

bb1.i2:                                           ; preds = %bb1.i
  %12 = getelementptr inbounds %"core::result::Result<&str, core::str::error::Utf8Error>", %"core::result::Result<&str, core::str::error::Utf8Error>"* %_2.i, i64 0, i32 1
  %13 = bitcast [2 x i64]* %12 to i8*
  %_11.i.0.sroa_cast = bitcast %"string::FromUtf8Error"* %_11.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %_11.i.0.sroa_cast)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_11.i.0.sroa_cast, i8* noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !275
  %14 = getelementptr inbounds %"string::FromUtf8Error", %"string::FromUtf8Error"* %_11.i, i64 0, i32 1
  %15 = bitcast %"core::str::error::Utf8Error"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %15, i8* noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !noalias !280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %_2.sroa.4.0.sroa_cast11, i8* noundef nonnull align 8 dereferenceable(40) %_11.i.0.sroa_cast, i64 40, i1 false), !noalias !278
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %_11.i.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7), !noalias !280
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %_9.sroa.0.i.0.sroa_cast = bitcast %"string::FromUtf8Error"* %_9.sroa.0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %_9.sroa.0.i.0.sroa_cast)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(40) %_9.sroa.0.i.0.sroa_cast, i8* noundef nonnull align 8 dereferenceable(40) %_2.sroa.4.0.sroa_cast11, i64 40, i1 false), !noalias !285
  %16 = bitcast %"vec::Vec<u8>"* %_6.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16), !noalias !287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %16, i8* noundef nonnull align 8 dereferenceable(24) %_2.sroa.4.0.sroa_cast11, i64 24, i1 false), !noalias !285
  %17 = call { i8*, i64 } @"alloc::ffi::c_str::CString::_from_vec_unchecked"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_6.i.i), !noalias !287
  %_5.0.i.i = extractvalue { i8*, i64 } %17, 0
  %_5.1.i.i = extractvalue { i8*, i64 } %17, 1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16), !noalias !287
  %_9.sroa.0.24.sroa_idx.i = getelementptr inbounds %"string::FromUtf8Error", %"string::FromUtf8Error"* %_9.sroa.0.i, i64 0, i32 1
  %_9.sroa.0.24.sroa_cast.i = bitcast %"core::str::error::Utf8Error"* %_9.sroa.0.24.sroa_idx.i to i8*
  %_7.sroa.5.0..sroa_idx.i = getelementptr inbounds %"core::result::Result<string::String, ffi::c_str::IntoStringError>", %"core::result::Result<string::String, ffi::c_str::IntoStringError>"* %0, i64 0, i32 1, i64 2
  %_7.sroa.5.0..sroa_idx5051.i = bitcast i64* %_7.sroa.5.0..sroa_idx.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %_7.sroa.5.0..sroa_idx5051.i, i8* noundef nonnull align 8 dereferenceable(16) %_9.sroa.0.24.sroa_cast.i, i64 16, i1 false), !noalias !286
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %_9.sroa.0.i.0.sroa_cast)
  %_7.sroa.0.0..sroa_idx.i = getelementptr inbounds %"core::result::Result<string::String, ffi::c_str::IntoStringError>", %"core::result::Result<string::String, ffi::c_str::IntoStringError>"* %0, i64 0, i32 1
  %_7.sroa.0.0..sroa_cast.i = bitcast [4 x i64]* %_7.sroa.0.0..sroa_idx.i to i8**
  store i8* %_5.0.i.i, i8** %_7.sroa.0.0..sroa_cast.i, align 8, !alias.scope !285, !noalias !286
  %_7.sroa.4.0..sroa_idx23.i = getelementptr inbounds %"core::result::Result<string::String, ffi::c_str::IntoStringError>", %"core::result::Result<string::String, ffi::c_str::IntoStringError>"* %0, i64 0, i32 1, i64 1
  store i64 %_5.1.i.i, i64* %_7.sroa.4.0..sroa_idx23.i, align 8, !alias.scope !285, !noalias !286
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2da533b601abc621E.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2da533b601abc621E.exit": ; preds = %bb1.i2, %bb3.i
  %.sink.i3 = phi i64 [ 0, %bb3.i ], [ 1, %bb1.i2 ]
  %18 = getelementptr inbounds %"core::result::Result<string::String, ffi::c_str::IntoStringError>", %"core::result::Result<string::String, ffi::c_str::IntoStringError>"* %0, i64 0, i32 0
  store i64 %.sink.i3, i64* %18, align 8, !alias.scope !285, !noalias !286
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %_2.sroa.4.0.sroa_cast11)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::ffi::c_str::CString::into_bytes"(%"vec::Vec<u8>"* noalias nocapture noundef sret(%"vec::Vec<u8>") dereferenceable(24) %vec, i8* noalias noundef nonnull align 1 %self.0, i64 %self.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %0 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %vec, i64 0, i32 0, i32 0
  store i8* %self.0, i8** %0, align 8, !alias.scope !291, !noalias !296
  %1 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %vec, i64 0, i32 0, i32 1
  store i64 %self.1, i64* %1, align 8, !alias.scope !291, !noalias !296
  %2 = icmp eq i64 %self.1, 0
  %3 = add i64 %self.1, -1
  %spec.select = select i1 %2, i64 0, i64 %3
  %4 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %vec, i64 0, i32 1
  store i64 %spec.select, i64* %4, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"alloc::ffi::c_str::CString::into_bytes_with_nul"(%"vec::Vec<u8>"* noalias nocapture noundef writeonly sret(%"vec::Vec<u8>") dereferenceable(24) %0, i8* noalias noundef nonnull align 1 %self.0, i64 %self.1) unnamed_addr #13 personality i32 (...)* @rust_eh_personality {
start:
  %1 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %0, i64 0, i32 0, i32 0
  store i8* %self.0, i8** %1, align 8, !alias.scope !298, !noalias !303
  %2 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %0, i64 0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8, !alias.scope !298, !noalias !303
  %3 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %0, i64 0, i32 1
  store i64 %self.1, i64* %3, align 8, !alias.scope !298, !noalias !303
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define { %"core::ffi::c_str::CStr"*, i64 } @"alloc::ffi::c_str::CString::into_boxed_c_str"(i8* noalias noundef nonnull align 1 %self.0, i64 %self.1) unnamed_addr #13 personality i32 (...)* @rust_eh_personality {
start:
  %raw.0 = bitcast i8* %self.0 to %"core::ffi::c_str::CStr"*
  %0 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %raw.0, 0
  %1 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %0, i64 %self.1, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %1
}

; Function Attrs: nonlazybind uwtable
define { i8*, i64 } @"alloc::ffi::c_str::CString::from_vec_with_nul_unchecked"(%"vec::Vec<u8>"* noalias nocapture noundef readonly dereferenceable(24) %v) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_3.i = alloca %"vec::Vec<u8>", align 8
  %0 = bitcast %"vec::Vec<u8>"* %v to i8*
  %1 = bitcast %"vec::Vec<u8>"* %_3.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1), !noalias !305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8* noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %2 = call fastcc { [0 x i8]*, i64 } @"alloc::vec::Vec<T,A>::into_boxed_slice"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_3.i), !noalias !305
  %_2.0.i = extractvalue { [0 x i8]*, i64 } %2, 0
  %_2.1.i = extractvalue { [0 x i8]*, i64 } %2, 1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1), !noalias !305
  %3 = getelementptr [0 x i8], [0 x i8]* %_2.0.i, i64 0, i64 0
  %4 = icmp ne [0 x i8]* %_2.0.i, null
  tail call void @llvm.assume(i1 %4)
  %5 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %_2.1.i, 1
  ret { i8*, i64 } %6
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::ffi::c_str::CString::from_vec_with_nul"(%"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* noalias nocapture noundef writeonly sret(%"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>") dereferenceable(48) %0, %"vec::Vec<u8>"* noalias nocapture noundef readonly dereferenceable(24) %v) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
bb12:
  %_3.i35 = alloca %"vec::Vec<u8>", align 8
  %1 = bitcast %"vec::Vec<u8>"* %v to [0 x i8]**
  %v.idx.val45 = load [0 x i8]*, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %v, i64 0, i32 1
  %len = load i64, i64* %2, align 8
  %_3.i = icmp ult i64 %len, 16
  br i1 %_3.i, label %bb1.i, label %bb3.i

bb3.i:                                            ; preds = %bb12
  %3 = invoke { i64, i64 } @"core::slice::memchr::memchr_general_case"(i8 0, [0 x i8]* noalias noundef nonnull readonly align 1 %v.idx.val45, i64 %len)
          to label %bb1 unwind label %bb10

bb1.i:                                            ; preds = %bb12
  %4 = getelementptr inbounds [0 x i8], [0 x i8]* %v.idx.val45, i64 0, i64 %len
  %_12.i31.i.i = icmp eq i64 %len, 0
  br i1 %_12.i31.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", label %bb8.i.preheader.i

bb8.i.preheader.i:                                ; preds = %bb1.i
  %ptr.i.i = getelementptr [0 x i8], [0 x i8]* %v.idx.val45, i64 0, i64 0
  br label %bb8.i.i

bb8.i.i:                                          ; preds = %bb12.i.i, %bb8.i.preheader.i
  %i.033.i.i = phi i64 [ %_35.0.i.i, %bb12.i.i ], [ 0, %bb8.i.preheader.i ]
  %self1.i3032.i.i = phi i8* [ %5, %bb12.i.i ], [ %ptr.i.i, %bb8.i.preheader.i ]
  %5 = getelementptr inbounds i8, i8* %self1.i3032.i.i, i64 1
  %.val.i.i = load i8, i8* %self1.i3032.i.i, align 1, !alias.scope !308, !noalias !311
  %6 = icmp eq i8 %.val.i.i, 0
  br i1 %6, label %bb10.i.i, label %bb12.i.i

bb12.i.i:                                         ; preds = %bb8.i.i
  %_35.0.i.i = add nuw nsw i64 %i.033.i.i, 1
  %_12.i.i.i = icmp eq i8* %5, %4
  br i1 %_12.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", label %bb8.i.i

bb10.i.i:                                         ; preds = %bb8.i.i
  %_31.i.i = icmp ult i64 %i.033.i.i, %len
  tail call void @llvm.assume(i1 %_31.i.i) #30
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i": ; preds = %bb10.i.i, %bb12.i.i, %bb1.i
  %i.029.i.i = phi i64 [ %i.033.i.i, %bb10.i.i ], [ 0, %bb1.i ], [ %len, %bb12.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb10.i.i ], [ 0, %bb1.i ], [ 0, %bb12.i.i ]
  %7 = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i, 0
  %8 = insertvalue { i64, i64 } %7, i64 %i.029.i.i, 1
  br label %bb1

bb1:                                              ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i", %bb3.i
  %.pn.i = phi { i64, i64 } [ %8, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE.exit.i" ], [ %3, %bb3.i ]
  %.fca.0.extract = extractvalue { i64, i64 } %.pn.i, 0
  %.fca.1.extract = extractvalue { i64, i64 } %.pn.i, 1
  %switch = icmp eq i64 %.fca.0.extract, 0
  br i1 %switch, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %9 = bitcast %"vec::Vec<u8>"* %v to i8*
  %_22.sroa.5.0..sroa_idx20 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* %0, i64 0, i32 1, i64 2
  %_22.sroa.5.0..sroa_idx205657 = bitcast i64* %_22.sroa.5.0..sroa_idx20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_22.sroa.5.0..sroa_idx205657, i8* noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %10 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* %0, i64 0, i32 1, i64 0
  store i64 1, i64* %10, align 8
  br label %bb8

bb4:                                              ; preds = %bb1
  %_11 = add i64 %.fca.1.extract, 1
  %_10 = icmp eq i64 %_11, %len
  %11 = bitcast %"vec::Vec<u8>"* %v to i8*
  br i1 %_10, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  %_18.sroa.5.0..sroa_idx9 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* %0, i64 0, i32 1, i64 2
  %_18.sroa.5.0..sroa_idx95960 = bitcast i64* %_18.sroa.5.0..sroa_idx9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_18.sroa.5.0..sroa_idx95960, i8* noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %12 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* %0, i64 0, i32 1, i64 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* %0, i64 0, i32 1, i64 1
  store i64 %.fca.1.extract, i64* %13, align 8
  br label %bb8

bb5:                                              ; preds = %bb4
  %14 = bitcast %"vec::Vec<u8>"* %_3.i35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14), !noalias !315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %14, i8* noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %15 = call fastcc { [0 x i8]*, i64 } @"alloc::vec::Vec<T,A>::into_boxed_slice"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_3.i35)
  %_2.0.i = extractvalue { [0 x i8]*, i64 } %15, 0
  %_2.1.i = extractvalue { [0 x i8]*, i64 } %15, 1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14), !noalias !315
  %16 = getelementptr [0 x i8], [0 x i8]* %_2.0.i, i64 0, i64 0
  %17 = icmp ne [0 x i8]* %_2.0.i, null
  tail call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* %0, i64 0, i32 1
  %19 = bitcast [5 x i64]* %18 to i8**
  store i8* %16, i8** %19, align 8
  %20 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* %0, i64 0, i32 1, i64 1
  store i64 %_2.1.i, i64* %20, align 8
  br label %bb8

bb9:                                              ; preds = %bb10
  resume { i8*, i32 } %21

bb10:                                             ; preds = %bb3.i
  %21 = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %v) #31
          to label %bb9 unwind label %abort

abort:                                            ; preds = %bb10
  %22 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32
  unreachable

bb8:                                              ; preds = %bb5, %bb6, %bb2
  %.sink = phi i64 [ 1, %bb2 ], [ 1, %bb6 ], [ 0, %bb5 ]
  %23 = getelementptr inbounds %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>", %"core::result::Result<ffi::c_str::CString, ffi::c_str::FromVecWithNulError>"* %0, i64 0, i32 0
  store i64 %.sink, i64* %23, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::ffi::c_str::CString as core::fmt::Debug>::fmt"({ i8*, i64 }* noalias nocapture noundef readonly align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %0 = bitcast { i8*, i64 }* %self to [0 x i8]**
  %_12.034 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !2, !align !9
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i64 0, i32 1
  %_12.1 = load i64, i64* %1, align 8
  %2 = tail call { %"core::ffi::c_str::CStr"*, i64 } @"core::ffi::c_str::CStr::from_bytes_with_nul_unchecked::rt_impl"([0 x i8]* noalias noundef nonnull readonly align 1 %_12.034, i64 %_12.1)
  %_5.0 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %2, 0
  %_5.1 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %2, 1
  %3 = tail call noundef zeroext i1 @"<core::ffi::c_str::CStr as core::fmt::Debug>::fmt"(%"core::ffi::c_str::CStr"* noalias noundef nonnull readonly align 1 %_5.0, i64 %_5.1, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %3
}

; Function Attrs: nonlazybind uwtable
define { i8*, i64 } @"<alloc::ffi::c_str::CString as core::default::Default>::default"() unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %0 = tail call { %"core::ffi::c_str::CStr"*, i64 } @"<&core::ffi::c_str::CStr as core::default::Default>::default"()
  %a.1 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %0, 1
  %_6.i.i.i.i = icmp eq i64 %a.1, 0
  br i1 %_6.i.i.i.i, label %"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE.exit", label %bb6.i.i.i.i

bb6.i.i.i.i:                                      ; preds = %start
  %1 = xor i64 %a.1, -1
  %size.lobit.not.i.i.i.i.i.i = lshr i64 %1, 63
  %2 = icmp slt i64 %a.1, 0
  br i1 %2, label %bb8.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i"

bb8.i.i.i.i:                                      ; preds = %bb6.i.i.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !318
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i": ; preds = %bb6.i.i.i.i
  %3 = tail call i8* @__rust_alloc(i64 %a.1, i64 %size.lobit.not.i.i.i.i.i.i) #30, !noalias !318
  %4 = icmp eq i8* %3, null
  br i1 %4, label %bb20.i.i.i.i, label %"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE.exit"

bb20.i.i.i.i:                                     ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %a.1, i64 noundef %size.lobit.not.i.i.i.i.i.i) #29, !noalias !318
  unreachable

"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i", %start
  %.sroa.0.0.i.i.i.i = phi i8* [ %3, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i" ], [ inttoptr (i64 1 to i8*), %start ]
  %a.0 = extractvalue { %"core::ffi::c_str::CStr"*, i64 } %0, 0
  %src.i.i.i = getelementptr %"core::ffi::c_str::CStr", %"core::ffi::c_str::CStr"* %a.0, i64 0, i32 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.sroa.0.0.i.i.i.i, i8* nonnull align 1 %src.i.i.i, i64 %a.1, i1 false)
  %5 = insertvalue { i8*, i64 } undef, i8* %.sroa.0.0.i.i.i.i, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %a.1, 1
  ret { i8*, i64 } %6
}

; Function Attrs: nonlazybind uwtable
define { %"core::ffi::c_str::CStr"*, i64 } @"alloc::ffi::c_str::<impl core::convert::From<&core::ffi::c_str::CStr> for alloc::boxed::Box<core::ffi::c_str::CStr>>::from"(%"core::ffi::c_str::CStr"* noalias nocapture noundef nonnull readonly align 1 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_6.i.i = icmp eq i64 %s.1, 0
  br i1 %_6.i.i, label %"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E.exit", label %bb6.i.i

bb6.i.i:                                          ; preds = %start
  %0 = xor i64 %s.1, -1
  %size.lobit.not.i.i.i.i = lshr i64 %0, 63
  %1 = icmp slt i64 %s.1, 0
  br i1 %1, label %bb8.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"

bb8.i.i:                                          ; preds = %bb6.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !325
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i": ; preds = %bb6.i.i
  %2 = tail call i8* @__rust_alloc(i64 %s.1, i64 %size.lobit.not.i.i.i.i) #30, !noalias !325
  %3 = icmp eq i8* %2, null
  br i1 %3, label %bb20.i.i, label %"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E.exit"

bb20.i.i:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %s.1, i64 noundef %size.lobit.not.i.i.i.i) #29, !noalias !325
  unreachable

"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i", %start
  %.sroa.0.0.i.i = phi i8* [ %2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i" ], [ inttoptr (i64 1 to i8*), %start ]
  %src.i = getelementptr %"core::ffi::c_str::CStr", %"core::ffi::c_str::CStr"* %s.0, i64 0, i32 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.sroa.0.0.i.i, i8* nonnull align 1 %src.i, i64 %s.1, i1 false)
  %raw.0 = bitcast i8* %.sroa.0.0.i.i to %"core::ffi::c_str::CStr"*
  %4 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %raw.0, 0
  %5 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %4, i64 %s.1, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define { %"core::ffi::c_str::CStr"*, i64 } @"alloc::ffi::c_str::<impl core::default::Default for alloc::boxed::Box<core::ffi::c_str::CStr>>::default"() unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %0 = tail call align 1 dereferenceable_or_null(1) i8* @__rust_alloc(i64 1, i64 1) #30
  %1 = icmp eq i8* %0, null
  br i1 %1, label %bb1.i.i, label %"_ZN106_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$u5b$T$u3b$$u20$N$u5d$$GT$$GT$4from17h882b7dd1b5b7d713E.exit"

bb1.i.i:                                          ; preds = %start
  tail call void @"alloc::alloc::handle_alloc_error"(i64 1, i64 noundef 1) #29
  unreachable

"_ZN106_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$u5b$T$u3b$$u20$N$u5d$$GT$$GT$4from17h882b7dd1b5b7d713E.exit": ; preds = %start
  store i8 0, i8* %0, align 1
  %raw.0 = bitcast i8* %0 to %"core::ffi::c_str::CStr"*
  %2 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } undef, %"core::ffi::c_str::CStr"* %raw.0, 0
  %3 = insertvalue { %"core::ffi::c_str::CStr"*, i64 } %2, i64 1, 1
  ret { %"core::ffi::c_str::CStr"*, i64 } %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind readonly uwtable willreturn
define i64 @"alloc::ffi::c_str::NulError::nul_position"(%"ffi::c_str::NulError"* noalias nocapture noundef readonly align 8 dereferenceable(32) %self) unnamed_addr #12 {
start:
  %0 = getelementptr inbounds %"ffi::c_str::NulError", %"ffi::c_str::NulError"* %self, i64 0, i32 0
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"alloc::ffi::c_str::NulError::into_vec"(%"vec::Vec<u8>"* noalias nocapture noundef writeonly sret(%"vec::Vec<u8>") dereferenceable(24) %0, %"ffi::c_str::NulError"* noalias nocapture noundef readonly dereferenceable(32) %self) unnamed_addr #13 {
start:
  %1 = getelementptr inbounds %"ffi::c_str::NulError", %"ffi::c_str::NulError"* %self, i64 0, i32 1
  %2 = bitcast %"vec::Vec<u8>"* %0 to i8*
  %3 = bitcast %"vec::Vec<u8>"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %2, i8* noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::ffi::c_str::NulError as core::fmt::Display>::fmt"(%"ffi::c_str::NulError"* noalias noundef readonly align 8 dereferenceable(32) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_11 = alloca [1 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %0 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0)
  %1 = bitcast [1 x { i8*, i64* }]* %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1)
  %2 = bitcast [1 x { i8*, i64* }]* %_11 to %"ffi::c_str::NulError"**
  store %"ffi::c_str::NulError"* %self, %"ffi::c_str::NulError"** %2, align 8
  %3 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_11, i64 0, i64 0, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc8582 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %4, align 8, !alias.scope !328, !noalias !331
  %5 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 1
  store i64 1, i64* %5, align 8, !alias.scope !328, !noalias !331
  %6 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 1, i32 0
  store i64* null, i64** %6, align 8, !alias.scope !328, !noalias !331
  %7 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 0
  %8 = bitcast [0 x { i8*, i64* }]** %7 to [1 x { i8*, i64* }]**
  store [1 x { i8*, i64* }]* %_11, [1 x { i8*, i64* }]** %8, align 8, !alias.scope !328, !noalias !331
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 1
  store i64 1, i64* %9, align 8, !alias.scope !328, !noalias !331
  %10 = call noundef zeroext i1 @"core::fmt::Formatter::write_fmt"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, %"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_4)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1)
  ret i1 %10
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::ffi::c_str::FromVecWithNulError as core::fmt::Display>::fmt"(%"ffi::c_str::FromVecWithNulError"* noalias nocapture noundef readonly align 8 dereferenceable(40) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_18 = alloca %"core::fmt::Arguments", align 8
  %_13 = alloca [1 x { i8*, i64* }], align 8
  %_6 = alloca %"core::fmt::Arguments", align 8
  %pos = alloca i64, align 8
  %0 = getelementptr inbounds %"ffi::c_str::FromVecWithNulError", %"ffi::c_str::FromVecWithNulError"* %self, i64 0, i32 0, i32 0
  %_3 = load i64, i64* %0, align 8, !range !14, !noundef !2
  %trunc.not = icmp eq i64 %_3, 0
  br i1 %trunc.not, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %1 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1)
  %2 = getelementptr inbounds %"ffi::c_str::FromVecWithNulError", %"ffi::c_str::FromVecWithNulError"* %self, i64 0, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* %pos, align 8
  %4 = bitcast %"core::fmt::Arguments"* %_6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4)
  %5 = bitcast [1 x { i8*, i64* }]* %_13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5)
  %6 = bitcast [1 x { i8*, i64* }]* %_13 to i64**
  store i64* %pos, i64** %6, align 8
  %7 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_13, i64 0, i64 0, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %7, align 8
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_6, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc8594 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %8, align 8, !alias.scope !334, !noalias !337
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_6, i64 0, i32 0, i32 1
  store i64 1, i64* %9, align 8, !alias.scope !334, !noalias !337
  %10 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_6, i64 0, i32 1, i32 0
  store i64* null, i64** %10, align 8, !alias.scope !334, !noalias !337
  %11 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_6, i64 0, i32 2, i32 0
  %12 = bitcast [0 x { i8*, i64* }]** %11 to [1 x { i8*, i64* }]**
  store [1 x { i8*, i64* }]* %_13, [1 x { i8*, i64* }]** %12, align 8, !alias.scope !334, !noalias !337
  %13 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_6, i64 0, i32 2, i32 1
  store i64 1, i64* %13, align 8, !alias.scope !334, !noalias !337
  %14 = call noundef zeroext i1 @"core::fmt::Formatter::write_fmt"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, %"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_6)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1)
  br label %bb8

bb1:                                              ; preds = %start
  %15 = bitcast %"core::fmt::Arguments"* %_18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %15)
  %16 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8] }>* @alloc8589 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %16, align 8, !alias.scope !340, !noalias !343
  %17 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 0, i32 1
  store i64 1, i64* %17, align 8, !alias.scope !340, !noalias !343
  %18 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 1, i32 0
  store i64* null, i64** %18, align 8, !alias.scope !340, !noalias !343
  %19 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 2, i32 0
  store [0 x { i8*, i64* }]* bitcast (<{}>* @alloc8775 to [0 x { i8*, i64* }]*), [0 x { i8*, i64* }]** %19, align 8, !alias.scope !340, !noalias !343
  %20 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_18, i64 0, i32 2, i32 1
  store i64 0, i64* %20, align 8, !alias.scope !340, !noalias !343
  %21 = call noundef zeroext i1 @"core::fmt::Formatter::write_fmt"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, %"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_18)
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %15)
  br label %bb8

bb8:                                              ; preds = %bb1, %bb3
  %.0.in = phi i1 [ %21, %bb1 ], [ %14, %bb3 ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind readonly uwtable willreturn
define { i8*, i64 } @"alloc::ffi::c_str::IntoStringError::into_cstring"(%"ffi::c_str::IntoStringError"* noalias nocapture noundef readonly dereferenceable(32) %self) unnamed_addr #12 {
start:
  %0 = getelementptr inbounds %"ffi::c_str::IntoStringError", %"ffi::c_str::IntoStringError"* %self, i64 0, i32 0, i32 0
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !align !9, !noundef !2
  %2 = getelementptr inbounds %"ffi::c_str::IntoStringError", %"ffi::c_str::IntoStringError"* %self, i64 0, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"alloc::ffi::c_str::IntoStringError::utf8_error"(%"core::str::error::Utf8Error"* noalias nocapture noundef writeonly sret(%"core::str::error::Utf8Error") dereferenceable(16) %0, %"ffi::c_str::IntoStringError"* noalias nocapture noundef readonly align 8 dereferenceable(32) %self) unnamed_addr #13 {
start:
  %1 = getelementptr inbounds %"ffi::c_str::IntoStringError", %"ffi::c_str::IntoStringError"* %self, i64 0, i32 1
  %2 = bitcast %"core::str::error::Utf8Error"* %0 to i8*
  %3 = bitcast %"core::str::error::Utf8Error"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn
define noundef nonnull align 8 dereferenceable(16) %"core::str::error::Utf8Error"* @"alloc::ffi::c_str::IntoStringError::__source"(%"ffi::c_str::IntoStringError"* noalias noundef readonly align 8 dereferenceable(32) %self) unnamed_addr #9 {
start:
  %0 = getelementptr inbounds %"ffi::c_str::IntoStringError", %"ffi::c_str::IntoStringError"* %self, i64 0, i32 1
  ret %"core::str::error::Utf8Error"* %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::ffi::c_str::IntoStringError as core::fmt::Display>::fmt"(%"ffi::c_str::IntoStringError"* noalias nocapture noundef readonly align 8 dereferenceable(32) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = tail call noundef zeroext i1 @"<str as core::fmt::Display>::fmt"([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [33 x i8] }>* @alloc8837 to [0 x i8]*), i64 33, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::ffi::c_str::<impl alloc::borrow::ToOwned for core::ffi::c_str::CStr>::clone_into"(%"core::ffi::c_str::CStr"* noalias nocapture noundef nonnull readonly align 1 %self.0, i64 %self.1, { i8*, i64 }* noalias nocapture noundef align 8 dereferenceable(16) %target) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_14 = alloca %"vec::Vec<u8>", align 8
  %b = alloca %"vec::Vec<u8>", align 8
  %0 = bitcast %"vec::Vec<u8>"* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0)
  %1 = bitcast { i8*, i64 }* %target to [0 x i8]**
  %tmp.sroa.0.0.copyload1.i = load [0 x i8]*, [0 x i8]** %1, align 8, !alias.scope !346
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %target, i64 0, i32 1
  %tmp.sroa.4.0.copyload.i = load i64, i64* %2, align 8, !alias.scope !346
  store [0 x i8]* inttoptr (i64 1 to [0 x i8]*), [0 x i8]** %1, align 8, !alias.scope !346
  store i64 0, i64* %2, align 8, !alias.scope !346
  %3 = getelementptr [0 x i8], [0 x i8]* %tmp.sroa.0.0.copyload1.i, i64 0, i64 0
  %4 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %b, i64 0, i32 0, i32 0
  store i8* %3, i8** %4, align 8, !alias.scope !349, !noalias !354
  %5 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %b, i64 0, i32 0, i32 1
  store i64 %tmp.sroa.4.0.copyload.i, i64* %5, align 8, !alias.scope !349, !noalias !354
  %6 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %b, i64 0, i32 1
  store i64 %tmp.sroa.4.0.copyload.i, i64* %6, align 8, !alias.scope !349, !noalias !354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %_3.i.i = icmp ult i64 %tmp.sroa.4.0.copyload.i, %self.1
  br i1 %_3.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E.exit.i", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hfd9e43ee90fb90a8E.exit.thread.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hfd9e43ee90fb90a8E.exit.thread.i": ; preds = %start
  store i64 %self.1, i64* %6, align 8, !alias.scope !359, !noalias !362
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hfd9e43ee90fb90a8E.exit.thread.i", %start
  %_5.i.i.i.i13.i = phi i64 [ %self.1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hfd9e43ee90fb90a8E.exit.thread.i" ], [ %tmp.sroa.4.0.copyload.i, %start ]
  %len.i.i.i.i = sub i64 %self.1, %_5.i.i.i.i13.i
  %src.i.i.i.i = getelementptr %"core::ffi::c_str::CStr", %"core::ffi::c_str::CStr"* %self.0, i64 0, i32 0, i64 0
  %dst.i.i.i.i = getelementptr [0 x i8], [0 x i8]* %tmp.sroa.0.0.copyload1.i, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %dst.i.i.i.i, i8* nonnull align 1 %src.i.i.i.i, i64 %_5.i.i.i.i13.i, i1 false), !alias.scope !364, !noalias !356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %_5.i.i.i.i.i.i.i = sub i64 %tmp.sroa.4.0.copyload.i, %_5.i.i.i.i13.i
  %7 = icmp ult i64 %_5.i.i.i.i.i.i.i, %len.i.i.i.i
  br i1 %7, label %bb2.i.i.i.i.i.i, label %bb2

bb2.i.i.i.i.i.i:                                  ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E.exit.i"
  %_4.i.i.i.i.i = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %b, i64 0, i32 0
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i.i, i64 %_5.i.i.i.i13.i, i64 %len.i.i.i.i)
          to label %.noexc unwind label %bb7

.noexc:                                           ; preds = %bb2.i.i.i.i.i.i
  %len.pre.i.i.i.i = load i64, i64* %6, align 8, !alias.scope !383, !noalias !384
  %self.idx.val.i.i.i.pre.i = load i8*, i8** %4, align 8, !alias.scope !383, !noalias !384
  br label %bb2

bb2:                                              ; preds = %.noexc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E.exit.i"
  %self.idx.val.i.i.i.i = phi i8* [ %dst.i.i.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E.exit.i" ], [ %self.idx.val.i.i.i.pre.i, %.noexc ]
  %len.i.i.i3.i = phi i64 [ %_5.i.i.i.i13.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E.exit.i" ], [ %len.pre.i.i.i.i, %.noexc ]
  %8 = getelementptr inbounds %"core::ffi::c_str::CStr", %"core::ffi::c_str::CStr"* %self.0, i64 0, i32 0, i64 %_5.i.i.i.i13.i
  %9 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i.i, i64 %len.i.i.i3.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* nonnull align 1 %8, i64 %len.i.i.i.i, i1 false), !noalias !383
  %10 = add i64 %len.i.i.i3.i, %len.i.i.i.i
  store i64 %10, i64* %6, align 8, !alias.scope !383, !noalias !384
  %11 = bitcast %"vec::Vec<u8>"* %_14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %11, i8* noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %12 = call fastcc { [0 x i8]*, i64 } @"alloc::vec::Vec<T,A>::into_boxed_slice"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_14)
  %_13.0 = extractvalue { [0 x i8]*, i64 } %12, 0
  %_13.1 = extractvalue { [0 x i8]*, i64 } %12, 1
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11)
  store [0 x i8]* %_13.0, [0 x i8]** %1, align 8
  store i64 %_13.1, i64* %2, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0)
  ret void

bb4:                                              ; preds = %bb7
  resume { i8*, i32 } %13

bb7:                                              ; preds = %bb2.i.i.i.i.i.i
  %13 = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %b) #31
          to label %bb4 unwind label %abort

abort:                                            ; preds = %bb7
  %14 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i8*, i64 } @"<alloc::ffi::c_str::CString as core::convert::From<&core::ffi::c_str::CStr>>::from"(%"core::ffi::c_str::CStr"* noalias nocapture noundef nonnull readonly align 1 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_6.i.i.i.i = icmp eq i64 %s.1, 0
  br i1 %_6.i.i.i.i, label %"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE.exit", label %bb6.i.i.i.i

bb6.i.i.i.i:                                      ; preds = %start
  %0 = xor i64 %s.1, -1
  %size.lobit.not.i.i.i.i.i.i = lshr i64 %0, 63
  %1 = icmp slt i64 %s.1, 0
  br i1 %1, label %bb8.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i"

bb8.i.i.i.i:                                      ; preds = %bb6.i.i.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !386
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i": ; preds = %bb6.i.i.i.i
  %2 = tail call i8* @__rust_alloc(i64 %s.1, i64 %size.lobit.not.i.i.i.i.i.i) #30, !noalias !386
  %3 = icmp eq i8* %2, null
  br i1 %3, label %bb20.i.i.i.i, label %"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE.exit"

bb20.i.i.i.i:                                     ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %s.1, i64 noundef %size.lobit.not.i.i.i.i.i.i) #29, !noalias !386
  unreachable

"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i", %start
  %.sroa.0.0.i.i.i.i = phi i8* [ %2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i" ], [ inttoptr (i64 1 to i8*), %start ]
  %src.i.i.i = getelementptr %"core::ffi::c_str::CStr", %"core::ffi::c_str::CStr"* %s.0, i64 0, i32 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.sroa.0.0.i.i.i.i, i8* nonnull align 1 %src.i.i.i, i64 %s.1, i1 false)
  %4 = insertvalue { i8*, i64 } undef, i8* %.sroa.0.0.i.i.i.i, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %s.1, 1
  ret { i8*, i64 } %5
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::ffi::c_str::<impl core::ffi::c_str::CStr>::to_string_lossy"(%"borrow::Cow<str>"* noalias nocapture noundef writeonly sret(%"borrow::Cow<str>") dereferenceable(32) %0, %"core::ffi::c_str::CStr"* noalias noundef nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_6.i = add i64 %self.1, -1
  %1 = getelementptr %"core::ffi::c_str::CStr", %"core::ffi::c_str::CStr"* %self.0, i64 0, i32 0
  tail call void @"alloc::string::String::from_utf8_lossy"(%"borrow::Cow<str>"* noalias nocapture noundef nonnull sret(%"borrow::Cow<str>") dereferenceable(32) %0, [0 x i8]* noalias noundef nonnull readonly align 1 %1, i64 %_6.i)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define { i8*, i64 } @"alloc::ffi::c_str::<impl core::ffi::c_str::CStr>::into_c_string"(%"core::ffi::c_str::CStr"* noalias noundef nonnull align 1 %self.0, i64 %self.1) unnamed_addr #13 personality i32 (...)* @rust_eh_personality {
start:
  %0 = getelementptr %"core::ffi::c_str::CStr", %"core::ffi::c_str::CStr"* %self.0, i64 0, i32 0, i64 0
  %1 = insertvalue { i8*, i64 } undef, i8* %0, 0
  %2 = insertvalue { i8*, i64 } %1, i64 %self.1, 1
  ret { i8*, i64 } %2
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::fmt::format::format_inner"(%"string::String"* noalias nocapture noundef sret(%"string::String") dereferenceable(24) %output, %"core::fmt::Arguments"* noalias nocapture noundef readonly dereferenceable(48) %args) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %e.i = alloca %"core::fmt::Error", align 1
  %_6.i11 = alloca %"core::fmt::Arguments", align 8
  %self.i = alloca %"string::String"*, align 8
  %args.idx = getelementptr %"core::fmt::Arguments", %"core::fmt::Arguments"* %args, i64 0, i32 0, i32 0
  %args.idx.val = load [0 x { [0 x i8]*, i64 }]*, [0 x { [0 x i8]*, i64 }]** %args.idx, align 8, !nonnull !2
  %args.idx9 = getelementptr %"core::fmt::Arguments", %"core::fmt::Arguments"* %args, i64 0, i32 0, i32 1
  %args.idx9.val = load i64, i64* %args.idx9, align 8
  %args.idx10 = getelementptr %"core::fmt::Arguments", %"core::fmt::Arguments"* %args, i64 0, i32 2, i32 1
  %args.idx10.val = load i64, i64* %args.idx10, align 8
  %0 = getelementptr inbounds [0 x { [0 x i8]*, i64 }], [0 x { [0 x i8]*, i64 }]* %args.idx.val, i64 0, i64 %args.idx9.val
  %1 = bitcast { [0 x i8]*, i64 }* %0 to i64*
  %2 = bitcast { [0 x i8]*, i64 }* %0 to [0 x { [0 x i8]*, i64 }]*
  %_12.i4.i.i.i.i.i = icmp eq [0 x { [0 x i8]*, i64 }]* %args.idx.val, %2
  br i1 %_12.i4.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3sum17h2688dd052aa3b81bE.exit.i, label %bb3.i.i.i.i.preheader.i

bb3.i.i.i.i.preheader.i:                          ; preds = %start
  %3 = bitcast [0 x { [0 x i8]*, i64 }]* %args.idx.val to i64*
  %4 = add i64 %args.idx9.val, 1152921504606846975
  %5 = and i64 %4, 1152921504606846975
  %6 = add nuw nsw i64 %5, 1
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %bb3.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb3.i.i.i.i.preheader.i
  %n.mod.vf = and i64 %6, 3
  %7 = icmp eq i64 %n.mod.vf, 0
  %8 = select i1 %7, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %6, %8
  %ind.end22 = getelementptr [0 x { [0 x i8]*, i64 }], [0 x { [0 x i8]*, i64 }]* %args.idx.val, i64 0, i64 %n.vec
  %ind.end = bitcast { [0 x i8]*, i64 }* %ind.end22 to i64*
  %9 = getelementptr [0 x { [0 x i8]*, i64 }], [0 x { [0 x i8]*, i64 }]* %args.idx.val, i64 0, i64 0, i32 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %16, %vector.body ]
  %vec.phi18 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %17, %vector.body ]
  %10 = shl i64 %index, 1
  %11 = or i64 %10, 4
  %12 = getelementptr [0 x { [0 x i8]*, i64 }], [0 x { [0 x i8]*, i64 }]* %args.idx.val, i64 0, i64 %index, i32 1
  %13 = getelementptr i64, i64* %9, i64 %11
  %14 = bitcast i64* %12 to <4 x i64>*
  %15 = bitcast i64* %13 to <4 x i64>*
  %wide.vec = load <4 x i64>, <4 x i64>* %14, align 8
  %wide.vec20 = load <4 x i64>, <4 x i64>* %15, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec21 = shufflevector <4 x i64> %wide.vec20, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %16 = add <2 x i64> %strided.vec, %vec.phi
  %17 = add <2 x i64> %strided.vec21, %vec.phi18
  %index.next = add nuw i64 %index, 4
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !393

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %17, %16
  %19 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %bb3.i.i.i.i.i.preheader

bb3.i.i.i.i.i.preheader:                          ; preds = %middle.block, %bb3.i.i.i.i.preheader.i
  %accum.06.i.i.i.i.i.ph = phi i64 [ 0, %bb3.i.i.i.i.preheader.i ], [ %19, %middle.block ]
  %self.sroa.0.05.i.i.i.i.i.ph = phi i64* [ %3, %bb3.i.i.i.i.preheader.i ], [ %ind.end, %middle.block ]
  br label %bb3.i.i.i.i.i

bb3.i.i.i.i.i:                                    ; preds = %bb3.i.i.i.i.i, %bb3.i.i.i.i.i.preheader
  %accum.06.i.i.i.i.i = phi i64 [ %_6.0.i.i.i.i.i.i.i, %bb3.i.i.i.i.i ], [ %accum.06.i.i.i.i.i.ph, %bb3.i.i.i.i.i.preheader ]
  %self.sroa.0.05.i.i.i.i.i = phi i64* [ %20, %bb3.i.i.i.i.i ], [ %self.sroa.0.05.i.i.i.i.i.ph, %bb3.i.i.i.i.i.preheader ]
  %20 = getelementptr inbounds i64, i64* %self.sroa.0.05.i.i.i.i.i, i64 2
  %21 = getelementptr i64, i64* %self.sroa.0.05.i.i.i.i.i, i64 1
  %.idx.val.i.i.i.i.i = load i64, i64* %21, align 8
  %_6.0.i.i.i.i.i.i.i = add i64 %.idx.val.i.i.i.i.i, %accum.06.i.i.i.i.i
  %_12.i.i.i.i.i.i = icmp eq i64* %20, %1
  br i1 %_12.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3sum17h2688dd052aa3b81bE.exit.i, label %bb3.i.i.i.i.i, !llvm.loop !395

_ZN4core4iter6traits8iterator8Iterator3sum17h2688dd052aa3b81bE.exit.i: ; preds = %bb3.i.i.i.i.i, %start
  %accum.0.lcssa.i.i.i.i.i = phi i64 [ 0, %start ], [ %_6.0.i.i.i.i.i.i.i, %bb3.i.i.i.i.i ]
  %22 = icmp eq i64 %args.idx10.val, 0
  br i1 %22, label %_ZN4core3fmt9Arguments18estimated_capacity17hd395a8ed1bd29f2fE.exit, label %bb3.i

bb3.i:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator3sum17h2688dd052aa3b81bE.exit.i
  %_11.not.i = icmp eq i64 %args.idx9.val, 0
  br i1 %_11.not.i, label %bb12.i, label %bb10.i

bb10.i:                                           ; preds = %bb3.i
  %23 = getelementptr inbounds [0 x { [0 x i8]*, i64 }], [0 x { [0 x i8]*, i64 }]* %args.idx.val, i64 0, i64 0, i32 1
  %_27.1.i = load i64, i64* %23, align 8
  %_13.i = icmp eq i64 %_27.1.i, 0
  %_18.i = icmp ult i64 %accum.0.lcssa.i.i.i.i.i, 16
  %or.cond.i = select i1 %_13.i, i1 %_18.i, i1 false
  br i1 %or.cond.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit", label %bb12.i

bb12.i:                                           ; preds = %bb10.i, %bb3.i
  %24 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %accum.0.lcssa.i.i.i.i.i, i64 2) #30
  %25 = extractvalue { i64, i1 } %24, 1
  %26 = extractvalue { i64, i1 } %24, 0
  br i1 %25, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit", label %_ZN4core3fmt9Arguments18estimated_capacity17hd395a8ed1bd29f2fE.exit

_ZN4core3fmt9Arguments18estimated_capacity17hd395a8ed1bd29f2fE.exit: ; preds = %bb12.i, %_ZN4core4iter6traits8iterator8Iterator3sum17h2688dd052aa3b81bE.exit.i
  %.2.i = phi i64 [ %accum.0.lcssa.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator3sum17h2688dd052aa3b81bE.exit.i ], [ %26, %bb12.i ]
  %_6.i = icmp eq i64 %.2.i, 0
  br i1 %_6.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit", label %bb6.i

bb6.i:                                            ; preds = %_ZN4core3fmt9Arguments18estimated_capacity17hd395a8ed1bd29f2fE.exit
  %27 = xor i64 %.2.i, -1
  %size.lobit.not.i.i.i = lshr i64 %27, 63
  %28 = icmp slt i64 %.2.i, 0
  br i1 %28, label %bb8.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"

bb8.i:                                            ; preds = %bb6.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i": ; preds = %bb6.i
  %29 = tail call i8* @__rust_alloc(i64 %.2.i, i64 %size.lobit.not.i.i.i) #30
  %30 = icmp eq i8* %29, null
  br i1 %30, label %bb20.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"

bb20.i:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %.2.i, i64 noundef %size.lobit.not.i.i.i) #29
  unreachable

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i", %_ZN4core3fmt9Arguments18estimated_capacity17hd395a8ed1bd29f2fE.exit, %bb12.i, %bb10.i
  %.2.i16 = phi i64 [ %.2.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i" ], [ 0, %_ZN4core3fmt9Arguments18estimated_capacity17hd395a8ed1bd29f2fE.exit ], [ 0, %bb10.i ], [ 0, %bb12.i ]
  %.sroa.0.0.i = phi i8* [ %29, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i" ], [ inttoptr (i64 1 to i8*), %_ZN4core3fmt9Arguments18estimated_capacity17hd395a8ed1bd29f2fE.exit ], [ inttoptr (i64 1 to i8*), %bb10.i ], [ inttoptr (i64 1 to i8*), %bb12.i ]
  %_11.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %output, i64 0, i32 0, i32 0, i32 0
  store i8* %.sroa.0.0.i, i8** %_11.sroa.0.0..sroa_idx, align 8
  %_11.sroa.4.0..sroa_idx2 = getelementptr inbounds %"string::String", %"string::String"* %output, i64 0, i32 0, i32 0, i32 1
  store i64 %.2.i16, i64* %_11.sroa.4.0..sroa_idx2, align 8
  %_11.sroa.5.0..sroa_idx4 = getelementptr inbounds %"string::String", %"string::String"* %output, i64 0, i32 0, i32 1
  store i64 0, i64* %_11.sroa.5.0..sroa_idx4, align 8
  %31 = bitcast %"core::fmt::Arguments"* %args to i8*
  %32 = bitcast %"string::String"** %self.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32)
  store %"string::String"* %output, %"string::String"** %self.i, align 8, !noalias !397
  %_3.0.i = bitcast %"string::String"** %self.i to {}*
  %33 = bitcast %"core::fmt::Arguments"* %_6.i11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %33), !noalias !397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %33, i8* noundef nonnull align 8 dereferenceable(48) %31, i64 48, i1 false)
  %34 = invoke noundef zeroext i1 @"core::fmt::write"({}* noundef nonnull align 1 %_3.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8* }>* @vtable.0 to [3 x i64]*), %"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_6.i11)
          to label %bb2 unwind label %cleanup

cleanup:                                          ; preds = %bb1.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"
  %35 = landingpad { i8*, i32 }
          cleanup
  call fastcc void @"core::ptr::drop_in_place<alloc::string::String>"(%"string::String"* nonnull %output) #31
  resume { i8*, i32 } %35

bb2:                                              ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %33), !noalias !397
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32)
  %36 = bitcast %"core::fmt::Error"* %e.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 0, i8* nonnull %36)
  br i1 %34, label %bb1.i, label %bb3

bb1.i:                                            ; preds = %bb2
  %_7.0.i = bitcast %"core::fmt::Error"* %e.i to {}*
  invoke void @"core::result::unwrap_failed"([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [51 x i8] }>* @alloc8838 to [0 x i8]*), i64 51, {}* noundef nonnull align 1 %_7.0.i, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.2 to [3 x i64]*), %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8840 to %"core::panic::location::Location"*)) #29
          to label %.noexc unwind label %cleanup

.noexc:                                           ; preds = %bb1.i
  unreachable

bb3:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0i8(i64 0, i8* nonnull %36)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::str::<impl alloc::borrow::ToOwned for str>::clone_into"([0 x i8]* noalias nocapture noundef nonnull readonly align 1 %self.0, i64 %self.1, %"string::String"* noalias nocapture noundef align 8 dereferenceable(24) %target) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %b = alloca %"vec::Vec<u8>", align 8
  %0 = bitcast %"vec::Vec<u8>"* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0)
  %self.sroa.0.0.tmp.sroa.0.0..sroa_cast.i.sroa_cast = bitcast %"string::String"* %target to i8*
  %b52 = bitcast %"vec::Vec<u8>"* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %b52, i8* noundef nonnull align 8 dereferenceable(24) %self.sroa.0.0.tmp.sroa.0.0..sroa_cast.i.sroa_cast, i64 24, i1 false)
  %_16.sroa.0.0.dest4041.i.sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %target, i64 0, i32 0, i32 0, i32 0
  store i8* inttoptr (i64 1 to i8*), i8** %_16.sroa.0.0.dest4041.i.sroa_idx, align 8, !alias.scope !401, !noalias !405
  %_16.sroa.4.0.dest4041.i.sroa_idx37 = getelementptr inbounds %"string::String", %"string::String"* %target, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast i64* %_16.sroa.4.0.dest4041.i.sroa_idx37 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %2 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %b, i64 0, i32 1
  %_5.i.i = load i64, i64* %2, align 8, !alias.scope !410, !noalias !413
  %_3.i.i = icmp ult i64 %_5.i.i, %self.1
  %spec.store.select = select i1 %_3.i.i, i64 %_5.i.i, i64 %self.1
  store i64 %spec.store.select, i64* %2, align 8
  %len.i.i.i.i = sub i64 %self.1, %spec.store.select
  %3 = bitcast %"vec::Vec<u8>"* %b to [0 x i8]**
  %target.idx.val8.i = load [0 x i8]*, [0 x i8]** %3, align 8, !alias.scope !407, !noalias !413
  %src.i.i.i.i = getelementptr [0 x i8], [0 x i8]* %self.0, i64 0, i64 0
  %dst.i.i.i.i = getelementptr [0 x i8], [0 x i8]* %target.idx.val8.i, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %dst.i.i.i.i, i8* nonnull align 1 %src.i.i.i.i, i64 %spec.store.select, i1 false), !alias.scope !415, !noalias !407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %self.idx.i.i.i.i.i.i = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %b, i64 0, i32 0, i32 1
  %self.idx.val.i.i.i.i.i.i = load i64, i64* %self.idx.i.i.i.i.i.i, align 8, !alias.scope !434, !noalias !439
  %_5.i.i.i.i.i.i.i = sub i64 %self.idx.val.i.i.i.i.i.i, %spec.store.select
  %4 = icmp ult i64 %_5.i.i.i.i.i.i.i, %len.i.i.i.i
  br i1 %4, label %bb2.i.i.i.i.i.i, label %bb4

bb2.i.i.i.i.i.i:                                  ; preds = %start
  %_4.i.i.i.i.i = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %b, i64 0, i32 0
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i.i, i64 %spec.store.select, i64 %len.i.i.i.i)
          to label %.noexc unwind label %bb5

.noexc:                                           ; preds = %bb2.i.i.i.i.i.i
  %len.pre.i.i.i.i = load i64, i64* %2, align 8, !alias.scope !441, !noalias !439
  %target.idx.phi.trans.insert.i = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %b, i64 0, i32 0, i32 0
  %self.idx.val.i.i.i.pre.i = load i8*, i8** %target.idx.phi.trans.insert.i, align 8, !alias.scope !441, !noalias !439
  br label %bb4

bb4:                                              ; preds = %.noexc, %start
  %self.idx.val.i.i.i.i = phi i8* [ %dst.i.i.i.i, %start ], [ %self.idx.val.i.i.i.pre.i, %.noexc ]
  %len.i.i.i3.i = phi i64 [ %spec.store.select, %start ], [ %len.pre.i.i.i.i, %.noexc ]
  %5 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %spec.store.select
  %6 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i.i, i64 %len.i.i.i3.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* nonnull align 1 %5, i64 %len.i.i.i.i, i1 false), !noalias !441
  %7 = add i64 %len.i.i.i3.i, %len.i.i.i.i
  store i64 %7, i64* %2, align 8, !alias.scope !441, !noalias !439
  %target5455 = bitcast %"string::String"* %target to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %target5455, i8* noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0)
  ret void

bb2:                                              ; preds = %bb5
  resume { i8*, i32 } %8

bb5:                                              ; preds = %bb2.i.i.i.i.i.i
  %8 = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %b) #31
          to label %bb2 unwind label %abort

abort:                                            ; preds = %bb5
  %9 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::str::<impl str>::to_lowercase"(%"string::String"* noalias nocapture noundef sret(%"string::String") dereferenceable(24) %s, [0 x i8]* noalias noundef nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_32 = alloca [3 x i32], align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %_6.i.i = icmp eq i64 %self.1, 0
  br i1 %_6.i.i, label %bb30, label %bb6.i.i

bb6.i.i:                                          ; preds = %start
  %0 = xor i64 %self.1, -1
  %size.lobit.not.i.i.i.i = lshr i64 %0, 63
  %1 = icmp slt i64 %self.1, 0
  br i1 %1, label %bb8.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"

bb8.i.i:                                          ; preds = %bb6.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !445
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i": ; preds = %bb6.i.i
  %2 = tail call i8* @__rust_alloc(i64 %self.1, i64 %size.lobit.not.i.i.i.i) #30, !noalias !445
  %3 = icmp eq i8* %2, null
  br i1 %3, label %bb20.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i"

bb20.i.i:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %self.1, i64 noundef %size.lobit.not.i.i.i.i) #29, !noalias !445
  unreachable

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"
  %_6.not76.i = icmp ult i64 %self.1, 16
  br i1 %_6.not76.i, label %bb30, label %bb21.i

bb21.i:                                           ; preds = %bb14.15.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i"
  %_778.i = phi i64 [ %_7.i, %bb14.15.i ], [ 16, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ]
  %i.077.i = phi i64 [ %_778.i, %bb14.15.i ], [ 0, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ]
  %4 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %i.077.i
  %self5.i = bitcast i8* %4 to i64*
  %tmp.0.copyload.i = load i64, i64* %self5.i, align 1, !alias.scope !442, !noalias !447
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i64*
  %tmp.0.copyload.1.i = load i64, i64* %6, align 1, !alias.scope !442, !noalias !447
  %7 = or i64 %tmp.0.copyload.1.i, %tmp.0.copyload.i
  %_40.i = and i64 %7, -9187201950435737472
  %8 = icmp eq i64 %_40.i, 0
  %9 = insertelement <2 x i64> poison, i64 %tmp.0.copyload.i, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  %11 = lshr <2 x i64> %10, <i64 8, i64 16>
  %12 = lshr i64 %tmp.0.copyload.i, 24
  %13 = insertelement <4 x i64> poison, i64 %tmp.0.copyload.i, i64 0
  %shuffle = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> zeroinitializer
  %14 = lshr <4 x i64> %shuffle, <i64 32, i64 40, i64 48, i64 56>
  %15 = insertelement <8 x i64> poison, i64 %tmp.0.copyload.i, i64 0
  %16 = shufflevector <2 x i64> %11, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %17 = shufflevector <8 x i64> %15, <8 x i64> %16, <8 x i32> <i32 0, i32 8, i32 9, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %18 = insertelement <8 x i64> %17, i64 %12, i64 3
  %19 = shufflevector <4 x i64> %14, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %20 = shufflevector <8 x i64> %18, <8 x i64> %19, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %21 = trunc <8 x i64> %20 to <8 x i8>
  %22 = insertelement <2 x i64> poison, i64 %tmp.0.copyload.1.i, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  %24 = lshr i64 %tmp.0.copyload.1.i, 48
  %25 = trunc i64 %24 to i8
  br i1 %8, label %bb14.15.i, label %bb30

bb14.15.i:                                        ; preds = %bb21.i
  %26 = lshr <2 x i64> %23, <i64 32, i64 40>
  %27 = trunc <2 x i64> %26 to <2 x i8>
  %28 = insertelement <4 x i64> poison, i64 %tmp.0.copyload.1.i, i64 0
  %29 = lshr i64 %tmp.0.copyload.1.i, 8
  %30 = insertelement <4 x i64> %28, i64 %29, i64 1
  %31 = lshr <2 x i64> %23, <i64 16, i64 24>
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %33 = shufflevector <4 x i64> %30, <4 x i64> %32, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %34 = trunc <4 x i64> %33 to <4 x i8>
  %35 = getelementptr inbounds i8, i8* %2, i64 %i.077.i
  %36 = getelementptr inbounds i8, i8* %4, i64 15
  %_2.i = load i8, i8* %36, align 1, !alias.scope !448, !noalias !447
  %37 = shufflevector <8 x i8> %21, <8 x i8> undef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %38 = shufflevector <4 x i8> %34, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %39 = shufflevector <16 x i8> %37, <16 x i8> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef>
  %40 = shufflevector <2 x i8> %27, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %41 = shufflevector <16 x i8> %39, <16 x i8> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 undef, i32 undef>
  %42 = insertelement <16 x i8> %41, i8 %25, i64 14
  %43 = insertelement <16 x i8> %42, i8 %_2.i, i64 15
  %44 = add <16 x i8> %43, <i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65>
  %45 = icmp ult <16 x i8> %44, <i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26>
  %46 = select <16 x i1> %45, <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8> zeroinitializer
  %47 = shufflevector <8 x i8> %21, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %48 = shufflevector <16 x i8> %47, <16 x i8> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef>
  %49 = shufflevector <16 x i8> %48, <16 x i8> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 undef, i32 undef>
  %50 = insertelement <16 x i8> %49, i8 %25, i64 14
  %51 = insertelement <16 x i8> %50, i8 %_2.i, i64 15
  %52 = or <16 x i8> %46, %51
  %53 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %52, <16 x i8>* %53, align 1, !noalias !445
  %_7.i = add i64 %_778.i, 16
  %_6.not.i = icmp ugt i64 %_7.i, %self.1
  br i1 %_6.not.i, label %bb30, label %bb21.i

cleanup1.loopexit:                                ; preds = %bb3.i.i12.i.i.i.i
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp.loopexit:              ; preds = %bb3.us.i.i.i.i.i
  %lpad.loopexit95 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb16, %bb19, %bb18, %bb12, %bb15, %bb13, %bb9, %bb2.i.i.i.i.i.i, %bb3.i, %"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase26case_ignoreable_then_cased17h820cdf2c06849a90E.exit.i"
  %lpad.loopexit98 = landingpad { i8*, i32 }
          cleanup
  br label %cleanup1

cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb2.i25.i, %bb2.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  br label %cleanup1

cleanup1:                                         ; preds = %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit, %cleanup1.loopexit.split-lp.loopexit, %cleanup1.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %cleanup1.loopexit ], [ %lpad.loopexit95, %cleanup1.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call fastcc void @"core::ptr::drop_in_place<alloc::string::String>"(%"string::String"* nonnull %s) #31
  resume { i8*, i32 } %lpad.phi

bb30:                                             ; preds = %bb14.15.i, %bb21.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i", %start
  %out.sroa.0.0 = phi i8* [ %2, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ], [ inttoptr (i64 1 to i8*), %start ], [ %2, %bb14.15.i ], [ %2, %bb21.i ]
  %i.0.lcssa.i = phi i64 [ 0, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ], [ 0, %start ], [ %i.077.i, %bb21.i ], [ %_778.i, %bb14.15.i ]
  %54 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %i.0.lcssa.i
  %len.i = sub i64 %self.1, %i.0.lcssa.i
  %55 = bitcast i8* %54 to [0 x i8]*
  %_62.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0, i32 0
  store i8* %out.sroa.0.0, i8** %_62.sroa.0.0..sroa_idx, align 8
  %_62.sroa.4.0..sroa_idx133 = getelementptr %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 %self.1, i64* %_62.sroa.4.0..sroa_idx133, align 8
  %_62.sroa.5.0..sroa_idx135 = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 1
  store i64 %i.0.lcssa.i, i64* %_62.sroa.5.0..sroa_idx135, align 8
  %56 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %self.1
  %_12.i.i.i107 = icmp eq i64 %i.0.lcssa.i, %self.1
  br i1 %_12.i.i.i107, label %bb6, label %bb3.i.i.lr.ph

bb3.i.i.lr.ph:                                    ; preds = %bb30
  %_4.i.i.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0
  %57 = bitcast [3 x i32]* %_32 to i8*
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %_32, i64 0, i64 1
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %_32, i64 0, i64 2
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %_32, i64 0, i64 0
  br label %bb3.i.i

bb3.i.i:                                          ; preds = %bb22, %bb3.i.i.lr.ph
  %iter.sroa.0.0110 = phi i64 [ 0, %bb3.i.i.lr.ph ], [ %71, %bb22 ]
  %iter.sroa.5.0108 = phi i8* [ %54, %bb3.i.i.lr.ph ], [ %iter.sroa.5.1, %bb22 ]
  %61 = getelementptr inbounds i8, i8* %iter.sroa.5.0108, i64 1
  %x.i.i = load i8, i8* %iter.sroa.5.0108, align 1, !noalias !451
  %_11.i.i = icmp sgt i8 %x.i.i, -1
  br i1 %_11.i.i, label %bb6.i.i44, label %bb7.i.i

bb7.i.i:                                          ; preds = %bb3.i.i
  %_55.i.i = and i8 %x.i.i, 31
  %init.i.i = zext i8 %_55.i.i to i32
  %_12.i17.i.i = icmp ne i8* %61, %56
  tail call void @llvm.assume(i1 %_12.i17.i.i) #30
  %62 = getelementptr inbounds i8, i8* %iter.sroa.5.0108, i64 2
  %y.i.i = load i8, i8* %61, align 1, !noalias !451
  %_60.i.i = shl nuw nsw i32 %init.i.i, 6
  %_63.i.i = and i8 %y.i.i, 63
  %_62.i.i = zext i8 %_63.i.i to i32
  %63 = or i32 %_60.i.i, %_62.i.i
  %_24.i.i = icmp ugt i8 %x.i.i, -33
  br i1 %_24.i.i, label %bb9.i.i, label %bb3

bb6.i.i44:                                        ; preds = %bb3.i.i
  %_13.i.i = zext i8 %x.i.i to i32
  br label %bb3

bb9.i.i:                                          ; preds = %bb7.i.i
  %_12.i23.i.i = icmp ne i8* %62, %56
  tail call void @llvm.assume(i1 %_12.i23.i.i) #30
  %64 = getelementptr inbounds i8, i8* %iter.sroa.5.0108, i64 3
  %z.i.i = load i8, i8* %62, align 1, !noalias !451
  %_67.i.i = shl nuw nsw i32 %_62.i.i, 6
  %_70.i.i = and i8 %z.i.i, 63
  %_69.i.i = zext i8 %_70.i.i to i32
  %y_z.i.i = or i32 %_67.i.i, %_69.i.i
  %_35.i.i = shl nuw nsw i32 %init.i.i, 12
  %65 = or i32 %y_z.i.i, %_35.i.i
  %_38.i.i = icmp ugt i8 %x.i.i, -17
  br i1 %_38.i.i, label %bb11.i.i, label %bb3

bb11.i.i:                                         ; preds = %bb9.i.i
  %_12.i29.i.i = icmp ne i8* %64, %56
  tail call void @llvm.assume(i1 %_12.i29.i.i) #30
  %66 = getelementptr inbounds i8, i8* %iter.sroa.5.0108, i64 4
  %w.i.i = load i8, i8* %64, align 1, !noalias !451
  %_45.i.i = shl nuw nsw i32 %init.i.i, 18
  %_44.i.i = and i32 %_45.i.i, 1835008
  %_74.i.i = shl nuw nsw i32 %y_z.i.i, 6
  %_77.i.i = and i8 %w.i.i, 63
  %_76.i.i = zext i8 %_77.i.i to i32
  %_47.i.i = or i32 %_74.i.i, %_76.i.i
  %67 = or i32 %_47.i.i, %_44.i.i
  %68 = icmp eq i32 %67, 1114112
  br i1 %68, label %bb6, label %bb3

bb3:                                              ; preds = %bb11.i.i, %bb9.i.i, %bb6.i.i44, %bb7.i.i
  %iter.sroa.5.1 = phi i8* [ %61, %bb6.i.i44 ], [ %66, %bb11.i.i ], [ %64, %bb9.i.i ], [ %62, %bb7.i.i ]
  %.sroa.4.0.i.ph41.i = phi i32 [ %_13.i.i, %bb6.i.i44 ], [ %67, %bb11.i.i ], [ %65, %bb9.i.i ], [ %63, %bb7.i.i ]
  %69 = ptrtoint i8* %iter.sroa.5.0108 to i64
  %70 = ptrtoint i8* %iter.sroa.5.1 to i64
  %_11.i = sub i64 %iter.sroa.0.0110, %69
  %71 = add i64 %_11.i, %70
  switch i32 %.sroa.4.0.i.ph41.i, label %bb9 [
    i32 1114112, label %bb6
    i32 931, label %bb7
  ]

bb6:                                              ; preds = %bb22, %bb3, %bb11.i.i, %bb30
  ret void

bb7:                                              ; preds = %bb3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %72 = icmp eq i64 %iter.sroa.0.0110, 0
  br i1 %72, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h216cd2f174a41c65E.exit.i", label %bb2.i.i.i.i

bb2.i.i.i.i:                                      ; preds = %bb7
  %_3.i.i.i.i.i = icmp ult i64 %iter.sroa.0.0110, %len.i
  br i1 %_3.i.i.i.i.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E.exit.i.i.i", label %bb5.i.i.i.i

bb5.i.i.i.i:                                      ; preds = %bb2.i.i.i.i
  %73 = icmp eq i64 %iter.sroa.0.0110, %len.i
  br i1 %73, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h216cd2f174a41c65E.exit.i", label %bb2.i.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E.exit.i.i.i": ; preds = %bb2.i.i.i.i
  %74 = getelementptr inbounds i8, i8* %54, i64 %iter.sroa.0.0110
  %b.i.i.i.i = load i8, i8* %74, align 1, !alias.scope !461, !noalias !459
  %75 = icmp sgt i8 %b.i.i.i.i, -65
  br i1 %75, label %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h216cd2f174a41c65E.exit.i", label %bb2.i.i

bb2.i.i:                                          ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E.exit.i.i.i", %bb5.i.i.i.i
  invoke void @"core::str::slice_error_fail"([0 x i8]* noalias noundef nonnull readonly align 1 %55, i64 %len.i, i64 0, i64 %iter.sroa.0.0110, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8851 to %"core::panic::location::Location"*)) #29
          to label %.noexc unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb2.i.i
  unreachable

"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h216cd2f174a41c65E.exit.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E.exit.i.i.i", %bb5.i.i.i.i, %bb7
  %76 = getelementptr inbounds i8, i8* %54, i64 %iter.sroa.0.0110
  br label %bb1.us.i.i.i.i.i

bb1.us.i.i.i.i.i:                                 ; preds = %.noexc45, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h216cd2f174a41c65E.exit.i"
  %self2.i.i.i.us.i.i.i.i.i = phi i8* [ %76, %"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h216cd2f174a41c65E.exit.i" ], [ %self2.i.i.i.us17.i.i.i.i.i, %.noexc45 ]
  %_12.i.i.i.us.i.i.i.i.i = icmp eq i8* %self2.i.i.i.us.i.i.i.i.i, %54
  br i1 %_12.i.i.i.us.i.i.i.i.i, label %bb3.thread.i, label %bb3.i.i.us.i.i.i.i.i

bb3.i.i.us.i.i.i.i.i:                             ; preds = %bb1.us.i.i.i.i.i
  %77 = getelementptr inbounds i8, i8* %self2.i.i.i.us.i.i.i.i.i, i64 -1
  %_14.i.i.us.i.i.i.i.i = load i8, i8* %77, align 1, !alias.scope !456, !noalias !468
  %_13.i.i.us.i.i.i.i.i = icmp sgt i8 %_14.i.i.us.i.i.i.i.i, -1
  br i1 %_13.i.i.us.i.i.i.i.i, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.thread14.us.i.i.i.i.i", label %bb7.i.i.us.i.i.i.i.i

bb7.i.i.us.i.i.i.i.i:                             ; preds = %bb3.i.i.us.i.i.i.i.i
  %_12.i22.i.i.us.i.i.i.i.i = icmp ne i8* %77, %54
  tail call void @llvm.assume(i1 %_12.i22.i.i.us.i.i.i.i.i) #30
  %78 = getelementptr inbounds i8, i8* %self2.i.i.i.us.i.i.i.i.i, i64 -2
  %z.i.i.us.i.i.i.i.i = load i8, i8* %78, align 1, !alias.scope !456, !noalias !468
  %_57.i.i.us.i.i.i.i.i = and i8 %z.i.i.us.i.i.i.i.i, 31
  %_23.i.i.us.i.i.i.i.i = zext i8 %_57.i.i.us.i.i.i.i.i to i32
  %_25.i.i.us.i.i.i.i.i = icmp slt i8 %z.i.i.us.i.i.i.i.i, -64
  br i1 %_25.i.i.us.i.i.i.i.i, label %bb9.i.i.us.i.i.i.i.i, label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.us.i.i.i.i.i"

bb9.i.i.us.i.i.i.i.i:                             ; preds = %bb7.i.i.us.i.i.i.i.i
  %_12.i28.i.i.us.i.i.i.i.i = icmp ne i8* %78, %54
  tail call void @llvm.assume(i1 %_12.i28.i.i.us.i.i.i.i.i) #30
  %79 = getelementptr inbounds i8, i8* %self2.i.i.i.us.i.i.i.i.i, i64 -3
  %y.i.i.us.i.i.i.i.i = load i8, i8* %79, align 1, !alias.scope !456, !noalias !468
  %_65.i.i.us.i.i.i.i.i = and i8 %y.i.i.us.i.i.i.i.i, 15
  %_31.i.i.us.i.i.i.i.i = zext i8 %_65.i.i.us.i.i.i.i.i to i32
  %_33.i.i.us.i.i.i.i.i = icmp slt i8 %y.i.i.us.i.i.i.i.i, -64
  br i1 %_33.i.i.us.i.i.i.i.i, label %bb11.i.i.us.i.i.i.i.i, label %bb13.i.i.us.i.i.i.i.i

bb11.i.i.us.i.i.i.i.i:                            ; preds = %bb9.i.i.us.i.i.i.i.i
  %_12.i34.i.i.us.i.i.i.i.i = icmp ne i8* %79, %54
  tail call void @llvm.assume(i1 %_12.i34.i.i.us.i.i.i.i.i) #30
  %80 = getelementptr inbounds i8, i8* %self2.i.i.i.us.i.i.i.i.i, i64 -4
  %x.i.i.us.i.i.i.i.i = load i8, i8* %80, align 1, !alias.scope !456, !noalias !468
  %_73.i.i.us.i.i.i.i.i = and i8 %x.i.i.us.i.i.i.i.i, 7
  %_39.i.i.us.i.i.i.i.i = zext i8 %_73.i.i.us.i.i.i.i.i to i32
  %_76.i.i.us.i.i.i.i.i = shl nuw nsw i32 %_39.i.i.us.i.i.i.i.i, 6
  %_79.i.i.us.i.i.i.i.i = and i8 %y.i.i.us.i.i.i.i.i, 63
  %_78.i.i.us.i.i.i.i.i = zext i8 %_79.i.i.us.i.i.i.i.i to i32
  %_41.i.i.us.i.i.i.i.i = or i32 %_76.i.i.us.i.i.i.i.i, %_78.i.i.us.i.i.i.i.i
  br label %bb13.i.i.us.i.i.i.i.i

bb13.i.i.us.i.i.i.i.i:                            ; preds = %bb11.i.i.us.i.i.i.i.i, %bb9.i.i.us.i.i.i.i.i
  %self2.i.i.i.us19.i.i.i.i.i = phi i8* [ %80, %bb11.i.i.us.i.i.i.i.i ], [ %79, %bb9.i.i.us.i.i.i.i.i ]
  %ch.1.i.i.us.i.i.i.i.i = phi i32 [ %_41.i.i.us.i.i.i.i.i, %bb11.i.i.us.i.i.i.i.i ], [ %_31.i.i.us.i.i.i.i.i, %bb9.i.i.us.i.i.i.i.i ]
  %_81.i.i.us.i.i.i.i.i = shl nsw i32 %ch.1.i.i.us.i.i.i.i.i, 6
  %_84.i.i.us.i.i.i.i.i = and i8 %z.i.i.us.i.i.i.i.i, 63
  %_83.i.i.us.i.i.i.i.i = zext i8 %_84.i.i.us.i.i.i.i.i to i32
  %_44.i.i.us.i.i.i.i.i = or i32 %_81.i.i.us.i.i.i.i.i, %_83.i.i.us.i.i.i.i.i
  br label %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.us.i.i.i.i.i"

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.us.i.i.i.i.i": ; preds = %bb13.i.i.us.i.i.i.i.i, %bb7.i.i.us.i.i.i.i.i
  %self2.i.i.i.us18.i.i.i.i.i = phi i8* [ %self2.i.i.i.us19.i.i.i.i.i, %bb13.i.i.us.i.i.i.i.i ], [ %78, %bb7.i.i.us.i.i.i.i.i ]
  %ch.0.i.i.us.i.i.i.i.i = phi i32 [ %_44.i.i.us.i.i.i.i.i, %bb13.i.i.us.i.i.i.i.i ], [ %_23.i.i.us.i.i.i.i.i, %bb7.i.i.us.i.i.i.i.i ]
  %_86.i.i.us.i.i.i.i.i = shl i32 %ch.0.i.i.us.i.i.i.i.i, 6
  %_89.i.i.us.i.i.i.i.i = and i8 %_14.i.i.us.i.i.i.i.i, 63
  %_88.i.i.us.i.i.i.i.i = zext i8 %_89.i.i.us.i.i.i.i.i to i32
  %_47.i.i.us.i.i.i.i.i = or i32 %_86.i.i.us.i.i.i.i.i, %_88.i.i.us.i.i.i.i.i
  %.not.us.i.i.i.i.i = icmp eq i32 %_47.i.i.us.i.i.i.i.i, 1114112
  br i1 %.not.us.i.i.i.i.i, label %bb3.thread.i, label %bb3.us.i.i.i.i.i

"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.thread14.us.i.i.i.i.i": ; preds = %bb3.i.i.us.i.i.i.i.i
  %_15.i.i.us.i.i.i.i.i = zext i8 %_14.i.i.us.i.i.i.i.i to i32
  br label %bb3.us.i.i.i.i.i

bb3.us.i.i.i.i.i:                                 ; preds = %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.thread14.us.i.i.i.i.i", %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.us.i.i.i.i.i"
  %self2.i.i.i.us17.i.i.i.i.i = phi i8* [ %77, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.thread14.us.i.i.i.i.i" ], [ %self2.i.i.i.us18.i.i.i.i.i, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.us.i.i.i.i.i" ]
  %81 = phi i32 [ %_15.i.i.us.i.i.i.i.i, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.thread14.us.i.i.i.i.i" ], [ %_47.i.i.us.i.i.i.i.i, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.us.i.i.i.i.i" ]
  %82 = invoke noundef zeroext i1 @"core::unicode::unicode_data::case_ignorable::lookup"(i32 noundef %81)
          to label %.noexc45 unwind label %cleanup1.loopexit.split-lp.loopexit

.noexc45:                                         ; preds = %bb3.us.i.i.i.i.i
  br i1 %82, label %bb1.us.i.i.i.i.i, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase26case_ignoreable_then_cased17h820cdf2c06849a90E.exit.i"

"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase26case_ignoreable_then_cased17h820cdf2c06849a90E.exit.i": ; preds = %.noexc45
  %83 = invoke noundef zeroext i1 @"core::unicode::unicode_data::cased::lookup"(i32 noundef %81)
          to label %.noexc46 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc46:                                         ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase26case_ignoreable_then_cased17h820cdf2c06849a90E.exit.i"
  br i1 %83, label %bb2.i, label %bb3.thread.i

bb2.i:                                            ; preds = %.noexc46
  %_20.i = add i64 %iter.sroa.0.0110, 2
  %84 = icmp eq i64 %_20.i, 0
  br i1 %84, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E.exit.i", label %bb2.i.i.i21.i

bb2.i.i.i21.i:                                    ; preds = %bb2.i
  %_3.i.i.i.i20.i = icmp ult i64 %_20.i, %len.i
  br i1 %_3.i.i.i.i20.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E.exit.i.i24.i", label %bb5.i.i.i22.i

bb5.i.i.i22.i:                                    ; preds = %bb2.i.i.i21.i
  %85 = icmp eq i64 %_20.i, %len.i
  br i1 %85, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E.exit.i", label %bb2.i25.i

"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E.exit.i.i24.i": ; preds = %bb2.i.i.i21.i
  %86 = getelementptr inbounds i8, i8* %54, i64 %_20.i
  %b.i.i.i23.i = load i8, i8* %86, align 1, !alias.scope !482, !noalias !459
  %87 = icmp sgt i8 %b.i.i.i23.i, -65
  br i1 %87, label %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E.exit.i", label %bb2.i25.i

bb2.i25.i:                                        ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E.exit.i.i24.i", %bb5.i.i.i22.i
  invoke void @"core::str::slice_error_fail"([0 x i8]* noalias noundef nonnull readonly align 1 %55, i64 %len.i, i64 %_20.i, i64 %len.i, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8853 to %"core::panic::location::Location"*)) #29
          to label %.noexc47 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %bb2.i25.i
  unreachable

"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E.exit.i": ; preds = %"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E.exit.i.i24.i", %bb5.i.i.i22.i, %bb2.i
  %88 = getelementptr inbounds i8, i8* %54, i64 %_20.i
  br label %bb1.i.i.i.i

bb1.i.i.i.i:                                      ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h50e304509f7b3dc3E.exit.i.i.i.i", %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E.exit.i"
  %89 = phi i8 [ %100, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h50e304509f7b3dc3E.exit.i.i.i.i" ], [ 0, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E.exit.i" ]
  %self1.i.i.i.i.i.i.i = phi i8* [ %self1.i.i.i17.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h50e304509f7b3dc3E.exit.i.i.i.i" ], [ %88, %"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E.exit.i" ]
  %_12.i.i.i.i.i.i.i = icmp eq i8* %self1.i.i.i.i.i.i.i, %56
  br i1 %_12.i.i.i.i.i.i.i, label %bb3.thread34.i, label %bb3.i.i.i.i.i.i

bb3.i.i.i.i.i.i:                                  ; preds = %bb1.i.i.i.i
  %90 = getelementptr inbounds i8, i8* %self1.i.i.i.i.i.i.i, i64 1
  %x.i.i.i.i.i.i = load i8, i8* %self1.i.i.i.i.i.i.i, align 1, !alias.scope !456, !noalias !489
  %_11.i.i.i.i.i.i = icmp sgt i8 %x.i.i.i.i.i.i, -1
  br i1 %_11.i.i.i.i.i.i, label %bb6.i.i.i.i.i.i, label %bb7.i.i.i.i.i.i

bb7.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i
  %_55.i.i.i.i.i.i = and i8 %x.i.i.i.i.i.i, 31
  %init.i.i.i.i.i.i = zext i8 %_55.i.i.i.i.i.i to i32
  %_12.i17.i.i.i.i.i.i = icmp ne i8* %90, %56
  tail call void @llvm.assume(i1 %_12.i17.i.i.i.i.i.i) #30
  %91 = getelementptr inbounds i8, i8* %self1.i.i.i.i.i.i.i, i64 2
  %y.i.i.i.i.i.i = load i8, i8* %90, align 1, !alias.scope !456, !noalias !489
  %_60.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 6
  %_63.i.i.i.i.i.i = and i8 %y.i.i.i.i.i.i, 63
  %_62.i.i.i.i.i.i = zext i8 %_63.i.i.i.i.i.i to i32
  %92 = or i32 %_60.i.i.i.i.i.i, %_62.i.i.i.i.i.i
  %_24.i.i.i.i.i.i = icmp ugt i8 %x.i.i.i.i.i.i, -33
  br i1 %_24.i.i.i.i.i.i, label %bb9.i.i.i.i.i.i, label %bb3.i.i.i.i

bb6.i.i.i.i.i.i:                                  ; preds = %bb3.i.i.i.i.i.i
  %_13.i.i.i.i.i.i = zext i8 %x.i.i.i.i.i.i to i32
  br label %bb3.i.i.i.i

bb9.i.i.i.i.i.i:                                  ; preds = %bb7.i.i.i.i.i.i
  %_12.i23.i.i.i.i.i.i = icmp ne i8* %91, %56
  tail call void @llvm.assume(i1 %_12.i23.i.i.i.i.i.i) #30
  %93 = getelementptr inbounds i8, i8* %self1.i.i.i.i.i.i.i, i64 3
  %z.i.i.i.i.i.i = load i8, i8* %91, align 1, !alias.scope !456, !noalias !489
  %_67.i.i.i.i.i.i = shl nuw nsw i32 %_62.i.i.i.i.i.i, 6
  %_70.i.i.i.i.i.i = and i8 %z.i.i.i.i.i.i, 63
  %_69.i.i.i.i.i.i = zext i8 %_70.i.i.i.i.i.i to i32
  %y_z.i.i.i.i.i.i = or i32 %_67.i.i.i.i.i.i, %_69.i.i.i.i.i.i
  %_35.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 12
  %94 = or i32 %y_z.i.i.i.i.i.i, %_35.i.i.i.i.i.i
  %_38.i.i.i.i.i.i = icmp ugt i8 %x.i.i.i.i.i.i, -17
  br i1 %_38.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0342b5a873cee8ecE.exit.i.i.i.i", label %bb3.i.i.i.i

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0342b5a873cee8ecE.exit.i.i.i.i": ; preds = %bb9.i.i.i.i.i.i
  %_12.i29.i.i.i.i.i.i = icmp ne i8* %93, %56
  tail call void @llvm.assume(i1 %_12.i29.i.i.i.i.i.i) #30
  %95 = getelementptr inbounds i8, i8* %self1.i.i.i.i.i.i.i, i64 4
  %w.i.i.i.i.i.i = load i8, i8* %93, align 1, !alias.scope !456, !noalias !489
  %_45.i.i.i.i.i.i = shl nuw nsw i32 %init.i.i.i.i.i.i, 18
  %_44.i.i.i.i.i.i = and i32 %_45.i.i.i.i.i.i, 1835008
  %_74.i.i.i.i.i.i = shl nuw nsw i32 %y_z.i.i.i.i.i.i, 6
  %_77.i.i.i.i.i.i = and i8 %w.i.i.i.i.i.i, 63
  %_76.i.i.i.i.i.i = zext i8 %_77.i.i.i.i.i.i to i32
  %_47.i.i.i.i.i.i = or i32 %_74.i.i.i.i.i.i, %_76.i.i.i.i.i.i
  %96 = or i32 %_47.i.i.i.i.i.i, %_44.i.i.i.i.i.i
  %.not.i.i.i.i = icmp eq i32 %96, 1114112
  br i1 %.not.i.i.i.i, label %bb3.thread34.i, label %bb3.i.i.i.i

bb3.i.i.i.i:                                      ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0342b5a873cee8ecE.exit.i.i.i.i", %bb9.i.i.i.i.i.i, %bb6.i.i.i.i.i.i, %bb7.i.i.i.i.i.i
  %self1.i.i.i17.i.i.i.i = phi i8* [ %95, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0342b5a873cee8ecE.exit.i.i.i.i" ], [ %90, %bb6.i.i.i.i.i.i ], [ %93, %bb9.i.i.i.i.i.i ], [ %91, %bb7.i.i.i.i.i.i ]
  %97 = phi i32 [ %96, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0342b5a873cee8ecE.exit.i.i.i.i" ], [ %_13.i.i.i.i.i.i, %bb6.i.i.i.i.i.i ], [ %94, %bb9.i.i.i.i.i.i ], [ %92, %bb7.i.i.i.i.i.i ]
  %_4.not.i.i.i.i.i.i = icmp eq i8 %89, 0
  br i1 %_4.not.i.i.i.i.i.i, label %bb3.i.i12.i.i.i.i, label %99

bb3.i.i12.i.i.i.i:                                ; preds = %bb3.i.i.i.i
  %98 = invoke noundef zeroext i1 @"core::unicode::unicode_data::case_ignorable::lookup"(i32 noundef %97)
          to label %.noexc48 unwind label %cleanup1.loopexit

.noexc48:                                         ; preds = %bb3.i.i12.i.i.i.i
  br i1 %98, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h50e304509f7b3dc3E.exit.i.i.i.i", label %99

99:                                               ; preds = %.noexc48, %bb3.i.i.i.i
  br label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h50e304509f7b3dc3E.exit.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h50e304509f7b3dc3E.exit.i.i.i.i": ; preds = %99, %.noexc48
  %100 = phi i8 [ 1, %99 ], [ 0, %.noexc48 ]
  %101 = phi i32 [ %97, %99 ], [ 1114112, %.noexc48 ]
  %102 = icmp eq i32 %101, 1114112
  br i1 %102, label %bb1.i.i.i.i, label %bb3.i

bb3.i:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h50e304509f7b3dc3E.exit.i.i.i.i"
  %103 = invoke noundef zeroext i1 @"core::unicode::unicode_data::cased::lookup"(i32 noundef %101)
          to label %.noexc49 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %bb3.i
  br i1 %103, label %bb3.thread.i, label %bb3.thread34.i

bb3.thread34.i:                                   ; preds = %.noexc49, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0342b5a873cee8ecE.exit.i.i.i.i", %bb1.i.i.i.i
  br label %bb3.thread.i

bb3.thread.i:                                     ; preds = %bb3.thread34.i, %.noexc49, %.noexc46, %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.us.i.i.i.i.i", %bb1.us.i.i.i.i.i
  %104 = phi i16* [ bitcast (<{ [2 x i8] }>* @alloc8854 to i16*), %bb3.thread34.i ], [ bitcast (<{ [2 x i8] }>* @alloc8855 to i16*), %.noexc49 ], [ bitcast (<{ [2 x i8] }>* @alloc8855 to i16*), %.noexc46 ], [ bitcast (<{ [2 x i8] }>* @alloc8855 to i16*), %bb1.us.i.i.i.i.i ], [ bitcast (<{ [2 x i8] }>* @alloc8855 to i16*), %"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E.exit.us.i.i.i.i.i" ]
  %_5.i.i.i.i.i = load i64, i64* %_62.sroa.5.0..sroa_idx135, align 8, !alias.scope !500, !noalias !509
  %self.idx.val.i.i.i.i.i.i = load i64, i64* %_62.sroa.4.0..sroa_idx133, align 8, !alias.scope !511, !noalias !509
  %_5.i.i.i.i.i.i.i = sub i64 %self.idx.val.i.i.i.i.i.i, %_5.i.i.i.i.i
  %105 = icmp ult i64 %_5.i.i.i.i.i.i.i, 2
  br i1 %105, label %bb2.i.i.i.i.i.i, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase19map_uppercase_sigma17he66f40ad782a726aE.exit"

bb2.i.i.i.i.i.i:                                  ; preds = %bb3.thread.i
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i.i, i64 %_5.i.i.i.i.i, i64 2)
          to label %.noexc50 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc50:                                         ; preds = %bb2.i.i.i.i.i.i
  %len.pre.i.i.i.i = load i64, i64* %_62.sroa.5.0..sroa_idx135, align 8, !alias.scope !514, !noalias !509
  br label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase19map_uppercase_sigma17he66f40ad782a726aE.exit"

"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase19map_uppercase_sigma17he66f40ad782a726aE.exit": ; preds = %.noexc50, %bb3.thread.i
  %len.i.i.i30.i = phi i64 [ %_5.i.i.i.i.i, %bb3.thread.i ], [ %len.pre.i.i.i.i, %.noexc50 ]
  %self.idx.val.i.i.i.i = load i8*, i8** %_62.sroa.0.0..sroa_idx, align 8, !alias.scope !514, !noalias !509
  %106 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i.i, i64 %len.i.i.i30.i
  %107 = bitcast i8* %106 to i16*
  %108 = load i16, i16* %104, align 1, !noalias !459
  store i16 %108, i16* %107, align 1, !noalias !459
  %109 = add i64 %len.i.i.i30.i, 2
  store i64 %109, i64* %_62.sroa.5.0..sroa_idx135, align 8, !alias.scope !514, !noalias !509
  br label %bb22

bb9:                                              ; preds = %bb3
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %57)
  invoke void @"core::unicode::unicode_data::conversions::to_lower"([3 x i32]* noalias nocapture noundef nonnull sret([3 x i32]) dereferenceable(12) %_32, i32 noundef %.sroa.4.0.i.ph41.i)
          to label %bb10 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

bb10:                                             ; preds = %bb9
  %110 = load i32, i32* %58, align 4, !range !515, !noundef !2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %bb13, label %bb11

bb13:                                             ; preds = %bb10
  %a6 = load i32, i32* %60, align 4, !range !515, !noundef !2
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %a6)
          to label %bb21 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

bb11:                                             ; preds = %bb10
  %112 = load i32, i32* %59, align 4, !range !515, !noundef !2
  %113 = icmp eq i32 %112, 0
  %a4 = load i32, i32* %60, align 4, !range !515
  br i1 %113, label %bb15, label %bb12

bb15:                                             ; preds = %bb11
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %a4)
          to label %bb16 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

bb12:                                             ; preds = %bb11
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %a4)
          to label %bb18 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

bb18:                                             ; preds = %bb12
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %110)
          to label %bb19 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

bb19:                                             ; preds = %bb18
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %112)
          to label %bb21 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

bb21:                                             ; preds = %bb16, %bb19, %bb13
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %57)
  br label %bb22

bb16:                                             ; preds = %bb15
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %110)
          to label %bb21 unwind label %cleanup1.loopexit.split-lp.loopexit.split-lp.loopexit

bb22:                                             ; preds = %bb21, %"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase19map_uppercase_sigma17he66f40ad782a726aE.exit"
  %_12.i.i.i = icmp eq i8* %iter.sroa.5.1, %56
  br i1 %_12.i.i.i, label %bb6, label %bb3.i.i
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::str::<impl str>::to_uppercase"(%"string::String"* noalias nocapture noundef sret(%"string::String") dereferenceable(24) %s, [0 x i8]* noalias noundef nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_23 = alloca [3 x i32], align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %_6.i.i = icmp eq i64 %self.1, 0
  br i1 %_6.i.i, label %bb25, label %bb6.i.i

bb6.i.i:                                          ; preds = %start
  %0 = xor i64 %self.1, -1
  %size.lobit.not.i.i.i.i = lshr i64 %0, 63
  %1 = icmp slt i64 %self.1, 0
  br i1 %1, label %bb8.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"

bb8.i.i:                                          ; preds = %bb6.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !519
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i": ; preds = %bb6.i.i
  %2 = tail call i8* @__rust_alloc(i64 %self.1, i64 %size.lobit.not.i.i.i.i) #30, !noalias !519
  %3 = icmp eq i8* %2, null
  br i1 %3, label %bb20.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i"

bb20.i.i:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %self.1, i64 noundef %size.lobit.not.i.i.i.i) #29, !noalias !519
  unreachable

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"
  %_6.not76.i = icmp ult i64 %self.1, 16
  br i1 %_6.not76.i, label %bb25, label %bb21.i

bb21.i:                                           ; preds = %bb14.15.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i"
  %_778.i = phi i64 [ %_7.i, %bb14.15.i ], [ 16, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ]
  %i.077.i = phi i64 [ %_778.i, %bb14.15.i ], [ 0, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ]
  %4 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %i.077.i
  %self5.i = bitcast i8* %4 to i64*
  %tmp.0.copyload.i = load i64, i64* %self5.i, align 1, !alias.scope !516, !noalias !521
  %5 = getelementptr inbounds i8, i8* %4, i64 8
  %6 = bitcast i8* %5 to i64*
  %tmp.0.copyload.1.i = load i64, i64* %6, align 1, !alias.scope !516, !noalias !521
  %7 = or i64 %tmp.0.copyload.1.i, %tmp.0.copyload.i
  %_40.i = and i64 %7, -9187201950435737472
  %8 = icmp eq i64 %_40.i, 0
  %9 = insertelement <2 x i64> poison, i64 %tmp.0.copyload.i, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  %11 = lshr <2 x i64> %10, <i64 8, i64 16>
  %12 = lshr i64 %tmp.0.copyload.i, 24
  %13 = insertelement <4 x i64> poison, i64 %tmp.0.copyload.i, i64 0
  %shuffle = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> zeroinitializer
  %14 = lshr <4 x i64> %shuffle, <i64 32, i64 40, i64 48, i64 56>
  %15 = insertelement <8 x i64> poison, i64 %tmp.0.copyload.i, i64 0
  %16 = shufflevector <2 x i64> %11, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %17 = shufflevector <8 x i64> %15, <8 x i64> %16, <8 x i32> <i32 0, i32 8, i32 9, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %18 = insertelement <8 x i64> %17, i64 %12, i64 3
  %19 = shufflevector <4 x i64> %14, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %20 = shufflevector <8 x i64> %18, <8 x i64> %19, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %21 = trunc <8 x i64> %20 to <8 x i8>
  %22 = insertelement <2 x i64> poison, i64 %tmp.0.copyload.1.i, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  %24 = lshr i64 %tmp.0.copyload.1.i, 48
  %25 = trunc i64 %24 to i8
  br i1 %8, label %bb14.15.i, label %bb25

bb14.15.i:                                        ; preds = %bb21.i
  %26 = lshr <2 x i64> %23, <i64 32, i64 40>
  %27 = trunc <2 x i64> %26 to <2 x i8>
  %28 = insertelement <4 x i64> poison, i64 %tmp.0.copyload.1.i, i64 0
  %29 = lshr i64 %tmp.0.copyload.1.i, 8
  %30 = insertelement <4 x i64> %28, i64 %29, i64 1
  %31 = lshr <2 x i64> %23, <i64 16, i64 24>
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 undef, i32 undef>
  %33 = shufflevector <4 x i64> %30, <4 x i64> %32, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %34 = trunc <4 x i64> %33 to <4 x i8>
  %35 = getelementptr inbounds i8, i8* %2, i64 %i.077.i
  %36 = getelementptr inbounds i8, i8* %4, i64 15
  %_2.i = load i8, i8* %36, align 1, !alias.scope !522, !noalias !521
  %37 = shufflevector <8 x i8> %21, <8 x i8> undef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %38 = shufflevector <4 x i8> %34, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %39 = shufflevector <16 x i8> %37, <16 x i8> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef>
  %40 = shufflevector <2 x i8> %27, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %41 = shufflevector <16 x i8> %39, <16 x i8> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 undef, i32 undef>
  %42 = insertelement <16 x i8> %41, i8 %25, i64 14
  %43 = insertelement <16 x i8> %42, i8 %_2.i, i64 15
  %44 = add <16 x i8> %43, <i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97, i8 -97>
  %45 = icmp ult <16 x i8> %44, <i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26>
  %46 = select <16 x i1> %45, <16 x i8> <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, <16 x i8> zeroinitializer
  %47 = shufflevector <8 x i8> %21, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %48 = shufflevector <16 x i8> %47, <16 x i8> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 undef, i32 undef, i32 undef, i32 undef>
  %49 = shufflevector <16 x i8> %48, <16 x i8> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 undef, i32 undef>
  %50 = insertelement <16 x i8> %49, i8 %25, i64 14
  %51 = insertelement <16 x i8> %50, i8 %_2.i, i64 15
  %52 = xor <16 x i8> %46, %51
  %53 = bitcast i8* %35 to <16 x i8>*
  store <16 x i8> %52, <16 x i8>* %53, align 1, !noalias !519
  %_7.i = add i64 %_778.i, 16
  %_6.not.i = icmp ugt i64 %_7.i, %self.1
  br i1 %_6.not.i, label %bb25, label %bb21.i

cleanup1:                                         ; preds = %bb12, %bb15, %bb14, %bb8, %bb11, %bb9, %bb3
  %54 = landingpad { i8*, i32 }
          cleanup
  tail call fastcc void @"core::ptr::drop_in_place<alloc::string::String>"(%"string::String"* nonnull %s) #31
  resume { i8*, i32 } %54

bb25:                                             ; preds = %bb14.15.i, %bb21.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i", %start
  %out.sroa.0.0 = phi i8* [ %2, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ], [ inttoptr (i64 1 to i8*), %start ], [ %2, %bb14.15.i ], [ %2, %bb21.i ]
  %i.0.lcssa.i = phi i64 [ 0, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ], [ 0, %start ], [ %i.077.i, %bb21.i ], [ %_778.i, %bb14.15.i ]
  %_53.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0, i32 0
  store i8* %out.sroa.0.0, i8** %_53.sroa.0.0..sroa_idx, align 8
  %_53.sroa.4.0..sroa_idx96 = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 %self.1, i64* %_53.sroa.4.0..sroa_idx96, align 8
  %_53.sroa.5.0..sroa_idx98 = getelementptr inbounds %"string::String", %"string::String"* %s, i64 0, i32 0, i32 1
  store i64 %i.0.lcssa.i, i64* %_53.sroa.5.0..sroa_idx98, align 8
  %55 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %self.1
  %_12.i.i80 = icmp eq i64 %i.0.lcssa.i, %self.1
  br i1 %_12.i.i80, label %bb5, label %bb3.i.lr.ph

bb3.i.lr.ph:                                      ; preds = %bb25
  %56 = getelementptr inbounds [0 x i8], [0 x i8]* %self.0, i64 0, i64 %i.0.lcssa.i
  %57 = bitcast [3 x i32]* %_23 to i8*
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %_23, i64 0, i64 1
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %_23, i64 0, i64 2
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %_23, i64 0, i64 0
  br label %bb3.i

bb3.i:                                            ; preds = %bb17, %bb3.i.lr.ph
  %iter.sroa.0.081 = phi i8* [ %56, %bb3.i.lr.ph ], [ %iter.sroa.0.4.ph78, %bb17 ]
  %61 = getelementptr inbounds i8, i8* %iter.sroa.0.081, i64 1
  %x.i = load i8, i8* %iter.sroa.0.081, align 1, !noalias !525
  %_11.i = icmp sgt i8 %x.i, -1
  br i1 %_11.i, label %bb6.i, label %bb7.i

bb7.i:                                            ; preds = %bb3.i
  %_55.i = and i8 %x.i, 31
  %init.i = zext i8 %_55.i to i32
  %_12.i17.i = icmp ne i8* %61, %55
  tail call void @llvm.assume(i1 %_12.i17.i)
  %62 = getelementptr inbounds i8, i8* %iter.sroa.0.081, i64 2
  %y.i = load i8, i8* %61, align 1, !noalias !525
  %_60.i = shl nuw nsw i32 %init.i, 6
  %_63.i = and i8 %y.i, 63
  %_62.i = zext i8 %_63.i to i32
  %63 = or i32 %_60.i, %_62.i
  %_24.i = icmp ugt i8 %x.i, -33
  br i1 %_24.i, label %bb9.i, label %bb3

bb6.i:                                            ; preds = %bb3.i
  %_13.i = zext i8 %x.i to i32
  br label %bb3

bb9.i:                                            ; preds = %bb7.i
  %_12.i23.i = icmp ne i8* %62, %55
  tail call void @llvm.assume(i1 %_12.i23.i)
  %64 = getelementptr inbounds i8, i8* %iter.sroa.0.081, i64 3
  %z.i = load i8, i8* %62, align 1, !noalias !525
  %_67.i = shl nuw nsw i32 %_62.i, 6
  %_70.i = and i8 %z.i, 63
  %_69.i = zext i8 %_70.i to i32
  %y_z.i = or i32 %_67.i, %_69.i
  %_35.i = shl nuw nsw i32 %init.i, 12
  %65 = or i32 %y_z.i, %_35.i
  %_38.i = icmp ugt i8 %x.i, -17
  br i1 %_38.i, label %bb11.i, label %bb3

bb11.i:                                           ; preds = %bb9.i
  %_12.i29.i = icmp ne i8* %64, %55
  tail call void @llvm.assume(i1 %_12.i29.i)
  %66 = getelementptr inbounds i8, i8* %iter.sroa.0.081, i64 4
  %w.i = load i8, i8* %64, align 1, !noalias !525
  %_45.i = shl nuw nsw i32 %init.i, 18
  %_44.i = and i32 %_45.i, 1835008
  %_74.i = shl nuw nsw i32 %y_z.i, 6
  %_77.i = and i8 %w.i, 63
  %_76.i = zext i8 %_77.i to i32
  %_47.i = or i32 %_74.i, %_76.i
  %67 = or i32 %_47.i, %_44.i
  %68 = icmp eq i32 %67, 1114112
  br i1 %68, label %bb5, label %bb3

bb5:                                              ; preds = %bb17, %bb11.i, %bb25
  ret void

bb3:                                              ; preds = %bb11.i, %bb9.i, %bb6.i, %bb7.i
  %.sroa.4.0.i.ph79 = phi i32 [ %67, %bb11.i ], [ %_13.i, %bb6.i ], [ %65, %bb9.i ], [ %63, %bb7.i ]
  %iter.sroa.0.4.ph78 = phi i8* [ %66, %bb11.i ], [ %61, %bb6.i ], [ %64, %bb9.i ], [ %62, %bb7.i ]
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %57)
  invoke void @"core::unicode::unicode_data::conversions::to_upper"([3 x i32]* noalias nocapture noundef nonnull sret([3 x i32]) dereferenceable(12) %_23, i32 noundef %.sroa.4.0.i.ph79)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb3
  %69 = load i32, i32* %58, align 4, !range !515, !noundef !2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %bb9, label %bb7

bb9:                                              ; preds = %bb6
  %a5 = load i32, i32* %60, align 4, !range !515, !noundef !2
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %a5)
          to label %bb17 unwind label %cleanup1

bb7:                                              ; preds = %bb6
  %71 = load i32, i32* %59, align 4, !range !515, !noundef !2
  %72 = icmp eq i32 %71, 0
  %a3 = load i32, i32* %60, align 4, !range !515
  br i1 %72, label %bb11, label %bb8

bb11:                                             ; preds = %bb7
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %a3)
          to label %bb12 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %a3)
          to label %bb14 unwind label %cleanup1

bb14:                                             ; preds = %bb8
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %69)
          to label %bb15 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %71)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb12, %bb15, %bb9
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %57)
  %_12.i.i = icmp eq i8* %iter.sroa.0.4.ph78, %55
  br i1 %_12.i.i, label %bb5, label %bb3.i

bb12:                                             ; preds = %bb11
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %s, i32 noundef %69)
          to label %bb17 unwind label %cleanup1
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::str::<impl str>::repeat"(%"string::String"* noalias nocapture noundef writeonly sret(%"string::String") dereferenceable(24) %0, [0 x i8]* noalias nocapture noundef nonnull readonly align 1 %self.0, i64 %self.1, i64 %n) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %buf.i = alloca %"vec::Vec<u8>", align 8
  %bytes.sroa.5 = alloca [16 x i8], align 8
  %bytes.sroa.5.0.sroa_idx = getelementptr inbounds [16 x i8], [16 x i8]* %bytes.sroa.5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %bytes.sroa.5.0.sroa_idx)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %1 = icmp eq i64 %n, 0
  br i1 %1, label %bb16.i, label %bb1.i

bb16.i:                                           ; preds = %start
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %bytes.sroa.5.0.sroa_idx, i8 0, i64 16, i1 false), !alias.scope !528, !noalias !531
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6repeat17hce21bb38771a6a65E.exit"

bb1.i:                                            ; preds = %start
  %2 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self.1, i64 %n) #30
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  br i1 %3, label %bb17.i, label %bb19.i

bb17.i:                                           ; preds = %bb1.i
  tail call void @"core::option::expect_failed"([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [17 x i8] }>* @alloc8841 to [0 x i8]*), i64 17, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8843 to %"core::panic::location::Location"*)) #29, !noalias !533
  unreachable

bb19.i:                                           ; preds = %bb1.i
  %5 = bitcast %"vec::Vec<u8>"* %buf.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5), !noalias !533
  %_6.i.i = icmp eq i64 %4, 0
  br i1 %_6.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i", label %bb6.i.i

bb6.i.i:                                          ; preds = %bb19.i
  %6 = xor i64 %4, -1
  %size.lobit.not.i.i.i.i = lshr i64 %6, 63
  %7 = icmp slt i64 %4, 0
  br i1 %7, label %bb8.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"

bb8.i.i:                                          ; preds = %bb6.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !533
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i": ; preds = %bb6.i.i
  %8 = tail call i8* @__rust_alloc(i64 %4, i64 %size.lobit.not.i.i.i.i) #30, !noalias !533
  %9 = icmp eq i8* %8, null
  br i1 %9, label %bb20.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i"

bb20.i.i:                                         ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %4, i64 noundef %size.lobit.not.i.i.i.i) #29, !noalias !533
  unreachable

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i", %bb19.i
  %.sroa.0.0.i.i = phi i8* [ %8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i" ], [ inttoptr (i64 1 to i8*), %bb19.i ]
  %10 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buf.i, i64 0, i32 0, i32 0
  store i8* %.sroa.0.0.i.i, i8** %10, align 8, !noalias !533
  %11 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buf.i, i64 0, i32 0, i32 1
  store i64 %4, i64* %11, align 8, !noalias !533
  %12 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buf.i, i64 0, i32 1
  store i64 0, i64* %12, align 8, !noalias !533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %13 = icmp ult i64 %4, %self.1
  br i1 %13, label %bb2.i.i.i.i.i.i, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E.exit.i"

bb2.i.i.i.i.i.i:                                  ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i"
  %_4.i.i.i.i.i = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %buf.i, i64 0, i32 0
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i.i, i64 0, i64 %self.1)
          to label %.noexc.i unwind label %cleanup.i, !noalias !533

.noexc.i:                                         ; preds = %bb2.i.i.i.i.i.i
  %len.pre.i.i.i.i = load i64, i64* %12, align 8, !alias.scope !543, !noalias !544
  %self.idx.val.i.i.i.pre.i = load i8*, i8** %10, align 8, !alias.scope !543, !noalias !544
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E.exit.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E.exit.i": ; preds = %.noexc.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i"
  %bytes.sroa.0.0.copyload5 = phi i8* [ %.sroa.0.0.i.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ], [ %self.idx.val.i.i.i.pre.i, %.noexc.i ]
  %len.i.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit.i" ], [ %len.pre.i.i.i.i, %.noexc.i ]
  %ptr.i.i.i.i = getelementptr [0 x i8], [0 x i8]* %self.0, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %bytes.sroa.0.0.copyload5, i64 %len.i.i.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* nonnull align 1 %ptr.i.i.i.i, i64 %self.1, i1 false), !noalias !546
  %15 = add i64 %len.i.i.i.i, %self.1
  %_18.not22.i = icmp ult i64 %n, 2
  br i1 %_18.not22.i, label %bb8.i, label %bb7.i

cleanup.i:                                        ; preds = %bb2.i.i.i.i.i.i
  %16 = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %buf.i) #31
          to label %bb15.i unwind label %abort.i, !noalias !533

bb8.i:                                            ; preds = %bb7.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E.exit.i"
  %storemerge.lcssa.i = phi i64 [ %15, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E.exit.i" ], [ %new_len.i, %bb7.i ]
  store i64 %storemerge.lcssa.i, i64* %12, align 8, !noalias !533
  %rem_len.i = sub i64 %4, %storemerge.lcssa.i
  %_38.not.i = icmp eq i64 %rem_len.i, 0
  br i1 %_38.not.i, label %bb12.i, label %bb11.i

bb7.i:                                            ; preds = %bb7.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E.exit.i"
  %m.0.in24.i = phi i64 [ %m.0.i, %bb7.i ], [ %n, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E.exit.i" ]
  %storemerge23.i = phi i64 [ %new_len.i, %bb7.i ], [ %15, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E.exit.i" ]
  %m.0.i = lshr i64 %m.0.in24.i, 1
  %17 = getelementptr inbounds i8, i8* %bytes.sroa.0.0.copyload5, i64 %storemerge23.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %bytes.sroa.0.0.copyload5, i64 %storemerge23.i, i1 false), !noalias !533
  %new_len.i = shl i64 %storemerge23.i, 1
  %_18.not.i = icmp ult i64 %m.0.in24.i, 4
  br i1 %_18.not.i, label %bb8.i, label %bb7.i

bb12.i:                                           ; preds = %bb11.i, %bb8.i
  %bytes.sroa.5.0..sroa_cast = bitcast i64* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %bytes.sroa.5.0.sroa_idx, i8* noundef nonnull align 8 dereferenceable(16) %bytes.sroa.5.0..sroa_cast, i64 16, i1 false), !noalias !531
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5), !noalias !533
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6repeat17hce21bb38771a6a65E.exit"

bb11.i:                                           ; preds = %bb8.i
  %18 = getelementptr inbounds i8, i8* %bytes.sroa.0.0.copyload5, i64 %storemerge.lcssa.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %bytes.sroa.0.0.copyload5, i64 %rem_len.i, i1 false), !noalias !533
  store i64 %4, i64* %12, align 8, !noalias !533
  br label %bb12.i

abort.i:                                          ; preds = %cleanup.i
  %19 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32, !noalias !533
  unreachable

bb15.i:                                           ; preds = %cleanup.i
  resume { i8*, i32 } %16

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6repeat17hce21bb38771a6a65E.exit": ; preds = %bb12.i, %bb16.i
  %bytes.sroa.0.0 = phi i8* [ inttoptr (i64 1 to i8*), %bb16.i ], [ %bytes.sroa.0.0.copyload5, %bb12.i ]
  %_9.sroa.4.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 0, i32 1
  %_9.sroa.4.0..sroa_idx2324 = bitcast i64* %_9.sroa.4.0..sroa_idx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %_9.sroa.4.0..sroa_idx2324, i8* noundef nonnull align 8 dereferenceable(16) %bytes.sroa.5.0.sroa_idx, i64 16, i1 false)
  %_9.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 0, i32 0
  store i8* %bytes.sroa.0.0, i8** %_9.sroa.0.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %bytes.sroa.5.0.sroa_idx)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::string::String::from_utf8_lossy"(%"borrow::Cow<str>"* noalias nocapture noundef writeonly sret(%"borrow::Cow<str>") dereferenceable(32) %0, [0 x i8]* noalias noundef nonnull readonly align 1 %v.0, i64 %v.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_34 = alloca %"core::option::Option<core::str::lossy::Utf8LossyChunk>", align 8
  %iter1 = alloca { i8*, i64 }, align 8
  %res = alloca %"string::String", align 8
  %_7 = alloca %"core::option::Option<core::str::lossy::Utf8LossyChunk>", align 8
  %iter = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %iter to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1)
  %2 = tail call { %"core::str::lossy::Utf8Lossy"*, i64 } @"core::str::lossy::Utf8Lossy::from_bytes"([0 x i8]* noalias noundef nonnull readonly align 1 %v.0, i64 %v.1)
  %_4.0 = extractvalue { %"core::str::lossy::Utf8Lossy"*, i64 } %2, 0
  %_4.1 = extractvalue { %"core::str::lossy::Utf8Lossy"*, i64 } %2, 1
  %3 = tail call { i8*, i64 } @"core::str::lossy::Utf8Lossy::chunks"(%"core::str::lossy::Utf8Lossy"* noalias noundef nonnull readonly align 1 %_4.0, i64 %_4.1)
  %.fca.0.extract = extractvalue { i8*, i64 } %3, 0
  %.fca.0.gep = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %iter, i64 0, i32 0
  store i8* %.fca.0.extract, i8** %.fca.0.gep, align 8
  %.fca.1.extract = extractvalue { i8*, i64 } %3, 1
  %.fca.1.gep = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %iter, i64 0, i32 1
  store i64 %.fca.1.extract, i64* %.fca.1.gep, align 8
  %4 = bitcast %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4)
  call void @"<core::str::lossy::Utf8LossyChunksIter as core::iter::traits::iterator::Iterator>::next"(%"core::option::Option<core::str::lossy::Utf8LossyChunk>"* noalias nocapture noundef nonnull sret(%"core::option::Option<core::str::lossy::Utf8LossyChunk>") dereferenceable(32) %_7, { i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %iter)
  %5 = getelementptr inbounds %"core::option::Option<core::str::lossy::Utf8LossyChunk>", %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_7, i64 0, i32 0
  %6 = load {}*, {}** %5, align 8
  %.not = icmp eq {}* %6, null
  br i1 %.not, label %bb7, label %bb4

bb4:                                              ; preds = %start
  %7 = getelementptr inbounds %"core::option::Option<core::str::lossy::Utf8LossyChunk>", %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_7, i64 0, i32 1, i64 0
  %chunk.sroa.5.0.copyload = load i64, i64* %7, align 8
  %chunk.sroa.6.0..sroa_idx11 = getelementptr inbounds %"core::option::Option<core::str::lossy::Utf8LossyChunk>", %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_7, i64 0, i32 1, i64 1
  %8 = bitcast i64* %chunk.sroa.6.0..sroa_idx11 to [0 x i8]**
  %chunk.sroa.6.0.copyload = load [0 x i8]*, [0 x i8]** %8, align 8
  %9 = getelementptr inbounds %"core::option::Option<core::str::lossy::Utf8LossyChunk>", %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_7, i64 0, i32 1, i64 2
  %chunk.sroa.7.0.copyload = load i64, i64* %9, align 8
  %10 = icmp ne [0 x i8]* %chunk.sroa.6.0.copyload, null
  call void @llvm.assume(i1 %10)
  %11 = icmp eq i64 %chunk.sroa.7.0.copyload, 0
  br i1 %11, label %bb5, label %bb6

bb7:                                              ; preds = %start
  %12 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %0, i64 0, i32 1
  %13 = bitcast [3 x i64]* %12 to [0 x i8]**
  store [0 x i8]* bitcast (<{}>* @alloc8775 to [0 x i8]*), [0 x i8]** %13, align 8
  br label %bb15

bb15:                                             ; preds = %bb5, %bb7
  %chunk.sroa.5.0.copyload.sink = phi i64 [ %chunk.sroa.5.0.copyload, %bb5 ], [ 0, %bb7 ]
  %14 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %0, i64 0, i32 1, i64 1
  store i64 %chunk.sroa.5.0.copyload.sink, i64* %14, align 8
  %15 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %0, i64 0, i32 0
  store i64 0, i64* %15, align 8
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1)
  br label %bb16

bb5:                                              ; preds = %bb4
  %16 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %0, i64 0, i32 1
  %17 = bitcast [3 x i64]* %16 to {}**
  store {}* %6, {}** %17, align 8
  br label %bb15

bb6:                                              ; preds = %bb4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4)
  %18 = bitcast %"string::String"* %res to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18)
  %_6.i = icmp eq i64 %v.1, 0
  br i1 %_6.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit", label %bb6.i

bb6.i:                                            ; preds = %bb6
  %19 = xor i64 %v.1, -1
  %size.lobit.not.i.i.i = lshr i64 %19, 63
  %20 = icmp slt i64 %v.1, 0
  br i1 %20, label %bb8.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"

bb8.i:                                            ; preds = %bb6.i
  call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i": ; preds = %bb6.i
  %21 = call i8* @__rust_alloc(i64 %v.1, i64 %size.lobit.not.i.i.i) #30
  %22 = icmp eq i8* %21, null
  br i1 %22, label %bb20.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"

bb20.i:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  call void @"alloc::alloc::handle_alloc_error"(i64 %v.1, i64 noundef %size.lobit.not.i.i.i) #29
  unreachable

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i", %bb6
  %.sroa.0.0.i = phi i8* [ %21, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i" ], [ inttoptr (i64 1 to i8*), %bb6 ]
  %_54.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %res, i64 0, i32 0, i32 0, i32 0
  store i8* %.sroa.0.0.i, i8** %_54.sroa.0.0..sroa_idx, align 8
  %_54.sroa.4.0..sroa_idx25 = getelementptr inbounds %"string::String", %"string::String"* %res, i64 0, i32 0, i32 0, i32 1
  store i64 %v.1, i64* %_54.sroa.4.0..sroa_idx25, align 8
  %_54.sroa.5.0..sroa_idx27 = getelementptr inbounds %"string::String", %"string::String"* %res, i64 0, i32 0, i32 1
  store i64 0, i64* %_54.sroa.5.0..sroa_idx27, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %23 = icmp ugt i64 %chunk.sroa.5.0.copyload, %v.1
  br i1 %23, label %bb2.i.i.i.i.i, label %bb20

bb2.i.i.i.i.i:                                    ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"
  %_4.i.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %res, i64 0, i32 0, i32 0
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i, i64 0, i64 %chunk.sroa.5.0.copyload)
          to label %.noexc unwind label %cleanup.loopexit.split-lp

.noexc:                                           ; preds = %bb2.i.i.i.i.i
  %len.pre.i.i.i = load i64, i64* %_54.sroa.5.0..sroa_idx27, align 8, !alias.scope !556, !noalias !557
  %self.idx.val.i.i.i.pre = load i8*, i8** %_54.sroa.0.0..sroa_idx, align 8, !alias.scope !556, !noalias !557
  br label %bb20

cleanup.loopexit:                                 ; preds = %bb2.i.i.i.i.i79, %bb2.i.i.i.i.i66, %bb8
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %cleanup

cleanup.loopexit.split-lp:                        ; preds = %bb2.i.i.i.i.i54, %bb2.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split-lp, %cleanup.loopexit
  %lpad.phi = phi { i8*, i32 } [ %lpad.loopexit, %cleanup.loopexit ], [ %lpad.loopexit.split-lp, %cleanup.loopexit.split-lp ]
  call fastcc void @"core::ptr::drop_in_place<alloc::string::String>"(%"string::String"* nonnull %res) #31
  resume { i8*, i32 } %lpad.phi

bb20:                                             ; preds = %.noexc, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit"
  %self.idx.val.i.i.i = phi i8* [ %.sroa.0.0.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit" ], [ %self.idx.val.i.i.i.pre, %.noexc ]
  %len.i.i.i = phi i64 [ 0, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h054a1beb4a40521eE.exit" ], [ %len.pre.i.i.i, %.noexc ]
  %ptr.i.i = bitcast {}* %6 to i8*
  %24 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i, i64 %len.i.i.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* nonnull align 1 %ptr.i.i, i64 %chunk.sroa.5.0.copyload, i1 false), !noalias !556
  %25 = add i64 %len.i.i.i, %chunk.sroa.5.0.copyload
  store i64 %25, i64* %_54.sroa.5.0..sroa_idx27, align 8, !alias.scope !556, !noalias !557
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %self.idx.val.i.i.i.i.i50 = load i64, i64* %_54.sroa.4.0..sroa_idx25, align 8, !alias.scope !568, !noalias !573
  %_5.i.i.i.i.i.i51 = sub i64 %self.idx.val.i.i.i.i.i50, %25
  %26 = icmp ult i64 %_5.i.i.i.i.i.i51, 3
  br i1 %26, label %bb2.i.i.i.i.i54, label %bb22

bb2.i.i.i.i.i54:                                  ; preds = %bb20
  %_4.i.i.i.i52 = getelementptr inbounds %"string::String", %"string::String"* %res, i64 0, i32 0, i32 0
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i52, i64 %25, i64 3)
          to label %.noexc58 unwind label %cleanup.loopexit.split-lp

.noexc58:                                         ; preds = %bb2.i.i.i.i.i54
  %len.pre.i.i.i53 = load i64, i64* %_54.sroa.5.0..sroa_idx27, align 8, !alias.scope !575, !noalias !573
  br label %bb22

bb22:                                             ; preds = %.noexc58, %bb20
  %len.i.i.i55 = phi i64 [ %25, %bb20 ], [ %len.pre.i.i.i53, %.noexc58 ]
  %self.idx.val.i.i.i57 = load i8*, i8** %_54.sroa.0.0..sroa_idx, align 8, !alias.scope !575, !noalias !573
  %27 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i57, i64 %len.i.i.i55
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %27, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds (<{ [3 x i8] }>, <{ [3 x i8] }>* @alloc8858, i64 0, i32 0, i64 0), i64 3, i1 false), !noalias !575
  %28 = add i64 %len.i.i.i55, 3
  store i64 %28, i64* %_54.sroa.5.0..sroa_idx27, align 8, !alias.scope !575, !noalias !573
  %self.0 = load i8*, i8** %.fca.0.gep, align 8, !nonnull !2, !align !9, !noundef !2
  %self.1 = load i64, i64* %.fca.1.gep, align 8
  %29 = bitcast { i8*, i64 }* %iter1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29)
  %30 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %iter1, i64 0, i32 0
  store i8* %self.0, i8** %30, align 8
  %31 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %iter1, i64 0, i32 1
  store i64 %self.1, i64* %31, align 8
  %32 = bitcast %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_34 to i8*
  %33 = getelementptr inbounds %"core::option::Option<core::str::lossy::Utf8LossyChunk>", %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_34, i64 0, i32 0
  %34 = getelementptr inbounds %"core::option::Option<core::str::lossy::Utf8LossyChunk>", %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_34, i64 0, i32 1, i64 0
  %35 = getelementptr inbounds %"core::option::Option<core::str::lossy::Utf8LossyChunk>", %"core::option::Option<core::str::lossy::Utf8LossyChunk>"* %_34, i64 0, i32 1, i64 2
  %_4.i.i.i.i64 = getelementptr inbounds %"string::String", %"string::String"* %res, i64 0, i32 0, i32 0
  br label %bb8

bb8:                                              ; preds = %bb14, %bb22
  %self.idx.val.i.i.i7091 = phi i8* [ %self.idx.val.i.i.i7092, %bb14 ], [ %self.idx.val.i.i.i57, %bb22 ]
  %_5.i.i.i.i60 = phi i64 [ %_5.i.i.i.i6090, %bb14 ], [ %28, %bb22 ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %32)
  invoke void @"<core::str::lossy::Utf8LossyChunksIter as core::iter::traits::iterator::Iterator>::next"(%"core::option::Option<core::str::lossy::Utf8LossyChunk>"* noalias nocapture noundef nonnull sret(%"core::option::Option<core::str::lossy::Utf8LossyChunk>") dereferenceable(32) %_34, { i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %iter1)
          to label %bb9 unwind label %cleanup.loopexit

bb9:                                              ; preds = %bb8
  %36 = load {}*, {}** %33, align 8
  %37 = icmp eq {}* %36, null
  br i1 %37, label %bb12, label %bb10

bb12:                                             ; preds = %bb9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %32)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29)
  %_50.sroa.0.0..sroa_idx18 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %0, i64 0, i32 1
  %_50.sroa.0.0..sroa_idx189495 = bitcast [3 x i64]* %_50.sroa.0.0..sroa_idx18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %_50.sroa.0.0..sroa_idx189495, i8* noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false)
  %38 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %0, i64 0, i32 0
  store i64 1, i64* %38, align 8
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1)
  br label %bb16

bb10:                                             ; preds = %bb9
  %valid.13 = load i64, i64* %34, align 8
  %broken.15 = load i64, i64* %35, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  %self.idx.val.i.i.i.i.i62 = load i64, i64* %_54.sroa.4.0..sroa_idx25, align 8, !alias.scope !585, !noalias !590
  %_5.i.i.i.i.i.i63 = sub i64 %self.idx.val.i.i.i.i.i62, %_5.i.i.i.i60
  %39 = icmp ult i64 %_5.i.i.i.i.i.i63, %valid.13
  br i1 %39, label %bb2.i.i.i.i.i66, label %bb24

bb2.i.i.i.i.i66:                                  ; preds = %bb10
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i64, i64 %_5.i.i.i.i60, i64 %valid.13)
          to label %.noexc71 unwind label %cleanup.loopexit

.noexc71:                                         ; preds = %bb2.i.i.i.i.i66
  %len.pre.i.i.i65 = load i64, i64* %_54.sroa.5.0..sroa_idx27, align 8, !alias.scope !592, !noalias !590
  %self.idx.val.i.i.i70.pre = load i8*, i8** %_54.sroa.0.0..sroa_idx, align 8, !alias.scope !592, !noalias !590
  br label %bb24

bb24:                                             ; preds = %.noexc71, %bb10
  %self.idx.val.i.i.i70 = phi i8* [ %self.idx.val.i.i.i7091, %bb10 ], [ %self.idx.val.i.i.i70.pre, %.noexc71 ]
  %len.i.i.i67 = phi i64 [ %_5.i.i.i.i60, %bb10 ], [ %len.pre.i.i.i65, %.noexc71 ]
  %ptr.i.i68 = bitcast {}* %36 to i8*
  %40 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i70, i64 %len.i.i.i67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* nonnull align 1 %ptr.i.i68, i64 %valid.13, i1 false), !noalias !592
  %41 = add i64 %len.i.i.i67, %valid.13
  store i64 %41, i64* %_54.sroa.5.0..sroa_idx27, align 8, !alias.scope !592, !noalias !590
  %_44.not = icmp eq i64 %broken.15, 0
  br i1 %_44.not, label %bb14, label %bb13

bb14:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit84", %bb24
  %self.idx.val.i.i.i7092 = phi i8* [ %self.idx.val.i.i.i82, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit84" ], [ %self.idx.val.i.i.i70, %bb24 ]
  %_5.i.i.i.i6090 = phi i64 [ %44, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit84" ], [ %41, %bb24 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %32)
  br label %bb8

bb13:                                             ; preds = %bb24
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %self.idx.val.i.i.i.i.i75 = load i64, i64* %_54.sroa.4.0..sroa_idx25, align 8, !alias.scope !602, !noalias !607
  %_5.i.i.i.i.i.i76 = sub i64 %self.idx.val.i.i.i.i.i75, %41
  %42 = icmp ult i64 %_5.i.i.i.i.i.i76, 3
  br i1 %42, label %bb2.i.i.i.i.i79, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit84"

bb2.i.i.i.i.i79:                                  ; preds = %bb13
  invoke fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i64, i64 %41, i64 3)
          to label %.noexc83 unwind label %cleanup.loopexit

.noexc83:                                         ; preds = %bb2.i.i.i.i.i79
  %len.pre.i.i.i78 = load i64, i64* %_54.sroa.5.0..sroa_idx27, align 8, !alias.scope !609, !noalias !607
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit84"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit84": ; preds = %.noexc83, %bb13
  %len.i.i.i80 = phi i64 [ %41, %bb13 ], [ %len.pre.i.i.i78, %.noexc83 ]
  %self.idx.val.i.i.i82 = load i8*, i8** %_54.sroa.0.0..sroa_idx, align 8, !alias.scope !609, !noalias !607
  %43 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i82, i64 %len.i.i.i80
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %43, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds (<{ [3 x i8] }>, <{ [3 x i8] }>* @alloc8858, i64 0, i32 0, i64 0), i64 3, i1 false), !noalias !609
  %44 = add i64 %len.i.i.i80, 3
  store i64 %44, i64* %_54.sroa.5.0..sroa_idx27, align 8, !alias.scope !609, !noalias !607
  br label %bb14

bb16:                                             ; preds = %bb12, %bb15
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::string::String::from_utf16"(%"core::result::Result<string::String, string::FromUtf16Error>"* noalias nocapture noundef writeonly sret(%"core::result::Result<string::String, string::FromUtf16Error>") dereferenceable(24) %0, [0 x i16]* noalias noundef nonnull readonly align 2 %v.0, i64 %v.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %ret = alloca %"string::String", align 8
  %1 = bitcast %"string::String"* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1)
  %_6.i = icmp eq i64 %v.1, 0
  br i1 %_6.i, label %bb1, label %bb6.i

bb6.i:                                            ; preds = %start
  %2 = xor i64 %v.1, -1
  %size.lobit.not.i.i.i = lshr i64 %2, 63
  %3 = icmp slt i64 %v.1, 0
  br i1 %3, label %bb8.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"

bb8.i:                                            ; preds = %bb6.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i": ; preds = %bb6.i
  %4 = tail call i8* @__rust_alloc(i64 %v.1, i64 %size.lobit.not.i.i.i) #30
  %5 = icmp eq i8* %4, null
  br i1 %5, label %bb20.i, label %bb1

bb20.i:                                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %v.1, i64 noundef %size.lobit.not.i.i.i) #29
  unreachable

cleanup:                                          ; preds = %bb7
  %6 = landingpad { i8*, i32 }
          cleanup
  call fastcc void @"core::ptr::drop_in_place<alloc::string::String>"(%"string::String"* nonnull %ret) #31
  resume { i8*, i32 } %6

bb1:                                              ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i", %start
  %.sroa.0.0.i = phi i8* [ %4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i" ], [ inttoptr (i64 1 to i8*), %start ]
  %_22.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %ret, i64 0, i32 0, i32 0, i32 0
  store i8* %.sroa.0.0.i, i8** %_22.sroa.0.0..sroa_idx, align 8
  %_22.sroa.4.0..sroa_idx60 = getelementptr inbounds %"string::String", %"string::String"* %ret, i64 0, i32 0, i32 0, i32 1
  store i64 %v.1, i64* %_22.sroa.4.0..sroa_idx60, align 8
  %_22.sroa.5.0..sroa_idx62 = getelementptr inbounds %"string::String", %"string::String"* %ret, i64 0, i32 0, i32 1
  store i64 0, i64* %_22.sroa.5.0..sroa_idx62, align 8
  %ptr.i = getelementptr [0 x i16], [0 x i16]* %v.0, i64 0, i64 0
  %7 = getelementptr inbounds [0 x i16], [0 x i16]* %v.0, i64 0, i64 %v.1
  br label %bb1.i

bb1.i:                                            ; preds = %bb7, %bb1
  %iter.sroa.0.0 = phi i16* [ %ptr.i, %bb1 ], [ %iter.sroa.0.3.ph, %bb7 ]
  %_12.i.i.i = icmp eq i16* %iter.sroa.0.0, %7
  br i1 %_12.i.i.i, label %bb6, label %bb9.i

bb9.i:                                            ; preds = %bb1.i
  %8 = getelementptr inbounds i16, i16* %iter.sroa.0.0, i64 1
  %.val.i.i.i = load i16, i16* %iter.sroa.0.0, align 2, !alias.scope !610, !noalias !613
  %9 = and i16 %.val.i.i.i, -2048
  %10 = icmp eq i16 %9, -10240
  br i1 %10, label %bb12.i, label %bb11.i

bb12.i:                                           ; preds = %bb9.i
  %_21.i = icmp ugt i16 %.val.i.i.i, -9217
  %_12.i.i82.i = icmp eq i16* %8, %7
  %or.cond = select i1 %_21.i, i1 true, i1 %_12.i.i82.i
  br i1 %or.cond, label %bb9, label %bb18.i

bb11.i:                                           ; preds = %bb9.i
  %_17.sroa.4.4.insert.ext.i = zext i16 %.val.i.i.i to i64
  %_17.sroa.4.4.insert.shift.i = shl nuw nsw i64 %_17.sroa.4.4.insert.ext.i, 16
  br label %bb7

bb18.i:                                           ; preds = %bb12.i
  %.val.i.i83.i = load i16, i16* %8, align 2, !alias.scope !618, !noalias !621
  %11 = add i16 %.val.i.i83.i, 8192
  %12 = icmp ult i16 %11, -1024
  br i1 %12, label %bb9, label %bb23.i

bb23.i:                                           ; preds = %bb18.i
  %13 = getelementptr inbounds i16, i16* %iter.sroa.0.0, i64 2
  %_48.i = add nsw i16 %.val.i.i.i, 10240
  %_47.i = zext i16 %_48.i to i64
  %_51.i = add nsw i16 %.val.i.i83.i, 9216
  %_50.i = zext i16 %_51.i to i64
  %14 = shl nuw nsw i64 %_47.i, 26
  %15 = shl nuw nsw i64 %_50.i, 16
  %c.i = or i64 %15, %14
  %_53.sroa.4.4.insert.shift.i = add nuw nsw i64 %c.i, 4294967296
  br label %bb7

bb6:                                              ; preds = %bb1.i
  %16 = bitcast %"core::result::Result<string::String, string::FromUtf16Error>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %16, i8* noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1)
  br label %bb11

bb7:                                              ; preds = %bb23.i, %bb11.i
  %iter.sroa.0.3.ph = phi i16* [ %8, %bb11.i ], [ %13, %bb23.i ]
  %.sroa.7.sroa.0.2.i.ph = phi i64 [ %_17.sroa.4.4.insert.shift.i, %bb11.i ], [ %_53.sroa.4.4.insert.shift.i, %bb23.i ]
  %17 = lshr i64 %.sroa.7.sroa.0.2.i.ph, 16
  %.sroa.5.0.extract.trunc96 = trunc i64 %17 to i32
  invoke fastcc void @"alloc::string::String::push"(%"string::String"* noalias noundef nonnull align 8 dereferenceable(24) %ret, i32 noundef %.sroa.5.0.extract.trunc96)
          to label %bb1.i unwind label %cleanup

bb9:                                              ; preds = %bb18.i, %bb12.i
  %18 = getelementptr inbounds %"core::result::Result<string::String, string::FromUtf16Error>", %"core::result::Result<string::String, string::FromUtf16Error>"* %0, i64 0, i32 0
  store {}* null, {}** %18, align 8
  %.idx.val.i.i = load i8*, i8** %_22.sroa.0.0..sroa_idx, align 8
  %.idx4.val.i.i = load i64, i64* %_22.sroa.4.0..sroa_idx60, align 8
  %19 = icmp slt i64 %.idx4.val.i.i, 1
  br i1 %19, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5a772d44b03ee83fE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i": ; preds = %bb9
  %20 = xor i64 %.idx4.val.i.i, -1
  %size.lobit.not.i.i.i.i.i.i.i = lshr i64 %20, 63
  %21 = icmp ne i8* %.idx.val.i.i, null
  tail call void @llvm.assume(i1 %21) #30
  tail call void @__rust_dealloc(i8* nonnull %.idx.val.i.i, i64 %.idx4.val.i.i, i64 %size.lobit.not.i.i.i.i.i.i.i) #30
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5a772d44b03ee83fE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5a772d44b03ee83fE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i", %bb9
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1)
  br label %bb11

bb11:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5a772d44b03ee83fE.exit", %bb6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"alloc::string::String::into_raw_parts"({ i8*, i64, i64 }* noalias nocapture noundef writeonly sret({ i8*, i64, i64 }) dereferenceable(24) %0, %"string::String"* noalias nocapture noundef readonly dereferenceable(24) %self) unnamed_addr #13 {
start:
  %_2.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 0
  %_2.sroa.0.0.copyload = load i8*, i8** %_2.sroa.0.0..sroa_idx, align 8
  %_2.sroa.4.0..sroa_idx2 = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 1
  %1 = bitcast i64* %_2.sroa.4.0..sroa_idx2 to <2 x i64>*
  %2 = load <2 x i64>, <2 x i64>* %1, align 8
  %3 = getelementptr inbounds { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i64 0, i32 0
  store i8* %_2.sroa.0.0.copyload, i8** %3, align 8, !alias.scope !624, !noalias !627
  %4 = getelementptr inbounds { i8*, i64, i64 }, { i8*, i64, i64 }* %0, i64 0, i32 1
  %shuffle = shufflevector <2 x i64> %2, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %5 = bitcast i64* %4 to <2 x i64>*
  store <2 x i64> %shuffle, <2 x i64>* %5, align 8, !alias.scope !624, !noalias !627
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { i64, i64 } @"alloc::string::String::try_reserve"(%"string::String"* noalias nocapture noundef align 8 dereferenceable(24) %self, i64 %additional) unnamed_addr #3 personality i32 (...)* @rust_eh_personality {
start:
  %_30.i.i.i = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %self3.i.i.i = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %0 = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 1
  %_4.i = load i64, i64* %0, align 8, !alias.scope !629
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632) #30
  %self.idx.i.i = getelementptr %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 1
  %self.idx.val.i.i = load i64, i64* %self.idx.i.i, align 8, !alias.scope !635
  %_5.i.i.i = sub i64 %self.idx.val.i.i, %_4.i
  %1 = icmp ult i64 %_5.i.i.i, %additional
  br i1 %1, label %bb2.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hded43feb3d8dd25aE.exit"

bb2.i.i:                                          ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636) #30
  %2 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_4.i, i64 %additional) #30
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  br i1 %3, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hded43feb3d8dd25aE.exit", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb2.i.i
  %v1.i.i.i = shl i64 %self.idx.val.i.i, 1
  %5 = icmp ugt i64 %v1.i.i.i, %4
  %.0.sroa.speculated.i.i.i.i = select i1 %5, i64 %v1.i.i.i, i64 %4
  %6 = icmp ugt i64 %.0.sroa.speculated.i.i.i.i, 8
  %.0.sroa.speculated.i49.i.i.i = select i1 %6, i64 %.0.sroa.speculated.i.i.i.i, i64 8
  %7 = xor i64 %.0.sroa.speculated.i49.i.i.i, -1
  %size.lobit.not.i.i.i.i.i = lshr i64 %7, 63
  %8 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #30, !noalias !639
  %9 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #30, !noalias !639
  %self.idx.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 0
  %_4.i.i.i.i = icmp eq i64 %self.idx.val.i.i, 0
  br i1 %_4.i.i.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i", label %bb5.i.i.i.i

bb5.i.i.i.i:                                      ; preds = %bb6.i.i.i
  %self.idx.val.i.i.i = load i8*, i8** %self.idx.i.i.i, align 8, !alias.scope !639
  %10 = xor i64 %self.idx.val.i.i, -1
  %size.lobit.not.i.i.i.i.i.i = lshr i64 %10, 63
  %_9.sroa.0.0..sroa_idx.i.i.i.i = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i.i.i to i8**
  store i8* %self.idx.val.i.i.i, i8** %_9.sroa.0.0..sroa_idx.i.i.i.i, align 8, !alias.scope !640, !noalias !639
  %11 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i.i.i, i64 0, i32 0, i64 1
  store i64 %self.idx.val.i.i, i64* %11, align 8, !alias.scope !640, !noalias !639
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i": ; preds = %bb5.i.i.i.i, %bb6.i.i.i
  %size.lobit.not.i.i.sink.i.i.i.i = phi i64 [ %size.lobit.not.i.i.i.i.i.i, %bb5.i.i.i.i ], [ 0, %bb6.i.i.i ]
  %12 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_30.i.i.i, i64 0, i32 1
  store i64 %size.lobit.not.i.i.sink.i.i.i.i, i64* %12, align 8, !alias.scope !640, !noalias !639
  call fastcc void @"alloc::raw_vec::finish_grow"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* noalias nocapture noundef nonnull dereferenceable(24) %self3.i.i.i, i64 %.0.sroa.speculated.i49.i.i.i, i64 noundef %size.lobit.not.i.i.i.i.i, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture noundef nonnull dereferenceable(24) %_30.i.i.i) #30, !noalias !639
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #30, !noalias !639
  %13 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i, i64 0, i32 0
  %_61.i.i.i = load i64, i64* %13, align 8, !range !14, !noalias !639, !noundef !2
  %trunc.not.i.i.i = icmp eq i64 %_61.i.i.i, 0
  %14 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i, i64 0, i32 1, i64 0
  %e.09.i.i.i = load i64, i64* %14, align 8, !noalias !639
  %15 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i, i64 0, i32 1, i64 1
  %e.110.i.i.i = load i64, i64* %15, align 8, !noalias !639
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #30, !noalias !639
  br i1 %trunc.not.i.i.i, label %bb13.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hded43feb3d8dd25aE.exit"

bb13.i.i.i:                                       ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i"
  %16 = inttoptr i64 %e.09.i.i.i to i8*
  store i8* %16, i8** %self.idx.i.i.i, align 8, !alias.scope !643
  store i64 %.0.sroa.speculated.i49.i.i.i, i64* %self.idx.i.i, align 8, !alias.scope !643
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hded43feb3d8dd25aE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hded43feb3d8dd25aE.exit": ; preds = %bb13.i.i.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i", %bb2.i.i, %start
  %.sroa.2.0.i.i = phi i64 [ -9223372036854775807, %start ], [ -9223372036854775807, %bb13.i.i.i ], [ 0, %bb2.i.i ], [ %e.110.i.i.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i" ]
  %.sroa.0.0.i.i = phi i64 [ undef, %start ], [ undef, %bb13.i.i.i ], [ %4, %bb2.i.i ], [ %e.09.i.i.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i" ]
  %17 = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i, 0
  %18 = insertvalue { i64, i64 } %17, i64 %.sroa.2.0.i.i, 1
  ret { i64, i64 } %18
}

; Function Attrs: nounwind nonlazybind uwtable
define { i64, i64 } @"alloc::string::String::try_reserve_exact"(%"string::String"* noalias nocapture noundef align 8 dereferenceable(24) %self, i64 %additional) unnamed_addr #3 {
start:
  %_24.i.i.i = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %self3.i.i.i = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %0 = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 1
  %_4.i = load i64, i64* %0, align 8, !alias.scope !646
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649) #30
  %self.idx.i.i = getelementptr %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 1
  %self.idx.val.i.i = load i64, i64* %self.idx.i.i, align 8, !alias.scope !652
  %_5.i.i.i = sub i64 %self.idx.val.i.i, %_4.i
  %1 = icmp ult i64 %_5.i.i.i, %additional
  br i1 %1, label %bb2.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17try_reserve_exact17h06a3f9777a78c76eE.exit"

bb2.i.i:                                          ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653) #30
  %2 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_4.i, i64 %additional) #30
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  br i1 %3, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17try_reserve_exact17h06a3f9777a78c76eE.exit", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %bb2.i.i
  %5 = xor i64 %4, -1
  %size.lobit.not.i.i.i.i.i = lshr i64 %5, 63
  %6 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #30, !noalias !656
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_24.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #30, !noalias !656
  %self.idx.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 0
  %_4.i.i.i.i = icmp eq i64 %self.idx.val.i.i, 0
  br i1 %_4.i.i.i.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i", label %bb5.i.i.i.i

bb5.i.i.i.i:                                      ; preds = %bb6.i.i.i
  %self.idx.val.i.i.i = load i8*, i8** %self.idx.i.i.i, align 8, !alias.scope !656
  %8 = xor i64 %self.idx.val.i.i, -1
  %size.lobit.not.i.i.i.i.i.i = lshr i64 %8, 63
  %_9.sroa.0.0..sroa_idx.i.i.i.i = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_24.i.i.i to i8**
  store i8* %self.idx.val.i.i.i, i8** %_9.sroa.0.0..sroa_idx.i.i.i.i, align 8, !alias.scope !657, !noalias !656
  %9 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_24.i.i.i, i64 0, i32 0, i64 1
  store i64 %self.idx.val.i.i, i64* %9, align 8, !alias.scope !657, !noalias !656
  br label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i"

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i": ; preds = %bb5.i.i.i.i, %bb6.i.i.i
  %size.lobit.not.i.i.sink.i.i.i.i = phi i64 [ %size.lobit.not.i.i.i.i.i.i, %bb5.i.i.i.i ], [ 0, %bb6.i.i.i ]
  %10 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_24.i.i.i, i64 0, i32 1
  store i64 %size.lobit.not.i.i.sink.i.i.i.i, i64* %10, align 8, !alias.scope !657, !noalias !656
  call fastcc void @"alloc::raw_vec::finish_grow"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* noalias nocapture noundef nonnull dereferenceable(24) %self3.i.i.i, i64 %4, i64 noundef %size.lobit.not.i.i.i.i.i, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture noundef nonnull dereferenceable(24) %_24.i.i.i) #30, !noalias !656
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #30, !noalias !656
  %11 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i, i64 0, i32 0
  %_50.i.i.i = load i64, i64* %11, align 8, !range !14, !noalias !656, !noundef !2
  %trunc.not.i.i.i = icmp eq i64 %_50.i.i.i, 0
  %12 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i, i64 0, i32 1, i64 0
  %e.08.i.i.i = load i64, i64* %12, align 8, !noalias !656
  %13 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, collections::TryReserveError>"* %self3.i.i.i, i64 0, i32 1, i64 1
  %e.19.i.i.i = load i64, i64* %13, align 8, !noalias !656
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #30, !noalias !656
  br i1 %trunc.not.i.i.i, label %bb13.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17try_reserve_exact17h06a3f9777a78c76eE.exit"

bb13.i.i.i:                                       ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i"
  %14 = inttoptr i64 %e.08.i.i.i to i8*
  store i8* %14, i8** %self.idx.i.i.i, align 8, !alias.scope !660
  store i64 %4, i64* %self.idx.i.i, align 8, !alias.scope !660
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17try_reserve_exact17h06a3f9777a78c76eE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17try_reserve_exact17h06a3f9777a78c76eE.exit": ; preds = %bb13.i.i.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i", %bb2.i.i, %start
  %.sroa.2.0.i.i = phi i64 [ -9223372036854775807, %start ], [ -9223372036854775807, %bb13.i.i.i ], [ 0, %bb2.i.i ], [ %e.19.i.i.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i" ]
  %.sroa.0.0.i.i = phi i64 [ undef, %start ], [ undef, %bb13.i.i.i ], [ %4, %bb2.i.i ], [ %e.08.i.i.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i" ]
  %15 = insertvalue { i64, i64 } undef, i64 %.sroa.0.0.i.i, 0
  %16 = insertvalue { i64, i64 } %15, i64 %.sroa.2.0.i.i, 1
  ret { i64, i64 } %16
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"alloc::string::String::push"(%"string::String"* noalias nocapture noundef align 8 dereferenceable(24) %self, i32 noundef %ch) unnamed_addr #15 personality i32 (...)* @rust_eh_personality {
start:
  %_17 = alloca i32, align 4
  %_2.i = icmp ult i32 %ch, 128
  br i1 %_2.i, label %bb2, label %bb2.i

bb2.i:                                            ; preds = %start
  %_4.i = icmp ult i32 %ch, 2048
  %_17.0.sroa_cast18 = bitcast i32* %_17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %_17.0.sroa_cast18)
  store i32 0, i32* %_17, align 4
  br i1 %_4.i, label %bb8.i, label %bb4.i.i

bb2:                                              ; preds = %start
  %_6 = trunc i32 %ch to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %0 = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 1
  %_4.i3 = load i64, i64* %0, align 8, !alias.scope !663
  %1 = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 1
  %2 = load i64, i64* %1, align 8, !alias.scope !663
  %_3.i = icmp eq i64 %_4.i3, %2
  br i1 %_3.i, label %bb2.i5, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb48424a9c72561a2E.exit"

bb2.i5:                                           ; preds = %bb2
  %self1.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0
  tail call fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve_for_push"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %self1.i, i64 %_4.i3)
  %count.pre.i = load i64, i64* %0, align 8, !alias.scope !663
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb48424a9c72561a2E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb48424a9c72561a2E.exit": ; preds = %bb2.i5, %bb2
  %count.i = phi i64 [ %count.pre.i, %bb2.i5 ], [ %_4.i3, %bb2 ]
  %self.idx.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 0
  %self.idx.val.i = load i8*, i8** %self.idx.i, align 8, !alias.scope !663
  %3 = getelementptr inbounds i8, i8* %self.idx.val.i, i64 %count.i
  store i8 %_6, i8* %3, align 1, !noalias !663
  %4 = add i64 %count.i, 1
  store i64 %4, i64* %0, align 8, !alias.scope !663
  br label %bb5

bb4.i.i:                                          ; preds = %bb2.i
  %_6.i.i = icmp ult i32 %ch, 65536
  br i1 %_6.i.i, label %bb9.i, label %bb10.i

bb10.i:                                           ; preds = %bb4.i.i
  %_55.i = lshr i32 %ch, 18
  %5 = trunc i32 %_55.i to i8
  %_53.i = and i8 %5, 7
  %6 = or i8 %_53.i, -16
  store i8 %6, i8* %_17.0.sroa_cast18, align 4, !alias.scope !666
  %_59.i = lshr i32 %ch, 12
  %7 = trunc i32 %_59.i to i8
  %_57.i = and i8 %7, 63
  %8 = or i8 %_57.i, -128
  %_17.1.sroa_raw_idx = getelementptr inbounds i8, i8* %_17.0.sroa_cast18, i64 1
  store i8 %8, i8* %_17.1.sroa_raw_idx, align 1, !alias.scope !666
  %_63.i = lshr i32 %ch, 6
  %9 = trunc i32 %_63.i to i8
  %_61.i = and i8 %9, 63
  %10 = or i8 %_61.i, -128
  %_17.2.sroa_raw_idx = getelementptr inbounds i8, i8* %_17.0.sroa_cast18, i64 2
  store i8 %10, i8* %_17.2.sroa_raw_idx, align 2, !alias.scope !666
  %11 = trunc i32 %ch to i8
  %_65.i = and i8 %11, 63
  %12 = or i8 %_65.i, -128
  %_17.3.sroa_raw_idx = getelementptr inbounds i8, i8* %_17.0.sroa_cast18, i64 3
  store i8 %12, i8* %_17.3.sroa_raw_idx, align 1, !alias.scope !666
  br label %_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E.exit

bb9.i:                                            ; preds = %bb4.i.i
  %_40.i = lshr i32 %ch, 12
  %13 = trunc i32 %_40.i to i8
  %14 = or i8 %13, -32
  store i8 %14, i8* %_17.0.sroa_cast18, align 4, !alias.scope !666
  %_44.i = lshr i32 %ch, 6
  %15 = trunc i32 %_44.i to i8
  %_42.i = and i8 %15, 63
  %16 = or i8 %_42.i, -128
  %_17.1.sroa_raw_idx21 = getelementptr inbounds i8, i8* %_17.0.sroa_cast18, i64 1
  store i8 %16, i8* %_17.1.sroa_raw_idx21, align 1, !alias.scope !666
  %17 = trunc i32 %ch to i8
  %_46.i = and i8 %17, 63
  %18 = or i8 %_46.i, -128
  %_17.2.sroa_raw_idx25 = getelementptr inbounds i8, i8* %_17.0.sroa_cast18, i64 2
  store i8 %18, i8* %_17.2.sroa_raw_idx25, align 2, !alias.scope !666
  br label %_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E.exit

bb8.i:                                            ; preds = %bb2.i
  %_30.i = lshr i32 %ch, 6
  %19 = trunc i32 %_30.i to i8
  %20 = or i8 %19, -64
  store i8 %20, i8* %_17.0.sroa_cast18, align 4, !alias.scope !666
  %21 = trunc i32 %ch to i8
  %_32.i = and i8 %21, 63
  %22 = or i8 %_32.i, -128
  %_17.1.sroa_raw_idx23 = getelementptr inbounds i8, i8* %_17.0.sroa_cast18, i64 1
  store i8 %22, i8* %_17.1.sroa_raw_idx23, align 1, !alias.scope !666
  br label %_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E.exit

_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E.exit: ; preds = %bb8.i, %bb9.i, %bb10.i
  %.0.i3.i = phi i64 [ 2, %bb8.i ], [ 3, %bb9.i ], [ 4, %bb10.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %23 = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 1
  %_5.i.i.i.i = load i64, i64* %23, align 8, !alias.scope !678, !noalias !681
  %self.idx.i.i.i.i.i = getelementptr %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 1
  %self.idx.val.i.i.i.i.i = load i64, i64* %self.idx.i.i.i.i.i, align 8, !alias.scope !683, !noalias !681
  %_5.i.i.i.i.i.i = sub i64 %self.idx.val.i.i.i.i.i, %_5.i.i.i.i
  %24 = icmp ult i64 %_5.i.i.i.i.i.i, %.0.i3.i
  br i1 %24, label %bb2.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit"

bb2.i.i.i.i.i:                                    ; preds = %_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E.exit
  %_4.i.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0
  tail call fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i, i64 %_5.i.i.i.i, i64 %.0.i3.i), !noalias !681
  %len.pre.i.i.i = load i64, i64* %23, align 8, !alias.scope !686, !noalias !681
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit": ; preds = %bb2.i.i.i.i.i, %_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E.exit
  %len.i.i.i = phi i64 [ %_5.i.i.i.i, %_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E.exit ], [ %len.pre.i.i.i, %bb2.i.i.i.i.i ]
  %self.idx.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 0
  %self.idx.val.i.i.i = load i8*, i8** %self.idx.i.i.i, align 8, !alias.scope !686, !noalias !681
  %25 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i, i64 %len.i.i.i
  %_17.0.sroa_cast = bitcast i32* %_17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1) %25, i8* noundef nonnull align 4 %_17.0.sroa_cast, i64 %.0.i3.i, i1 false), !noalias !686
  %26 = add i64 %len.i.i.i, %.0.i3.i
  store i64 %26, i64* %23, align 8, !alias.scope !686, !noalias !681
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %_17.0.sroa_cast)
  br label %bb5

bb5:                                              ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E.exit", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb48424a9c72561a2E.exit"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind uwtable willreturn
define void @"<alloc::string::String::retain::SetLenOnDrop as core::ops::drop::Drop>::drop"(%"string::String::retain::SetLenOnDrop"* noalias nocapture noundef readonly align 8 dereferenceable(24) %self) unnamed_addr #16 {
start:
  %0 = getelementptr inbounds %"string::String::retain::SetLenOnDrop", %"string::String::retain::SetLenOnDrop"* %self, i64 0, i32 1
  %_3 = load i64, i64* %0, align 8
  %1 = getelementptr inbounds %"string::String::retain::SetLenOnDrop", %"string::String::retain::SetLenOnDrop"* %self, i64 0, i32 2
  %_4 = load i64, i64* %1, align 8
  %new_len = sub i64 %_3, %_4
  %2 = bitcast %"string::String::retain::SetLenOnDrop"* %self to %"vec::Vec<u8>"**
  %_82 = load %"vec::Vec<u8>"*, %"vec::Vec<u8>"** %2, align 8, !nonnull !2, !align !3
  %3 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %_82, i64 0, i32 1
  store i64 %new_len, i64* %3, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"alloc::string::String::insert_bytes"(%"string::String"* noalias nocapture noundef align 8 dereferenceable(24) %self, i64 %idx, [0 x i8]* noalias nocapture noundef nonnull readonly align 1 %bytes.0, i64 %bytes.1) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 1
  %len = load i64, i64* %0, align 8
  %self.idx.i.i = getelementptr %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 1
  %self.idx.val.i.i = load i64, i64* %self.idx.i.i, align 8, !alias.scope !687
  %_5.i.i.i = sub i64 %self.idx.val.i.i, %len
  %1 = icmp ult i64 %_5.i.i.i, %bytes.1
  br i1 %1, label %bb2.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE.exit"

bb2.i.i:                                          ; preds = %start
  %_4.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0
  tail call fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i, i64 %len, i64 %bytes.1)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE.exit": ; preds = %bb2.i.i, %start
  %self1.idx = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 0
  %self1.idx.val = load i8*, i8** %self1.idx, align 8
  %2 = getelementptr inbounds i8, i8* %self1.idx.val, i64 %idx
  %count = add i64 %bytes.1, %idx
  %3 = getelementptr inbounds i8, i8* %self1.idx.val, i64 %count
  %count4 = sub i64 %len, %idx
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %2, i64 %count4, i1 false)
  %src5 = getelementptr [0 x i8], [0 x i8]* %bytes.0, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* nonnull align 1 %src5, i64 %bytes.1, i1 false)
  %new_len = add i64 %len, %bytes.1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind readonly uwtable willreturn
define { [0 x i8]*, i64 } @"alloc::string::FromUtf8Error::as_bytes"(%"string::FromUtf8Error"* noalias nocapture noundef readonly align 8 dereferenceable(40) %self) unnamed_addr #12 personality i32 (...)* @rust_eh_personality {
start:
  %0 = bitcast %"string::FromUtf8Error"* %self to [0 x i8]**
  %_3.idx.val2 = load [0 x i8]*, [0 x i8]** %0, align 8
  %_3.idx1 = getelementptr %"string::FromUtf8Error", %"string::FromUtf8Error"* %self, i64 0, i32 0, i32 1
  %_3.idx1.val = load i64, i64* %_3.idx1, align 8
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_3.idx.val2, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_3.idx1.val, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"alloc::string::FromUtf8Error::into_bytes"(%"vec::Vec<u8>"* noalias nocapture noundef writeonly sret(%"vec::Vec<u8>") dereferenceable(24) %0, %"string::FromUtf8Error"* noalias nocapture noundef readonly dereferenceable(40) %self) unnamed_addr #13 {
start:
  %1 = bitcast %"vec::Vec<u8>"* %0 to i8*
  %2 = bitcast %"string::FromUtf8Error"* %self to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8* noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"alloc::string::FromUtf8Error::utf8_error"(%"core::str::error::Utf8Error"* noalias nocapture noundef writeonly sret(%"core::str::error::Utf8Error") dereferenceable(16) %0, %"string::FromUtf8Error"* noalias nocapture noundef readonly align 8 dereferenceable(40) %self) unnamed_addr #13 {
start:
  %1 = getelementptr inbounds %"string::FromUtf8Error", %"string::FromUtf8Error"* %self, i64 0, i32 1
  %2 = bitcast %"core::str::error::Utf8Error"* %0 to i8*
  %3 = bitcast %"core::str::error::Utf8Error"* %1 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::string::FromUtf8Error as core::fmt::Display>::fmt"(%"string::FromUtf8Error"* noalias noundef readonly align 8 dereferenceable(40) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_4 = getelementptr inbounds %"string::FromUtf8Error", %"string::FromUtf8Error"* %self, i64 0, i32 1
  %0 = tail call noundef zeroext i1 @"<core::str::error::Utf8Error as core::fmt::Display>::fmt"(%"core::str::error::Utf8Error"* noalias noundef nonnull readonly align 8 dereferenceable(16) %_4, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::string::FromUtf16Error as core::fmt::Display>::fmt"(%"string::FromUtf16Error"* noalias nocapture noundef nonnull readonly align 1 %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = tail call noundef zeroext i1 @"<str as core::fmt::Display>::fmt"([0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [36 x i8] }>* @alloc8861 to [0 x i8]*), i64 36, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define void @"<alloc::string::String as core::clone::Clone>::clone"(%"string::String"* noalias nocapture noundef writeonly sret(%"string::String") dereferenceable(24) %0, %"string::String"* noalias nocapture noundef readonly align 8 dereferenceable(24) %self) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_3.idx = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 0
  %_3.idx.val = load i8*, i8** %_3.idx, align 8
  %_3.idx1 = getelementptr %"string::String", %"string::String"* %self, i64 0, i32 0, i32 1
  %_3.idx1.val = load i64, i64* %_3.idx1, align 8
  %_6.i.i.i = icmp eq i64 %_3.idx1.val, 0
  br i1 %_6.i.i.i, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hff2525b0404b995eE.exit", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %start
  %1 = xor i64 %_3.idx1.val, -1
  %size.lobit.not.i.i.i.i.i = lshr i64 %1, 63
  %2 = icmp slt i64 %_3.idx1.val, 0
  br i1 %2, label %bb8.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i"

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !692
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i": ; preds = %bb6.i.i.i
  %3 = tail call i8* @__rust_alloc(i64 %_3.idx1.val, i64 %size.lobit.not.i.i.i.i.i) #30, !noalias !692
  %4 = icmp eq i8* %3, null
  br i1 %4, label %bb20.i.i.i, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hff2525b0404b995eE.exit"

bb20.i.i.i:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %_3.idx1.val, i64 noundef %size.lobit.not.i.i.i.i.i) #29, !noalias !692
  unreachable

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hff2525b0404b995eE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i", %start
  %.sroa.0.0.i.i.i = phi i8* [ %3, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i" ], [ inttoptr (i64 1 to i8*), %start ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.sroa.0.0.i.i.i, i8* nonnull align 1 %_3.idx.val, i64 %_3.idx1.val, i1 false), !noalias !698
  %_2.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 0, i32 0
  store i8* %.sroa.0.0.i.i.i, i8** %_2.sroa.0.0..sroa_idx, align 8
  %_2.sroa.4.0..sroa_idx3 = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 0, i32 1
  store i64 %_3.idx1.val, i64* %_2.sroa.4.0..sroa_idx3, align 8
  %_2.sroa.5.0..sroa_idx5 = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 1
  store i64 %_3.idx1.val, i64* %_2.sroa.5.0..sroa_idx5, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"<alloc::string::String as core::clone::Clone>::clone_from"(%"string::String"* noalias nocapture noundef align 8 dereferenceable(24) %self, %"string::String"* noalias nocapture noundef readonly align 8 dereferenceable(24) %source) unnamed_addr #0 {
start:
  %_6.idx = getelementptr inbounds %"string::String", %"string::String"* %source, i64 0, i32 0, i32 0, i32 0
  %_6.idx.val = load i8*, i8** %_6.idx, align 8
  %_6.idx1 = getelementptr %"string::String", %"string::String"* %source, i64 0, i32 0, i32 1
  %_6.idx1.val = load i64, i64* %_6.idx1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !702)
  %this.idx5.i.i = getelementptr %"string::String", %"string::String"* %self, i64 0, i32 0, i32 1
  store i64 0, i64* %this.idx5.i.i, align 8, !alias.scope !705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %self.idx.i.i.i.i.i.i.i = getelementptr %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 1
  %self.idx.val.i.i.i.i.i.i.i = load i64, i64* %self.idx.i.i.i.i.i.i.i, align 8, !alias.scope !715, !noalias !720
  %0 = icmp ult i64 %self.idx.val.i.i.i.i.i.i.i, %_6.idx1.val
  br i1 %0, label %bb2.i.i.i.i.i.i.i, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3c00a8468c411df8E.exit"

bb2.i.i.i.i.i.i.i:                                ; preds = %start
  %_4.i.i.i.i.i.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0
  tail call fastcc void @"alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle"({ i8*, i64 }* noalias noundef nonnull align 8 dereferenceable(16) %_4.i.i.i.i.i.i, i64 0, i64 %_6.idx1.val), !noalias !720
  %len.pre.i.i.i.i.i = load i64, i64* %this.idx5.i.i, align 8, !alias.scope !722, !noalias !720
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3c00a8468c411df8E.exit"

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3c00a8468c411df8E.exit": ; preds = %bb2.i.i.i.i.i.i.i, %start
  %len.i.i.i.i.i = phi i64 [ 0, %start ], [ %len.pre.i.i.i.i.i, %bb2.i.i.i.i.i.i.i ]
  %this.idx.i.i = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 0, i32 0
  %self.idx.val.i.i.i.i.i = load i8*, i8** %this.idx.i.i, align 8, !alias.scope !722, !noalias !720
  %1 = getelementptr inbounds i8, i8* %self.idx.val.i.i.i.i.i, i64 %len.i.i.i.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* nonnull align 1 %_6.idx.val, i64 %_6.idx1.val, i1 false), !noalias !722
  %2 = add i64 %len.i.i.i.i.i, %_6.idx1.val
  store i64 %2, i64* %this.idx5.i.i, align 8, !alias.scope !722, !noalias !720
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"<&alloc::string::String as core::str::pattern::Pattern>::into_searcher"(%"core::str::pattern::StrSearcher"* noalias nocapture noundef sret(%"core::str::pattern::StrSearcher") dereferenceable(104) %0, %"string::String"* noalias nocapture noundef readonly align 8 dereferenceable(24) %self, [0 x i8]* noalias noundef nonnull readonly align 1 %haystack.0, i64 %haystack.1) unnamed_addr #0 {
start:
  %1 = bitcast %"string::String"* %self to [0 x i8]**
  %_6.idx.val1.i = load [0 x i8]*, [0 x i8]** %1, align 8, !alias.scope !723, !nonnull !2
  %2 = getelementptr inbounds %"string::String", %"string::String"* %self, i64 0, i32 0, i32 1
  %len.i = load i64, i64* %2, align 8, !alias.scope !723
  tail call void @"core::str::pattern::StrSearcher::new"(%"core::str::pattern::StrSearcher"* noalias nocapture noundef nonnull sret(%"core::str::pattern::StrSearcher") dereferenceable(104) %0, [0 x i8]* noalias noundef nonnull readonly align 1 %haystack.0, i64 %haystack.1, [0 x i8]* noalias noundef nonnull readonly align 1 %_6.idx.val1.i, i64 %len.i)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"<alloc::string::String as core::convert::From<alloc::boxed::Box<str>>>::from"(%"string::String"* noalias nocapture noundef writeonly sret(%"string::String") dereferenceable(24) %0, [0 x i8]* noalias noundef nonnull align 1 %s.0, i64 %s.1) unnamed_addr #13 personality i32 (...)* @rust_eh_personality {
start:
  %1 = getelementptr [0 x i8], [0 x i8]* %s.0, i64 0, i64 0
  %_8.sroa.0.0..sroa_idx = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 0, i32 0
  store i8* %1, i8** %_8.sroa.0.0..sroa_idx, align 8
  %_8.sroa.4.0..sroa_idx8 = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 0, i32 1
  store i64 %s.1, i64* %_8.sroa.4.0..sroa_idx8, align 8
  %_8.sroa.5.0..sroa_idx10 = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 1
  store i64 %s.1, i64* %_8.sroa.5.0..sroa_idx10, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { [0 x i8]*, i64 } @"alloc::string::<impl core::convert::From<alloc::string::String> for alloc::boxed::Box<str>>::from"(%"string::String"* noalias nocapture noundef readonly dereferenceable(24) %s) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_4 = alloca %"vec::Vec<u8>", align 8
  %self.sroa.0.0..sroa_cast = bitcast %"string::String"* %s to i8*
  %0 = bitcast %"vec::Vec<u8>"* %_4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef nonnull align 8 dereferenceable(24) %self.sroa.0.0..sroa_cast, i64 24, i1 false)
  %1 = call fastcc { [0 x i8]*, i64 } @"alloc::vec::Vec<T,A>::into_boxed_slice"(%"vec::Vec<u8>"* noalias nocapture noundef nonnull dereferenceable(24) %_4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0)
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: nonlazybind uwtable
define void @"<alloc::string::String as core::convert::From<alloc::borrow::Cow<str>>>::from"(%"string::String"* noalias nocapture noundef writeonly sret(%"string::String") dereferenceable(24) %0, %"borrow::Cow<str>"* noalias nocapture noundef readonly dereferenceable(32) %s) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %_2.sroa.0.0..sroa_idx = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %s, i64 0, i32 0
  %_2.sroa.0.0.copyload = load i64, i64* %_2.sroa.0.0..sroa_idx, align 8
  %_2.sroa.4.0..sroa_idx2 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %s, i64 0, i32 1
  %_2.sroa.4.0..sroa_cast = bitcast [3 x i64]* %_2.sroa.4.0..sroa_idx2 to [0 x i8]**
  %_2.sroa.4.0.copyload = load [0 x i8]*, [0 x i8]** %_2.sroa.4.0..sroa_cast, align 8
  %_2.sroa.6.0..sroa_idx4 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %s, i64 0, i32 1, i64 1
  %_2.sroa.6.0.copyload = load i64, i64* %_2.sroa.6.0..sroa_idx4, align 8
  %_2.sroa.7.0..sroa_idx7 = getelementptr inbounds %"borrow::Cow<str>", %"borrow::Cow<str>"* %s, i64 0, i32 1, i64 2
  %_2.sroa.7.0.copyload = load i64, i64* %_2.sroa.7.0..sroa_idx7, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %trunc.not.i = icmp eq i64 %_2.sroa.0.0.copyload, 0
  br i1 %trunc.not.i, label %bb3.i, label %bb1.i

bb3.i:                                            ; preds = %start
  %1 = icmp ne [0 x i8]* %_2.sroa.4.0.copyload, null
  tail call void @llvm.assume(i1 %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %_6.i.i.i.i.i = icmp eq i64 %_2.sroa.6.0.copyload, 0
  br i1 %_6.i.i.i.i.i, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he00926a8a291e06dE.exit.i", label %bb6.i.i.i.i.i

bb6.i.i.i.i.i:                                    ; preds = %bb3.i
  %2 = xor i64 %_2.sroa.6.0.copyload, -1
  %size.lobit.not.i.i.i.i.i.i.i = lshr i64 %2, 63
  %3 = icmp slt i64 %_2.sroa.6.0.copyload, 0
  br i1 %3, label %bb8.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i.i"

bb8.i.i.i.i.i:                                    ; preds = %bb6.i.i.i.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !734
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i.i": ; preds = %bb6.i.i.i.i.i
  %4 = tail call i8* @__rust_alloc(i64 %_2.sroa.6.0.copyload, i64 %size.lobit.not.i.i.i.i.i.i.i) #30, !noalias !734
  %5 = icmp eq i8* %4, null
  br i1 %5, label %bb20.i.i.i.i.i, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he00926a8a291e06dE.exit.i"

bb20.i.i.i.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %_2.sroa.6.0.copyload, i64 noundef %size.lobit.not.i.i.i.i.i.i.i) #29, !noalias !734
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he00926a8a291e06dE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i.i", %bb3.i
  %.sroa.0.0.i.i.i.i.i = phi i8* [ %4, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i.i.i" ], [ inttoptr (i64 1 to i8*), %bb3.i ]
  %self.i.i.i.i = getelementptr [0 x i8], [0 x i8]* %_2.sroa.4.0.copyload, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.sroa.0.0.i.i.i.i.i, i8* nonnull align 1 %self.i.i.i.i, i64 %_2.sroa.6.0.copyload, i1 false), !noalias !742
  %_7.sroa.0.0..sroa_idx.i.i = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 0, i32 0
  store i8* %.sroa.0.0.i.i.i.i.i, i8** %_7.sroa.0.0..sroa_idx.i.i, align 8, !alias.scope !743, !noalias !744
  br label %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h737938fa422ecfbcE.exit"

bb1.i:                                            ; preds = %start
  %_2.sroa.4.8..sroa_cast = bitcast %"string::String"* %0 to [0 x i8]**
  store [0 x i8]* %_2.sroa.4.0.copyload, [0 x i8]** %_2.sroa.4.8..sroa_cast, align 8, !alias.scope !745
  br label %"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h737938fa422ecfbcE.exit"

"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h737938fa422ecfbcE.exit": ; preds = %bb1.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he00926a8a291e06dE.exit.i"
  %_2.sroa.6.0.copyload.sink = phi i64 [ %_2.sroa.6.0.copyload, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he00926a8a291e06dE.exit.i" ], [ %_2.sroa.7.0.copyload, %bb1.i ]
  %_7.sroa.4.0..sroa_idx10.i.i = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 0, i32 1
  store i64 %_2.sroa.6.0.copyload, i64* %_7.sroa.4.0..sroa_idx10.i.i, align 8, !alias.scope !745
  %_7.sroa.5.0..sroa_idx12.i.i = getelementptr inbounds %"string::String", %"string::String"* %0, i64 0, i32 0, i32 1
  store i64 %_2.sroa.6.0.copyload.sink, i64* %_7.sroa.5.0..sroa_idx12.i.i, align 8, !alias.scope !745
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"alloc::string::<impl core::convert::From<alloc::string::String> for alloc::vec::Vec<u8>>::from"(%"vec::Vec<u8>"* noalias nocapture noundef writeonly sret(%"vec::Vec<u8>") dereferenceable(24) %0, %"string::String"* noalias nocapture noundef readonly dereferenceable(24) %string) unnamed_addr #13 {
start:
  %self.sroa.0.0..sroa_cast = bitcast %"string::String"* %string to i8*
  %1 = bitcast %"vec::Vec<u8>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %1, i8* noundef nonnull align 8 dereferenceable(24) %self.sroa.0.0..sroa_cast, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::string::Drain as core::fmt::Debug>::fmt"(%"string::Drain"* noalias nocapture noundef readonly align 8 dereferenceable(40) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_13 = alloca { [0 x i8]*, i64 }, align 8
  %_6 = alloca %"core::fmt::builders::DebugTuple", align 8
  %0 = bitcast %"core::fmt::builders::DebugTuple"* %_6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0)
  call void @"core::fmt::Formatter::debug_tuple"(%"core::fmt::builders::DebugTuple"* noalias nocapture noundef nonnull sret(%"core::fmt::builders::DebugTuple") dereferenceable(24) %_6, %"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [5 x i8] }>* @alloc8864 to [0 x i8]*), i64 5)
  %1 = bitcast { [0 x i8]*, i64 }* %_13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1)
  %self1.idx.i = getelementptr inbounds %"string::Drain", %"string::Drain"* %self, i64 0, i32 3, i32 0
  %self1.idx.val.i = load i8*, i8** %self1.idx.i, align 8, !alias.scope !746, !nonnull !2
  %self1.idx4.i = getelementptr %"string::Drain", %"string::Drain"* %self, i64 0, i32 3, i32 1
  %self1.idx4.val.i = load i8*, i8** %self1.idx4.i, align 8, !alias.scope !746
  %2 = ptrtoint i8* %self1.idx4.val.i to i64
  %3 = ptrtoint i8* %self1.idx.val.i to i64
  %4 = sub nuw i64 %2, %3
  %5 = bitcast { [0 x i8]*, i64 }* %_13 to i8**
  store i8* %self1.idx.val.i, i8** %5, align 8
  %.fca.1.gep = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_13, i64 0, i32 1
  store i64 %4, i64* %.fca.1.gep, align 8
  %_10.0 = bitcast { [0 x i8]*, i64 }* %_13 to {}*
  %_4 = call noundef align 8 dereferenceable(24) %"core::fmt::builders::DebugTuple"* @"core::fmt::builders::DebugTuple::field"(%"core::fmt::builders::DebugTuple"* noalias noundef nonnull align 8 dereferenceable(24) %_6, {}* noundef nonnull align 1 %_10.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.3 to [3 x i64]*))
  %6 = call noundef zeroext i1 @"core::fmt::builders::DebugTuple::finish"(%"core::fmt::builders::DebugTuple"* noalias noundef nonnull align 8 dereferenceable(24) %_4)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0)
  ret i1 %6
}

; Function Attrs: nonlazybind uwtable
define void @"<alloc::string::Drain as core::ops::drop::Drop>::drop"(%"string::Drain"* noalias nocapture noundef readonly align 8 dereferenceable(40) %self) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  %0 = bitcast %"string::Drain"* %self to %"vec::Vec<u8>"**
  %_173 = load %"vec::Vec<u8>"*, %"vec::Vec<u8>"** %0, align 8
  %1 = getelementptr inbounds %"string::Drain", %"string::Drain"* %self, i64 0, i32 1
  %_6 = load i64, i64* %1, align 8
  %2 = getelementptr inbounds %"string::Drain", %"string::Drain"* %self, i64 0, i32 2
  %_7 = load i64, i64* %2, align 8
  %_5.not = icmp ugt i64 %_6, %_7
  br i1 %_5.not, label %bb7, label %bb2

bb2:                                              ; preds = %start
  %3 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %_173, i64 0, i32 1
  %_10 = load i64, i64* %3, align 8
  %_8.not = icmp ult i64 %_10, %_7
  br i1 %_8.not, label %bb7, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h995e65702d6de79eE.exit"

bb7.sink.split:                                   ; preds = %bb5.i.i40.i.i, %bb5.i.i
  %new_len.i.i39.i.i = add i64 %_22.i, %_6
  store i64 %new_len.i.i39.i.i, i64* %3, align 8, !noalias !749
  br label %bb7

bb7:                                              ; preds = %bb9.i.i, %bb5.i.i, %bb7.sink.split, %bb2, %start
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h995e65702d6de79eE.exit": ; preds = %bb2
  store i64 %_6, i64* %3, align 8, !alias.scope !752, !noalias !755
  %self.idx.i = getelementptr %"vec::Vec<u8>", %"vec::Vec<u8>"* %_173, i64 0, i32 0, i32 0
  %self.idx.val.i = load i8*, i8** %self.idx.i, align 8, !alias.scope !752, !noalias !755
  %4 = getelementptr inbounds i8, i8* %self.idx.val.i, i64 %_6
  %5 = getelementptr inbounds i8, i8* %self.idx.val.i, i64 %_7
  %_22.i = sub i64 %_10, %_7
  %6 = icmp eq i64 %_7, %_6
  %_2.not.i.i.i.i = icmp eq i64 %_22.i, 0
  br i1 %6, label %bb5.i.i, label %bb9.i.i

bb5.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h995e65702d6de79eE.exit"
  br i1 %_2.not.i.i.i.i, label %bb7, label %bb7.sink.split

bb9.i.i:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h995e65702d6de79eE.exit"
  br i1 %_2.not.i.i.i.i, label %bb7, label %bb5.i.i40.i.i

bb5.i.i40.i.i:                                    ; preds = %bb9.i.i
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 %_22.i, i1 false) #30, !noalias !757
  br label %bb7.sink.split
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define { [0 x i8]*, i64 } @"alloc::string::Drain::as_str"(%"string::Drain"* noalias nocapture noundef readonly align 8 dereferenceable(40) %self) unnamed_addr #13 {
start:
  %self1.idx = getelementptr inbounds %"string::Drain", %"string::Drain"* %self, i64 0, i32 3, i32 0
  %self1.idx.val = load i8*, i8** %self1.idx, align 8, !nonnull !2
  %self1.idx4 = getelementptr %"string::Drain", %"string::Drain"* %self, i64 0, i32 3, i32 1
  %self1.idx4.val = load i8*, i8** %self1.idx4, align 8
  %0 = ptrtoint i8* %self1.idx4.val to i64
  %1 = ptrtoint i8* %self1.idx.val to i64
  %2 = sub nuw i64 %0, %1
  %3 = bitcast i8* %self1.idx.val to [0 x i8]*
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %3, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %2, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: mustprogress nofree nosync nounwind nonlazybind uwtable willreturn
define void @"<alloc::string::Drain as core::iter::traits::iterator::Iterator>::size_hint"({ i64, { i64, i64 } }* noalias nocapture noundef writeonly sret({ i64, { i64, i64 } }) dereferenceable(24) %0, %"string::Drain"* noalias nocapture noundef readonly align 8 dereferenceable(40) %self) unnamed_addr #13 {
start:
  %_2.idx = getelementptr inbounds %"string::Drain", %"string::Drain"* %self, i64 0, i32 3, i32 0
  %_2.idx.val = load i8*, i8** %_2.idx, align 8
  %_2.idx1 = getelementptr %"string::Drain", %"string::Drain"* %self, i64 0, i32 3, i32 1
  %_2.idx1.val = load i8*, i8** %_2.idx1, align 8
  %1 = ptrtoint i8* %_2.idx1.val to i64
  %2 = ptrtoint i8* %_2.idx.val to i64
  %3 = sub nuw i64 %1, %2
  %_5.i = add i64 %3, 3
  %_4.i = lshr i64 %_5.i, 2
  %4 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i64 0, i32 0
  store i64 %_4.i, i64* %4, align 8, !alias.scope !760
  %5 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i64 0, i32 1, i32 0
  store i64 1, i64* %5, align 8, !alias.scope !760
  %6 = getelementptr inbounds { i64, { i64, i64 } }, { i64, { i64, i64 } }* %0, i64 0, i32 1, i32 1
  store i64 %3, i64* %6, align 8, !alias.scope !760
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { [0 x i8]*, i64 } @"alloc::vec::Vec<T,A>::into_boxed_slice"(%"vec::Vec<u8>"* noalias nocapture noundef dereferenceable(24) %self) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %0 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %self, i64 0, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !alias.scope !763
  %2 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %self, i64 0, i32 1
  %_5.i = load i64, i64* %2, align 8, !alias.scope !763
  %_2.i = icmp ugt i64 %1, %_5.i
  br i1 %_2.i, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i", label %start.bb3_crit_edge

start.bb3_crit_edge:                              ; preds = %start
  %.phi.trans.insert = bitcast %"vec::Vec<u8>"* %self to [0 x i8]**
  %value.sroa.0.sroa.0.0.copyload53.pre = load [0 x i8]*, [0 x i8]** %.phi.trans.insert, align 8
  br label %bb3

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i": ; preds = %start
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %self.idx.i.i.i = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %self, i64 0, i32 0, i32 0
  %self.idx.val.i.i.i = load i8*, i8** %self.idx.i.i.i, align 8, !alias.scope !772
  %3 = xor i64 %1, -1
  %size.lobit.not.i.i.i.i.i.i = lshr i64 %3, 63
  %.not.i.i.i = icmp slt i64 %1, 0
  %4 = bitcast i8* %self.idx.val.i.i.i to [0 x i8]*
  br i1 %.not.i.i.i, label %bb3, label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i"
  %5 = icmp ne i8* %self.idx.val.i.i.i, null
  tail call void @llvm.assume(i1 %5)
  %6 = xor i64 %_5.i, -1
  %size.lobit.not.i.i.i.i.i = lshr i64 %6, 63
  %7 = icmp eq i64 %_5.i, 0
  br i1 %7, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i", label %bb3.i.i.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i": ; preds = %bb6.i.i.i
  tail call void @__rust_dealloc(i8* nonnull %self.idx.val.i.i.i, i64 %1, i64 %size.lobit.not.i.i.i.i.i.i) #30, !noalias !772
  %8 = inttoptr i64 %size.lobit.not.i.i.i.i.i to [0 x i8]*
  %9 = getelementptr [0 x i8], [0 x i8]* %8, i64 0, i64 0
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.i.i.i"

bb3.i.i.i.i:                                      ; preds = %bb6.i.i.i
  %_18.i.i.i.i = icmp eq i64 %size.lobit.not.i.i.i.i.i.i, %size.lobit.not.i.i.i.i.i
  br i1 %_18.i.i.i.i, label %bb4.i.i.i.i, label %_ZN5alloc5alloc6Global10alloc_impl17h1a81306af13cb133E.exit.i.i.i.i

_ZN5alloc5alloc6Global10alloc_impl17h1a81306af13cb133E.exit.i.i.i.i: ; preds = %bb3.i.i.i.i
  %10 = tail call i8* @__rust_alloc(i64 %_5.i, i64 %size.lobit.not.i.i.i.i.i) #30, !noalias !772
  %11 = icmp eq i8* %10, null
  br i1 %11, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h98131712a22490c1E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.thread59.i.i.i"

bb4.i.i.i.i:                                      ; preds = %bb3.i.i.i.i
  %raw_ptr.i.i.i.i = tail call i8* @__rust_realloc(i8* nonnull %self.idx.val.i.i.i, i64 %1, i64 %size.lobit.not.i.i.i.i.i.i, i64 %_5.i) #30, !noalias !772
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.thread59.i.i.i": ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h1a81306af13cb133E.exit.i.i.i.i
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %10, i8* nonnull align 1 %self.idx.val.i.i.i, i64 %_5.i, i1 false) #30, !noalias !772
  tail call void @__rust_dealloc(i8* nonnull %self.idx.val.i.i.i, i64 %1, i64 %size.lobit.not.i.i.i.i.i.i) #30, !noalias !772
  br label %bb12.i.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.i.i.i": ; preds = %bb4.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i = phi i8* [ %9, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hf4e4a0c735124318E.exit.i.i.i.i" ], [ %raw_ptr.i.i.i.i, %bb4.i.i.i.i ]
  %12 = icmp eq i8* %.sroa.0.0.i.i.i.i, null
  br i1 %12, label %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h98131712a22490c1E.exit.i.i", label %bb12.i.i.i

bb12.i.i.i:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.thread59.i.i.i"
  %.sroa.0.0.i63.i.i.i = phi i8* [ %10, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.thread59.i.i.i" ], [ %.sroa.0.0.i.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.i.i.i" ]
  store i8* %.sroa.0.0.i63.i.i.i, i8** %self.idx.i.i.i, align 8, !alias.scope !773
  store i64 %_5.i, i64* %0, align 8, !alias.scope !773
  %13 = bitcast i8* %.sroa.0.0.i63.i.i.i to [0 x i8]*
  br label %bb3

"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h98131712a22490c1E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$6shrink17h8f4ae5e9da6cbbfcE.exit.i.i.i", %_ZN5alloc5alloc6Global10alloc_impl17h1a81306af13cb133E.exit.i.i.i.i
  %cond.i.i = icmp slt i64 %_5.i, 0
  br i1 %cond.i.i, label %bb5.i.i.i, label %bb6.i2.i.i

bb5.i.i.i:                                        ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h98131712a22490c1E.exit.i.i"
  invoke void @"alloc::raw_vec::capacity_overflow"() #29
          to label %.noexc unwind label %bb7

.noexc:                                           ; preds = %bb5.i.i.i
  unreachable

bb6.i2.i.i:                                       ; preds = %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h98131712a22490c1E.exit.i.i"
  invoke void @"alloc::alloc::handle_alloc_error"(i64 %_5.i, i64 noundef %size.lobit.not.i.i.i.i.i) #29
          to label %.noexc48 unwind label %bb7

.noexc48:                                         ; preds = %bb6.i2.i.i
  unreachable

bb3:                                              ; preds = %bb12.i.i.i, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i", %start.bb3_crit_edge
  %value.sroa.0.sroa.0.0.copyload53 = phi [0 x i8]* [ %value.sroa.0.sroa.0.0.copyload53.pre, %start.bb3_crit_edge ], [ %13, %bb12.i.i.i ], [ %4, %"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E.exit.i.i.i" ]
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %value.sroa.0.sroa.0.0.copyload53, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %_5.i, 1
  ret { [0 x i8]*, i64 } %15

abort:                                            ; preds = %bb7
  %16 = landingpad { i8*, i32 }
          cleanup
  tail call void @"core::panicking::panic_no_unwind"() #32
  unreachable

bb4:                                              ; preds = %bb7
  resume { i8*, i32 } %17

bb7:                                              ; preds = %bb6.i2.i.i, %bb5.i.i.i
  %17 = landingpad { i8*, i32 }
          cleanup
  invoke fastcc void @"core::ptr::drop_in_place<alloc::vec::Vec<u8>>"(%"vec::Vec<u8>"* nonnull %self) #31
          to label %bb4 unwind label %abort
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @"alloc::vec::Vec<T,A>::swap_remove::assert_failed"(i64 %0, i64 %1) unnamed_addr #17 {
start:
  %_11 = alloca [2 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %len = alloca i64, align 8
  %index = alloca i64, align 8
  store i64 %0, i64* %index, align 8
  store i64 %1, i64* %len, align 8
  %2 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2)
  %3 = bitcast [2 x { i8*, i64* }]* %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3)
  %4 = bitcast [2 x { i8*, i64* }]* %_11 to i64**
  store i64* %index, i64** %4, align 8
  %5 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 0, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %5, align 8
  %6 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1
  %7 = bitcast { i8*, i64* }* %6 to i64**
  store i64* %len, i64** %7, align 8
  %8 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc8251 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %9, align 8, !alias.scope !776, !noalias !779
  %10 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 1
  store i64 3, i64* %10, align 8, !alias.scope !776, !noalias !779
  %11 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 1, i32 0
  store i64* null, i64** %11, align 8, !alias.scope !776, !noalias !779
  %12 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 0
  %13 = bitcast [0 x { i8*, i64* }]** %12 to [2 x { i8*, i64* }]**
  store [2 x { i8*, i64* }]* %_11, [2 x { i8*, i64* }]** %13, align 8, !alias.scope !776, !noalias !779
  %14 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 1
  store i64 2, i64* %14, align 8, !alias.scope !776, !noalias !779
  call void @"core::panicking::panic_fmt"(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_4, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8869 to %"core::panic::location::Location"*)) #29
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @"alloc::vec::Vec<T,A>::insert::assert_failed"(i64 %0, i64 %1) unnamed_addr #17 {
start:
  %_11 = alloca [2 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %len = alloca i64, align 8
  %index = alloca i64, align 8
  store i64 %0, i64* %index, align 8
  store i64 %1, i64* %len, align 8
  %2 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2)
  %3 = bitcast [2 x { i8*, i64* }]* %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3)
  %4 = bitcast [2 x { i8*, i64* }]* %_11 to i64**
  store i64* %index, i64** %4, align 8
  %5 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 0, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %5, align 8
  %6 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1
  %7 = bitcast { i8*, i64* }* %6 to i64**
  store i64* %len, i64** %7, align 8
  %8 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc8262 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %9, align 8, !alias.scope !782, !noalias !785
  %10 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 1
  store i64 3, i64* %10, align 8, !alias.scope !782, !noalias !785
  %11 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 1, i32 0
  store i64* null, i64** %11, align 8, !alias.scope !782, !noalias !785
  %12 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 0
  %13 = bitcast [0 x { i8*, i64* }]** %12 to [2 x { i8*, i64* }]**
  store [2 x { i8*, i64* }]* %_11, [2 x { i8*, i64* }]** %13, align 8, !alias.scope !782, !noalias !785
  %14 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 1
  store i64 2, i64* %14, align 8, !alias.scope !782, !noalias !785
  call void @"core::panicking::panic_fmt"(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_4, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8871 to %"core::panic::location::Location"*)) #29
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @"alloc::vec::Vec<T,A>::remove::assert_failed"(i64 %0, i64 %1, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) %2) unnamed_addr #17 {
start:
  %_11 = alloca [2 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %len = alloca i64, align 8
  %index = alloca i64, align 8
  store i64 %0, i64* %index, align 8
  store i64 %1, i64* %len, align 8
  %3 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3)
  %4 = bitcast [2 x { i8*, i64* }]* %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4)
  %5 = bitcast [2 x { i8*, i64* }]* %_11 to i64**
  store i64* %index, i64** %5, align 8
  %6 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 0, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %6, align 8
  %7 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1
  %8 = bitcast { i8*, i64* }* %7 to i64**
  store i64* %len, i64** %8, align 8
  %9 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %9, align 8
  %10 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc8273 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %10, align 8, !alias.scope !788, !noalias !791
  %11 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 1
  store i64 3, i64* %11, align 8, !alias.scope !788, !noalias !791
  %12 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 1, i32 0
  store i64* null, i64** %12, align 8, !alias.scope !788, !noalias !791
  %13 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 0
  %14 = bitcast [0 x { i8*, i64* }]** %13 to [2 x { i8*, i64* }]**
  store [2 x { i8*, i64* }]* %_11, [2 x { i8*, i64* }]** %14, align 8, !alias.scope !788, !noalias !791
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 1
  store i64 2, i64* %15, align 8, !alias.scope !788, !noalias !791
  call void @"core::panicking::panic_fmt"(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_4, %"core::panic::location::Location"* noalias noundef nonnull readonly align 8 dereferenceable(24) %2) #29
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @"alloc::vec::Vec<T,A>::split_off::assert_failed"(i64 %0, i64 %1) unnamed_addr #17 {
start:
  %_11 = alloca [2 x { i8*, i64* }], align 8
  %_4 = alloca %"core::fmt::Arguments", align 8
  %len = alloca i64, align 8
  %at = alloca i64, align 8
  store i64 %0, i64* %at, align 8
  store i64 %1, i64* %len, align 8
  %2 = bitcast %"core::fmt::Arguments"* %_4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %2)
  %3 = bitcast [2 x { i8*, i64* }]* %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3)
  %4 = bitcast [2 x { i8*, i64* }]* %_11 to i64**
  store i64* %at, i64** %4, align 8
  %5 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 0, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %5, align 8
  %6 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1
  %7 = bitcast { i8*, i64* }* %6 to i64**
  store i64* %len, i64** %7, align 8
  %8 = getelementptr inbounds [2 x { i8*, i64* }], [2 x { i8*, i64* }]* %_11, i64 0, i64 1, i32 1
  store i64* bitcast (i1 (i64*, %"core::fmt::Formatter"*)* @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt" to i64*), i64** %8, align 8
  %9 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc8284 to [0 x { [0 x i8]*, i64 }]*), [0 x { [0 x i8]*, i64 }]** %9, align 8, !alias.scope !794, !noalias !797
  %10 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 0, i32 1
  store i64 3, i64* %10, align 8, !alias.scope !794, !noalias !797
  %11 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 1, i32 0
  store i64* null, i64** %11, align 8, !alias.scope !794, !noalias !797
  %12 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 0
  %13 = bitcast [0 x { i8*, i64* }]** %12 to [2 x { i8*, i64* }]**
  store [2 x { i8*, i64* }]* %_11, [2 x { i8*, i64* }]** %13, align 8, !alias.scope !794, !noalias !797
  %14 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %_4, i64 0, i32 2, i32 1
  store i64 2, i64* %14, align 8, !alias.scope !794, !noalias !797
  call void @"core::panicking::panic_fmt"(%"core::fmt::Arguments"* noalias nocapture noundef nonnull dereferenceable(48) %_4, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc8875 to %"core::panic::location::Location"*)) #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"<alloc::vec::Vec<u8> as core::convert::From<&str>>::from"(%"vec::Vec<u8>"* noalias nocapture noundef writeonly sret(%"vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* noalias nocapture noundef nonnull readonly align 1 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (...)* @rust_eh_personality {
start:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %_6.i.i.i = icmp eq i64 %s.1, 0
  br i1 %_6.i.i.i, label %"_ZN87_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17hec29d51af560df78E.exit", label %bb6.i.i.i

bb6.i.i.i:                                        ; preds = %start
  %1 = xor i64 %s.1, -1
  %size.lobit.not.i.i.i.i.i = lshr i64 %1, 63
  %2 = icmp slt i64 %s.1, 0
  br i1 %2, label %bb8.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i"

bb8.i.i.i:                                        ; preds = %bb6.i.i.i
  tail call void @"alloc::raw_vec::capacity_overflow"() #29, !noalias !806
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i": ; preds = %bb6.i.i.i
  %3 = tail call i8* @__rust_alloc(i64 %s.1, i64 %size.lobit.not.i.i.i.i.i) #30, !noalias !806
  %4 = icmp eq i8* %3, null
  br i1 %4, label %bb20.i.i.i, label %"_ZN87_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17hec29d51af560df78E.exit"

bb20.i.i.i:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i"
  tail call void @"alloc::alloc::handle_alloc_error"(i64 %s.1, i64 noundef %size.lobit.not.i.i.i.i.i) #29, !noalias !806
  unreachable

"_ZN87_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17hec29d51af560df78E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i", %start
  %.sroa.0.0.i.i.i = phi i8* [ %3, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h79d6d0976a87398eE.exit.i.i.i" ], [ inttoptr (i64 1 to i8*), %start ]
  %5 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %0, i64 0, i32 0, i32 0
  store i8* %.sroa.0.0.i.i.i, i8** %5, align 8, !alias.scope !809, !noalias !810
  %6 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %0, i64 0, i32 0, i32 1
  store i64 %s.1, i64* %6, align 8, !alias.scope !809, !noalias !810
  %7 = getelementptr inbounds %"vec::Vec<u8>", %"vec::Vec<u8>"* %0, i64 0, i32 1
  %self.i.i = getelementptr [0 x i8], [0 x i8]* %s.0, i64 0, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %.sroa.0.0.i.i.i, i8* nonnull align 1 %self.i.i, i64 %s.1, i1 false), !noalias !809
  store i64 %s.1, i64* %7, align 8, !alias.scope !809, !noalias !810
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::alloc::Global as core::fmt::Debug>::fmt"(%"alloc::Global"* noalias nocapture noundef nonnull readonly align 1 %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = tail call noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [6 x i8] }>* @alloc8876 to [0 x i8]*), i64 6)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::collections::btree::set_val::SetValZST as core::fmt::Debug>::fmt"(%"collections::btree::set_val::SetValZST"* noalias nocapture noundef nonnull readonly align 1 %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = tail call noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [9 x i8] }>* @alloc8877 to [0 x i8]*), i64 9)
  ret i1 %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::collections::TryReserveError as core::fmt::Debug>::fmt"({ i64, i64 }* noalias noundef readonly align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_11 = alloca { i64, i64 }*, align 8
  %0 = bitcast { i64, i64 }** %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  store { i64, i64 }* %self, { i64, i64 }** %_11, align 8
  %_8.0 = bitcast { i64, i64 }** %_11 to {}*
  %1 = call noundef zeroext i1 @"core::fmt::Formatter::debug_struct_field1_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [15 x i8] }>* @alloc8878 to [0 x i8]*), i64 15, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [4 x i8] }>* @alloc8879 to [0 x i8]*), i64 4, {}* noundef nonnull align 1 %_8.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.4 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i1 %1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::collections::TryReserveErrorKind as core::fmt::Debug>::fmt"({ i64, i64 }* noalias noundef readonly align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %__self_1 = alloca {}*, align 8
  %__self_0 = alloca { i64, i64 }*, align 8
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i64 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !31, !noundef !2
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %3 = tail call noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [16 x i8] }>* @alloc8892 to [0 x i8]*), i64 16)
  br label %bb6

bb1:                                              ; preds = %start
  %4 = bitcast { i64, i64 }** %__self_0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4)
  store { i64, i64 }* %self, { i64, i64 }** %__self_0, align 8
  %5 = bitcast {}** %__self_1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5)
  %6 = bitcast {}** %__self_1 to { i64, i64 }**
  store { i64, i64 }* %self, { i64, i64 }** %6, align 8
  %_14.0 = bitcast { i64, i64 }** %__self_0 to {}*
  %_19.0 = bitcast {}** %__self_1 to {}*
  %7 = call noundef zeroext i1 @"core::fmt::Formatter::debug_struct_field2_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [10 x i8] }>* @alloc8883 to [0 x i8]*), i64 10, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [6 x i8] }>* @alloc8884 to [0 x i8]*), i64 6, {}* noundef nonnull align 1 %_14.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.5 to [3 x i64]*), [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [14 x i8] }>* @alloc8888 to [0 x i8]*), i64 14, {}* noundef nonnull align 1 %_19.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.6 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4)
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %.0.in = phi i1 [ %3, %bb3 ], [ %7, %bb1 ]
  ret i1 %.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::ffi::c_str::NulError as core::fmt::Debug>::fmt"(%"ffi::c_str::NulError"* noalias noundef readonly align 8 dereferenceable(32) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_13 = alloca %"vec::Vec<u8>"*, align 8
  %_9 = alloca i64*, align 8
  %0 = bitcast i64** %_9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = getelementptr inbounds %"ffi::c_str::NulError", %"ffi::c_str::NulError"* %self, i64 0, i32 0
  store i64* %1, i64** %_9, align 8
  %_6.0 = bitcast i64** %_9 to {}*
  %2 = bitcast %"vec::Vec<u8>"** %_13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2)
  %3 = getelementptr inbounds %"ffi::c_str::NulError", %"ffi::c_str::NulError"* %self, i64 0, i32 1
  store %"vec::Vec<u8>"* %3, %"vec::Vec<u8>"** %_13, align 8
  %_10.0 = bitcast %"vec::Vec<u8>"** %_13 to {}*
  %4 = call noundef zeroext i1 @"core::fmt::Formatter::debug_tuple_field2_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [8 x i8] }>* @alloc8893 to [0 x i8]*), i64 8, {}* noundef nonnull align 1 %_6.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.7 to [3 x i64]*), {}* noundef nonnull align 1 %_10.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.8 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::ffi::c_str::FromBytesWithNulErrorKind as core::fmt::Debug>::fmt"({ i64, i64 }* noalias noundef readonly align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %__self_0 = alloca i64*, align 8
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i64 0, i32 0
  %_3 = load i64, i64* %0, align 8, !range !14, !noundef !2
  %trunc.not = icmp eq i64 %_3, 0
  br i1 %trunc.not, label %bb3, label %bb1

bb3:                                              ; preds = %start
  %1 = bitcast i64** %__self_0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1)
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i64 0, i32 1
  store i64* %2, i64** %__self_0, align 8
  %_8.0 = bitcast i64** %__self_0 to {}*
  %3 = call noundef zeroext i1 @"core::fmt::Formatter::debug_tuple_field1_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [11 x i8] }>* @alloc8901 to [0 x i8]*), i64 11, {}* noundef nonnull align 1 %_8.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.7 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1)
  br label %bb6

bb1:                                              ; preds = %start
  %4 = tail call noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [16 x i8] }>* @alloc8900 to [0 x i8]*), i64 16)
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %.0.in = phi i1 [ %4, %bb1 ], [ %3, %bb3 ]
  ret i1 %.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::ffi::c_str::FromVecWithNulError as core::fmt::Debug>::fmt"(%"ffi::c_str::FromVecWithNulError"* noalias noundef readonly align 8 dereferenceable(40) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_17 = alloca %"vec::Vec<u8>"*, align 8
  %_11 = alloca { i64, i64 }*, align 8
  %0 = bitcast { i64, i64 }** %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = getelementptr inbounds %"ffi::c_str::FromVecWithNulError", %"ffi::c_str::FromVecWithNulError"* %self, i64 0, i32 0
  store { i64, i64 }* %1, { i64, i64 }** %_11, align 8
  %_8.0 = bitcast { i64, i64 }** %_11 to {}*
  %2 = bitcast %"vec::Vec<u8>"** %_17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2)
  %3 = getelementptr inbounds %"ffi::c_str::FromVecWithNulError", %"ffi::c_str::FromVecWithNulError"* %self, i64 0, i32 1
  store %"vec::Vec<u8>"* %3, %"vec::Vec<u8>"** %_17, align 8
  %_14.0 = bitcast %"vec::Vec<u8>"** %_17 to {}*
  %4 = call noundef zeroext i1 @"core::fmt::Formatter::debug_struct_field2_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [19 x i8] }>* @alloc8902 to [0 x i8]*), i64 19, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [10 x i8] }>* @alloc8903 to [0 x i8]*), i64 10, {}* noundef nonnull align 1 %_8.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.9 to [3 x i64]*), [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [5 x i8] }>* @alloc8918 to [0 x i8]*), i64 5, {}* noundef nonnull align 1 %_14.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.8 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::ffi::c_str::IntoStringError as core::fmt::Debug>::fmt"(%"ffi::c_str::IntoStringError"* noalias noundef readonly align 8 dereferenceable(32) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_17 = alloca %"core::str::error::Utf8Error"*, align 8
  %_11 = alloca { i8*, i64 }*, align 8
  %0 = bitcast { i8*, i64 }** %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = getelementptr inbounds %"ffi::c_str::IntoStringError", %"ffi::c_str::IntoStringError"* %self, i64 0, i32 0
  store { i8*, i64 }* %1, { i8*, i64 }** %_11, align 8
  %_8.0 = bitcast { i8*, i64 }** %_11 to {}*
  %2 = bitcast %"core::str::error::Utf8Error"** %_17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2)
  %3 = getelementptr inbounds %"ffi::c_str::IntoStringError", %"ffi::c_str::IntoStringError"* %self, i64 0, i32 1
  store %"core::str::error::Utf8Error"* %3, %"core::str::error::Utf8Error"** %_17, align 8
  %_14.0 = bitcast %"core::str::error::Utf8Error"** %_17 to {}*
  %4 = call noundef zeroext i1 @"core::fmt::Formatter::debug_struct_field2_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [15 x i8] }>* @alloc8908 to [0 x i8]*), i64 15, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [5 x i8] }>* @alloc8909 to [0 x i8]*), i64 5, {}* noundef nonnull align 1 %_8.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.a to [3 x i64]*), [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [5 x i8] }>* @alloc8919 to [0 x i8]*), i64 5, {}* noundef nonnull align 1 %_14.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.b to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::string::FromUtf8Error as core::fmt::Debug>::fmt"(%"string::FromUtf8Error"* noalias noundef readonly align 8 dereferenceable(40) %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_17 = alloca %"core::str::error::Utf8Error"*, align 8
  %_11 = alloca %"vec::Vec<u8>"*, align 8
  %0 = bitcast %"vec::Vec<u8>"** %_11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = getelementptr inbounds %"string::FromUtf8Error", %"string::FromUtf8Error"* %self, i64 0, i32 0
  store %"vec::Vec<u8>"* %1, %"vec::Vec<u8>"** %_11, align 8
  %_8.0 = bitcast %"vec::Vec<u8>"** %_11 to {}*
  %2 = bitcast %"core::str::error::Utf8Error"** %_17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2)
  %3 = getelementptr inbounds %"string::FromUtf8Error", %"string::FromUtf8Error"* %self, i64 0, i32 1
  store %"core::str::error::Utf8Error"* %3, %"core::str::error::Utf8Error"** %_17, align 8
  %_14.0 = bitcast %"core::str::error::Utf8Error"** %_17 to {}*
  %4 = call noundef zeroext i1 @"core::fmt::Formatter::debug_struct_field2_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [13 x i8] }>* @alloc8917 to [0 x i8]*), i64 13, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [5 x i8] }>* @alloc8918 to [0 x i8]*), i64 5, {}* noundef nonnull align 1 %_8.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.8 to [3 x i64]*), [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [5 x i8] }>* @alloc8919 to [0 x i8]*), i64 5, {}* noundef nonnull align 1 %_14.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.b to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i1 %4
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"<alloc::string::FromUtf16Error as core::fmt::Debug>::fmt"(%"string::FromUtf16Error"* noalias noundef nonnull readonly align 1 %self, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %_9 = alloca {}*, align 8
  %0 = bitcast {}** %_9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0)
  %1 = getelementptr %"string::FromUtf16Error", %"string::FromUtf16Error"* %self, i64 0, i32 0
  store {}* %1, {}** %_9, align 8
  %_6.0 = bitcast {}** %_9 to {}*
  %2 = call noundef zeroext i1 @"core::fmt::Formatter::debug_tuple_field1_finish"(%"core::fmt::Formatter"* noalias noundef nonnull align 8 dereferenceable(64) %f, [0 x i8]* noalias noundef nonnull readonly align 1 bitcast (<{ [14 x i8] }>* @alloc8920 to [0 x i8]*), i64 14, {}* noundef nonnull align 1 %_6.0, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.6 to [3 x i64]*))
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0)
  ret i1 %2
}

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #18

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #19

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #19

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"<core::alloc::layout::Layout as core::fmt::Debug>::fmt"({ i64, i64 }* noalias noundef readonly align 8 dereferenceable(16), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"<str as core::fmt::Debug>::fmt"([0 x i8]* noalias noundef nonnull readonly align 1, i64, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"<core::str::error::Utf8Error as core::fmt::Debug>::fmt"(%"core::str::error::Utf8Error"* noalias noundef readonly align 8 dereferenceable(16), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::pad"(%"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64), [0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"core::fmt::Formatter::debug_list"(%"core::fmt::builders::DebugList"* noalias nocapture noundef sret(%"core::fmt::builders::DebugList") dereferenceable(16), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::builders::DebugList::finish"(%"core::fmt::builders::DebugList"* noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::debug_lower_hex"(%"core::fmt::Formatter"* noalias noundef readonly align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::num::<impl core::fmt::LowerHex for u8>::fmt"(i8* noalias noundef readonly align 1 dereferenceable(1), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::debug_upper_hex"(%"core::fmt::Formatter"* noalias noundef readonly align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::num::<impl core::fmt::UpperHex for u8>::fmt"(i8* noalias noundef readonly align 1 dereferenceable(1), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt"(i8* noalias noundef readonly align 1 dereferenceable(1), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt"(i64* noalias noundef readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt"(i64* noalias noundef readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt"(i64* noalias noundef readonly align 8 dereferenceable(8), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::write"({}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), %"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(16) %"core::fmt::builders::DebugList"* @"core::fmt::builders::DebugList::entry"(%"core::fmt::builders::DebugList"* noalias noundef align 8 dereferenceable(16), {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @"core::panicking::panic_fmt"(%"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48), %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #17

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @"core::panicking::panic_no_unwind"() unnamed_addr #23

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #24

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #24

; Function Attrs: nonlazybind uwtable
declare { %"core::ffi::c_str::CStr"*, i64 } @"core::ffi::c_str::CStr::from_bytes_with_nul_unchecked::rt_impl"([0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @"core::panicking::panic"([0 x i8]* noalias noundef nonnull readonly align 1, i64, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @"core::str::slice_error_fail"([0 x i8]* noalias noundef nonnull readonly align 1, i64, i64, i64, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @"core::slice::memchr::memchr_general_case"(i8, [0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"<core::fmt::Error as core::fmt::Debug>::fmt"(%"core::fmt::Error"* noalias noundef nonnull readonly align 1, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @"core::result::unwrap_failed"([0 x i8]* noalias noundef nonnull readonly align 1, i64, {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #17

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #25

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #26

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #3

; Function Attrs: noreturn nonlazybind uwtable
declare void @__rust_alloc_error_handler(i64, i64) unnamed_addr #7

; Function Attrs: noreturn nonlazybind uwtable
declare void @rust_oom(i64, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::write_str"(%"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64), [0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind nonlazybind readonly uwtable willreturn
declare i64 @strlen(i8* nocapture) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"<core::ffi::c_str::CStr as core::fmt::Debug>::fmt"(%"core::ffi::c_str::CStr"* noalias noundef nonnull readonly align 1, i64, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { %"core::ffi::c_str::CStr"*, i64 } @"<&core::ffi::c_str::CStr as core::default::Default>::default"() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::write_fmt"(%"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64), %"core::fmt::Arguments"* noalias nocapture noundef dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"<str as core::fmt::Display>::fmt"([0 x i8]* noalias noundef nonnull readonly align 1, i64, %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @"core::option::expect_failed"([0 x i8]* noalias noundef nonnull readonly align 1, i64, %"core::panic::location::Location"* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare void @"core::unicode::unicode_data::conversions::to_lower"([3 x i32]* noalias nocapture noundef sret([3 x i32]) dereferenceable(12), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::unicode::unicode_data::cased::lookup"(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::unicode::unicode_data::case_ignorable::lookup"(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"core::unicode::unicode_data::conversions::to_upper"([3 x i32]* noalias nocapture noundef sret([3 x i32]) dereferenceable(12), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"core::str::converts::from_utf8"(%"core::result::Result<&str, core::str::error::Utf8Error>"* noalias nocapture noundef sret(%"core::result::Result<&str, core::str::error::Utf8Error>") dereferenceable(24), [0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { %"core::str::lossy::Utf8Lossy"*, i64 } @"core::str::lossy::Utf8Lossy::from_bytes"([0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i8*, i64 } @"core::str::lossy::Utf8Lossy::chunks"(%"core::str::lossy::Utf8Lossy"* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"<core::str::lossy::Utf8LossyChunksIter as core::iter::traits::iterator::Iterator>::next"(%"core::option::Option<core::str::lossy::Utf8LossyChunk>"* noalias nocapture noundef sret(%"core::option::Option<core::str::lossy::Utf8LossyChunk>") dereferenceable(32), { i8*, i64 }* noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"<core::str::error::Utf8Error as core::fmt::Display>::fmt"(%"core::str::error::Utf8Error"* noalias noundef readonly align 8 dereferenceable(16), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"core::str::pattern::StrSearcher::new"(%"core::str::pattern::StrSearcher"* noalias nocapture noundef sret(%"core::str::pattern::StrSearcher") dereferenceable(104), [0 x i8]* noalias noundef nonnull readonly align 1, i64, [0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @"core::fmt::Formatter::debug_tuple"(%"core::fmt::builders::DebugTuple"* noalias nocapture noundef sret(%"core::fmt::builders::DebugTuple") dereferenceable(24), %"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64), [0 x i8]* noalias noundef nonnull readonly align 1, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable(24) %"core::fmt::builders::DebugTuple"* @"core::fmt::builders::DebugTuple::field"(%"core::fmt::builders::DebugTuple"* noalias noundef align 8 dereferenceable(24), {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::builders::DebugTuple::finish"(%"core::fmt::builders::DebugTuple"* noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::debug_struct_field1_finish"(%"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64), [0 x i8]* noalias noundef nonnull readonly align 1, i64, [0 x i8]* noalias noundef nonnull readonly align 1, i64, {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::debug_struct_field2_finish"(%"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64), [0 x i8]* noalias noundef nonnull readonly align 1, i64, [0 x i8]* noalias noundef nonnull readonly align 1, i64, {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), [0 x i8]* noalias noundef nonnull readonly align 1, i64, {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::debug_tuple_field2_finish"(%"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64), [0 x i8]* noalias noundef nonnull readonly align 1, i64, {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24), {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"core::fmt::Formatter::debug_tuple_field1_finish"(%"core::fmt::Formatter"* noalias noundef align 8 dereferenceable(64), [0 x i8]* noalias noundef nonnull readonly align 1, i64, {}* noundef nonnull align 1, [3 x i64]* noalias noundef readonly align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #28

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { inlinehint noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { noinline nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #7 = { noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind readnone uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #10 = { noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind uwtable willreturn writeonly "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind readonly uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree nosync nounwind nonlazybind uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree nounwind nonlazybind uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #15 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #18 = { nonlazybind "target-cpu"="x86-64" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn }
attributes #20 = { argmemonly nofree nounwind willreturn }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #24 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #25 = { nofree nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #26 = { argmemonly nofree nounwind willreturn writeonly }
attributes #27 = { argmemonly mustprogress nofree nounwind nonlazybind readonly uwtable willreturn "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #28 = { nofree nosync nounwind readnone willreturn }
attributes #29 = { noreturn }
attributes #30 = { nounwind }
attributes #31 = { noinline }
attributes #32 = { noinline noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{i64 8}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZN63_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..fmt..Debug$GT$3fmt17h3f022de8fc859c27E: %self"}
!6 = distinct !{!6, !"_ZN63_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..fmt..Debug$GT$3fmt17h3f022de8fc859c27E"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"_ZN63_$LT$alloc..ffi..c_str..CString$u20$as$u20$core..fmt..Debug$GT$3fmt17h3f022de8fc859c27E: %f"}
!9 = !{i64 1}
!10 = !{!5, !8}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN81_$LT$alloc..ffi..c_str..FromBytesWithNulErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he4d37d582f750ebcE: %self"}
!13 = distinct !{!13, !"_ZN81_$LT$alloc..ffi..c_str..FromBytesWithNulErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he4d37d582f750ebcE"}
!14 = !{i64 0, i64 2}
!15 = !{!16}
!16 = distinct !{!16, !13, !"_ZN81_$LT$alloc..ffi..c_str..FromBytesWithNulErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17he4d37d582f750ebcE: %f"}
!17 = !{!12, !16}
!18 = !{!19, !21, !22}
!19 = distinct !{!19, !20, !"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h14619ecd493bc464E: %self.0"}
!20 = distinct !{!20, !"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h14619ecd493bc464E"}
!21 = distinct !{!21, !20, !"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h14619ecd493bc464E: %f"}
!22 = distinct !{!22, !23, !"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h45ad7dc277f624ffE: %f"}
!23 = distinct !{!23, !"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h45ad7dc277f624ffE"}
!24 = !{!19}
!25 = !{!26, !19, !21, !22}
!26 = distinct !{!26, !27, !"_ZN4core3fmt8builders9DebugList7entries17h4bcc32e0a2a3b9d1E: %self"}
!27 = distinct !{!27, !"_ZN4core3fmt8builders9DebugList7entries17h4bcc32e0a2a3b9d1E"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN76_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hd2632802bbdf7040E: %self"}
!30 = distinct !{!30, !"_ZN76_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hd2632802bbdf7040E"}
!31 = !{i64 0, i64 -9223372036854775807}
!32 = !{!33}
!33 = distinct !{!33, !30, !"_ZN76_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..fmt..Debug$GT$3fmt17hd2632802bbdf7040E: %f"}
!34 = !{!29, !33}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h38579dcee183499eE: %self"}
!37 = distinct !{!37, !"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h38579dcee183499eE"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17he6609b16de39d762E: %self"}
!40 = distinct !{!40, !"_ZN4core3fmt3num49_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u8$GT$3fmt17he6609b16de39d762E"}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_ZN4core3fmt5Write9write_fmt17h7dff08919cf8aa34E: argument 0"}
!43 = distinct !{!43, !"_ZN4core3fmt5Write9write_fmt17h7dff08919cf8aa34E"}
!44 = distinct !{!44, !43, !"_ZN4core3fmt5Write9write_fmt17h7dff08919cf8aa34E: %args"}
!45 = !{!44}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h92eb5fee78e7a351E: %self"}
!48 = distinct !{!48, !"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h92eb5fee78e7a351E"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!51 = distinct !{!51, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!54 = distinct !{!54, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!57 = distinct !{!57, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!58 = !{!59, !56, !53, !50, !47}
!59 = distinct !{!59, !60, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!60 = distinct !{!60, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!61 = !{!62, !63}
!62 = distinct !{!62, !51, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!63 = distinct !{!63, !48, !"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h92eb5fee78e7a351E: %s.0"}
!64 = !{!65, !59, !56, !53, !50, !47}
!65 = distinct !{!65, !66, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!66 = distinct !{!66, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!67 = !{!56, !53, !50, !47}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E: %self"}
!70 = distinct !{!70, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E: argument 0"}
!73 = distinct !{!73, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E"}
!74 = !{!75, !69}
!75 = distinct !{!75, !76, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E: %self"}
!76 = distinct !{!76, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E: %self"}
!79 = distinct !{!79, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E: argument 0"}
!82 = distinct !{!82, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E"}
!83 = !{!84, !78}
!84 = distinct !{!84, !85, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E: %self"}
!85 = distinct !{!85, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hce31b92b62d36935E: argument 0"}
!88 = distinct !{!88, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hce31b92b62d36935E"}
!89 = !{!90}
!90 = distinct !{!90, !88, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hce31b92b62d36935E: %op"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!93 = distinct !{!93, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!94 = !{!95, !96}
!95 = distinct !{!95, !93, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!96 = distinct !{!96, !93, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!99 = distinct !{!99, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!102 = distinct !{!102, !99, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!105 = distinct !{!105, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!108 = distinct !{!108, !105, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!109 = !{!110, !112}
!110 = distinct !{!110, !111, !"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E: %slice.0"}
!111 = distinct !{!111, !"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E"}
!112 = distinct !{!112, !113, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE: %self.0"}
!113 = distinct !{!113, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZN71_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he44209330d9837beE: %self"}
!116 = distinct !{!116, !"_ZN71_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he44209330d9837beE"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!119 = distinct !{!119, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!122 = distinct !{!122, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!125 = distinct !{!125, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!126 = !{!124, !121, !118}
!127 = !{!128}
!128 = distinct !{!128, !119, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!131 = distinct !{!131, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!134 = distinct !{!134, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!137 = distinct !{!137, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!138 = !{!139}
!139 = distinct !{!139, !131, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!140 = !{!136, !133, !130}
!141 = !{!142, !136, !133, !130}
!142 = distinct !{!142, !143, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!143 = distinct !{!143, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!144 = !{!145, !142, !136, !133, !130}
!145 = distinct !{!145, !146, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!146 = distinct !{!146, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN71_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he44209330d9837beE: %self"}
!149 = distinct !{!149, !"_ZN71_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he44209330d9837beE"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN71_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he44209330d9837beE: %self"}
!152 = distinct !{!152, !"_ZN71_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17he44209330d9837beE"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!155 = distinct !{!155, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!158 = distinct !{!158, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!161 = distinct !{!161, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!162 = !{!160, !157, !154}
!163 = !{!164}
!164 = distinct !{!164, !155, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!165 = !{!166, !168, !170, !172}
!166 = distinct !{!166, !167, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!167 = distinct !{!167, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!168 = distinct !{!168, !169, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!169 = distinct !{!169, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!170 = distinct !{!170, !171, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!171 = distinct !{!171, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!172 = distinct !{!172, !173, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!173 = distinct !{!173, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!174 = !{!175}
!175 = distinct !{!175, !173, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!176 = !{!177, !166, !168, !170, !172}
!177 = distinct !{!177, !178, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!178 = distinct !{!178, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!179 = !{!172}
!180 = !{!170}
!181 = !{!168}
!182 = !{!168, !170, !172}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E: %self"}
!185 = distinct !{!185, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!188 = distinct !{!188, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!191 = distinct !{!191, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!192 = !{!190, !187, !184}
!193 = !{!194}
!194 = distinct !{!194, !185, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E: %iter.0"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN4core5slice6memchr6memchr17hee48610d96670c93E: %text.0"}
!197 = distinct !{!197, !"_ZN4core5slice6memchr6memchr17hee48610d96670c93E"}
!198 = !{!199, !201}
!199 = distinct !{!199, !200, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE: %self"}
!200 = distinct !{!200, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE"}
!201 = distinct !{!201, !200, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE: argument 1"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E: %self"}
!204 = distinct !{!204, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!207 = distinct !{!207, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!210 = distinct !{!210, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!211 = !{!209, !206, !203}
!212 = !{!213}
!213 = distinct !{!213, !204, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E: %iter.0"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN4core5slice6memchr6memchr17hee48610d96670c93E: %text.0"}
!216 = distinct !{!216, !"_ZN4core5slice6memchr6memchr17hee48610d96670c93E"}
!217 = !{!218, !220}
!218 = distinct !{!218, !219, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE: %self"}
!219 = distinct !{!219, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE"}
!220 = distinct !{!220, !219, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE: argument 1"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E: %self"}
!223 = distinct !{!223, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!226 = distinct !{!226, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!227 = !{!228}
!228 = distinct !{!228, !229, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!229 = distinct !{!229, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!230 = !{!228, !225, !222}
!231 = !{!232}
!232 = distinct !{!232, !223, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E: %iter.0"}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN4core5slice6memchr6memchr17hee48610d96670c93E: %text.0"}
!235 = distinct !{!235, !"_ZN4core5slice6memchr6memchr17hee48610d96670c93E"}
!236 = !{!237, !239}
!237 = distinct !{!237, !238, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE: %self"}
!238 = distinct !{!238, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE"}
!239 = distinct !{!239, !238, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE: argument 1"}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13reserve_exact17h146d1175c240a145E: %self"}
!242 = distinct !{!242, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13reserve_exact17h146d1175c240a145E"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13reserve_exact17h1b042836ed16cc6fE: %self"}
!245 = distinct !{!245, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13reserve_exact17h1b042836ed16cc6fE"}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E: %self"}
!248 = distinct !{!248, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E"}
!249 = !{!247, !244, !241}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$10grow_exact17hb79536ba6b50ef26E: %self"}
!252 = distinct !{!252, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$10grow_exact17hb79536ba6b50ef26E"}
!253 = !{!251, !247, !244, !241}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E: argument 0"}
!256 = distinct !{!256, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E"}
!257 = !{!258, !251, !247, !244, !241}
!258 = distinct !{!258, !259, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E: %self"}
!259 = distinct !{!259, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E"}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb48424a9c72561a2E: %self"}
!262 = distinct !{!262, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb48424a9c72561a2E"}
!263 = !{!264, !266, !268}
!264 = distinct !{!264, !265, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h63c3839edd00618fE: argument 0"}
!265 = distinct !{!265, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h63c3839edd00618fE"}
!266 = distinct !{!266, !267, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E: argument 0"}
!267 = distinct !{!267, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E"}
!268 = distinct !{!268, !269, !"_ZN5alloc3ffi5c_str7CString10into_bytes17h498c2678c58fd2f2E: %vec"}
!269 = distinct !{!269, !"_ZN5alloc3ffi5c_str7CString10into_bytes17h498c2678c58fd2f2E"}
!270 = !{!271, !272}
!271 = distinct !{!271, !267, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E: argument 1"}
!272 = distinct !{!272, !269, !"_ZN5alloc3ffi5c_str7CString10into_bytes17h498c2678c58fd2f2E: %self.0"}
!273 = !{!268}
!274 = !{!272}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN5alloc6string6String9from_utf817h0d5dad6f972faf0bE: argument 0"}
!277 = distinct !{!277, !"_ZN5alloc6string6String9from_utf817h0d5dad6f972faf0bE"}
!278 = !{!279}
!279 = distinct !{!279, !277, !"_ZN5alloc6string6String9from_utf817h0d5dad6f972faf0bE: %vec"}
!280 = !{!276, !279}
!281 = !{!282, !284}
!282 = distinct !{!282, !283, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2da533b601abc621E: argument 0"}
!283 = distinct !{!283, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2da533b601abc621E"}
!284 = distinct !{!284, !283, !"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h2da533b601abc621E: %self"}
!285 = !{!282}
!286 = !{!284}
!287 = !{!288, !290, !282, !284}
!288 = distinct !{!288, !289, !"_ZN5alloc3ffi5c_str7CString11into_string28_$u7b$$u7b$closure$u7d$$u7d$17he57a79d00f469692E: argument 0"}
!289 = distinct !{!289, !"_ZN5alloc3ffi5c_str7CString11into_string28_$u7b$$u7b$closure$u7d$$u7d$17he57a79d00f469692E"}
!290 = distinct !{!290, !289, !"_ZN5alloc3ffi5c_str7CString11into_string28_$u7b$$u7b$closure$u7d$$u7d$17he57a79d00f469692E: %e"}
!291 = !{!292, !294}
!292 = distinct !{!292, !293, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h63c3839edd00618fE: argument 0"}
!293 = distinct !{!293, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h63c3839edd00618fE"}
!294 = distinct !{!294, !295, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E: argument 0"}
!295 = distinct !{!295, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E"}
!296 = !{!297}
!297 = distinct !{!297, !295, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E: argument 1"}
!298 = !{!299, !301}
!299 = distinct !{!299, !300, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h63c3839edd00618fE: argument 0"}
!300 = distinct !{!300, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h63c3839edd00618fE"}
!301 = distinct !{!301, !302, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E: argument 0"}
!302 = distinct !{!302, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E"}
!303 = !{!304}
!304 = distinct !{!304, !302, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E: argument 1"}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN5alloc3ffi5c_str7CString28_from_vec_with_nul_unchecked17h729b2f25417339fbE: %v"}
!307 = distinct !{!307, !"_ZN5alloc3ffi5c_str7CString28_from_vec_with_nul_unchecked17h729b2f25417339fbE"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN4core5slice6memchr6memchr17hee48610d96670c93E: %text.0"}
!310 = distinct !{!310, !"_ZN4core5slice6memchr6memchr17hee48610d96670c93E"}
!311 = !{!312, !314}
!312 = distinct !{!312, !313, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE: %self"}
!313 = distinct !{!313, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE"}
!314 = distinct !{!314, !313, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8position17hb70e34dbd042644cE: argument 1"}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZN5alloc3ffi5c_str7CString28_from_vec_with_nul_unchecked17h729b2f25417339fbE: %v"}
!317 = distinct !{!317, !"_ZN5alloc3ffi5c_str7CString28_from_vec_with_nul_unchecked17h729b2f25417339fbE"}
!318 = !{!319, !321, !323}
!319 = distinct !{!319, !320, !"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E: %slice.0"}
!320 = distinct !{!320, !"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E"}
!321 = distinct !{!321, !322, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE: %self.0"}
!322 = distinct !{!322, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE"}
!323 = distinct !{!323, !324, !"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE: %self.0"}
!324 = distinct !{!324, !"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE"}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E: %slice.0"}
!327 = distinct !{!327, !"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!330 = distinct !{!330, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!331 = !{!332, !333}
!332 = distinct !{!332, !330, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!333 = distinct !{!333, !330, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!334 = !{!335}
!335 = distinct !{!335, !336, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!336 = distinct !{!336, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!337 = !{!338, !339}
!338 = distinct !{!338, !336, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!339 = distinct !{!339, !336, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!342 = distinct !{!342, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!343 = !{!344, !345}
!344 = distinct !{!344, !342, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!345 = distinct !{!345, !342, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_ZN4core3mem7replace17ha88382b089bb4230E: %dest"}
!348 = distinct !{!348, !"_ZN4core3mem7replace17ha88382b089bb4230E"}
!349 = !{!350, !352}
!350 = distinct !{!350, !351, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h63c3839edd00618fE: argument 0"}
!351 = distinct !{!351, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17from_raw_parts_in17h63c3839edd00618fE"}
!352 = distinct !{!352, !353, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E: argument 0"}
!353 = distinct !{!353, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E"}
!354 = !{!355}
!355 = distinct !{!355, !353, !"_ZN5alloc5slice4hack8into_vec17h2be40cd695bff9f3E: argument 1"}
!356 = !{!357}
!357 = distinct !{!357, !358, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$10clone_into17he88688132ca4b1dcE: %target"}
!358 = distinct !{!358, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$10clone_into17he88688132ca4b1dcE"}
!359 = !{!360, !357}
!360 = distinct !{!360, !361, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hfd9e43ee90fb90a8E: %self"}
!361 = distinct !{!361, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hfd9e43ee90fb90a8E"}
!362 = !{!363}
!363 = distinct !{!363, !358, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$10clone_into17he88688132ca4b1dcE: %self.0"}
!364 = !{!365, !367, !368, !370, !371, !373}
!365 = distinct !{!365, !366, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0ee55654eb585941E: %self.0"}
!366 = distinct !{!366, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0ee55654eb585941E"}
!367 = distinct !{!367, !366, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0ee55654eb585941E: %src.0"}
!368 = distinct !{!368, !369, !"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1a26335811d2bf93E: %self.0"}
!369 = distinct !{!369, !"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1a26335811d2bf93E"}
!370 = distinct !{!370, !369, !"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1a26335811d2bf93E: %src.0"}
!371 = distinct !{!371, !372, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E: %self.0"}
!372 = distinct !{!372, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E"}
!373 = distinct !{!373, !372, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E: %src.0"}
!374 = !{!375}
!375 = distinct !{!375, !376, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!376 = distinct !{!376, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!377 = !{!378}
!378 = distinct !{!378, !379, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!379 = distinct !{!379, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!382 = distinct !{!382, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!383 = !{!381, !378, !375, !357}
!384 = !{!385, !363}
!385 = distinct !{!385, !376, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!386 = !{!387, !389, !391}
!387 = distinct !{!387, !388, !"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E: %slice.0"}
!388 = distinct !{!388, !"_ZN99_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h90e0c1832b3ceab0E"}
!389 = distinct !{!389, !390, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE: %self.0"}
!390 = distinct !{!390, !"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd06b92f0f939e6beE"}
!391 = distinct !{!391, !392, !"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE: %self.0"}
!392 = distinct !{!392, !"_ZN5alloc3ffi5c_str75_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$core..ffi..c_str..CStr$GT$8to_owned17h3390ceee2d7bf82eE"}
!393 = distinct !{!393, !394}
!394 = !{!"llvm.loop.isvectorized", i32 1}
!395 = distinct !{!395, !396, !394}
!396 = !{!"llvm.loop.unroll.runtime.disable"}
!397 = !{!398, !400}
!398 = distinct !{!398, !399, !"_ZN4core3fmt5Write9write_fmt17h7dff08919cf8aa34E: argument 0"}
!399 = distinct !{!399, !"_ZN4core3fmt5Write9write_fmt17h7dff08919cf8aa34E"}
!400 = distinct !{!400, !399, !"_ZN4core3fmt5Write9write_fmt17h7dff08919cf8aa34E: %args"}
!401 = !{!402, !404}
!402 = distinct !{!402, !403, !"_ZN4core3mem7replace17hcb0487a7a2cc0070E: %dest"}
!403 = distinct !{!403, !"_ZN4core3mem7replace17hcb0487a7a2cc0070E"}
!404 = distinct !{!404, !403, !"_ZN4core3mem7replace17hcb0487a7a2cc0070E: %src"}
!405 = !{!406}
!406 = distinct !{!406, !403, !"_ZN4core3mem7replace17hcb0487a7a2cc0070E: %result"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$10clone_into17he88688132ca4b1dcE: %target"}
!409 = distinct !{!409, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$10clone_into17he88688132ca4b1dcE"}
!410 = !{!411, !408}
!411 = distinct !{!411, !412, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hfd9e43ee90fb90a8E: %self"}
!412 = distinct !{!412, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8truncate17hfd9e43ee90fb90a8E"}
!413 = !{!414}
!414 = distinct !{!414, !409, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$10clone_into17he88688132ca4b1dcE: %self.0"}
!415 = !{!416, !418, !419, !421, !422, !424}
!416 = distinct !{!416, !417, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0ee55654eb585941E: %self.0"}
!417 = distinct !{!417, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0ee55654eb585941E"}
!418 = distinct !{!418, !417, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h0ee55654eb585941E: %src.0"}
!419 = distinct !{!419, !420, !"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1a26335811d2bf93E: %self.0"}
!420 = distinct !{!420, !"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1a26335811d2bf93E"}
!421 = distinct !{!421, !420, !"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h1a26335811d2bf93E: %src.0"}
!422 = distinct !{!422, !423, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E: %self.0"}
!423 = distinct !{!423, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E"}
!424 = distinct !{!424, !423, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16clone_from_slice17h1ad9e50028e60ec1E: %src.0"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!427 = distinct !{!427, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!430 = distinct !{!430, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!431 = !{!432}
!432 = distinct !{!432, !433, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!433 = distinct !{!433, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!434 = !{!435, !437, !432, !429, !426, !408}
!435 = distinct !{!435, !436, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!436 = distinct !{!436, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!437 = distinct !{!437, !438, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!438 = distinct !{!438, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!439 = !{!440, !414}
!440 = distinct !{!440, !427, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!441 = !{!432, !429, !426, !408}
!442 = !{!443}
!443 = distinct !{!443, !444, !"_ZN5alloc3str19convert_while_ascii17h80cb0c48bf1a4e14E: %b.0"}
!444 = distinct !{!444, !"_ZN5alloc3str19convert_while_ascii17h80cb0c48bf1a4e14E"}
!445 = !{!446, !443}
!446 = distinct !{!446, !444, !"_ZN5alloc3str19convert_while_ascii17h80cb0c48bf1a4e14E: %out"}
!447 = !{!446}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h9c9c1dd702d00828E: %self"}
!450 = distinct !{!450, !"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_lowercase17h9c9c1dd702d00828E"}
!451 = !{!452, !454}
!452 = distinct !{!452, !453, !"_ZN4core3str11validations15next_code_point17hd17a687ed971e01cE: %bytes"}
!453 = distinct !{!453, !"_ZN4core3str11validations15next_code_point17hd17a687ed971e01cE"}
!454 = distinct !{!454, !455, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c70dcdb5178bd1aE: %self"}
!455 = distinct !{!455, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c70dcdb5178bd1aE"}
!456 = !{!457}
!457 = distinct !{!457, !458, !"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase19map_uppercase_sigma17he66f40ad782a726aE: %from.0"}
!458 = distinct !{!458, !"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase19map_uppercase_sigma17he66f40ad782a726aE"}
!459 = !{!460}
!460 = distinct !{!460, !458, !"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase19map_uppercase_sigma17he66f40ad782a726aE: %to"}
!461 = !{!462, !464, !466, !457}
!462 = distinct !{!462, !463, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E: %self.0"}
!463 = distinct !{!463, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E"}
!464 = distinct !{!464, !465, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h1e4bf9bc1217a06eE: %slice.0"}
!465 = distinct !{!465, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$3get17h1e4bf9bc1217a06eE"}
!466 = distinct !{!466, !467, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h216cd2f174a41c65E: %slice.0"}
!467 = distinct !{!467, !"_ZN4core3str6traits110_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index17h216cd2f174a41c65E"}
!468 = !{!469, !471, !473, !475, !476, !478, !479, !481, !460}
!469 = distinct !{!469, !470, !"_ZN4core3str11validations23next_code_point_reverse17h6ff013ae99e80a87E: %bytes"}
!470 = distinct !{!470, !"_ZN4core3str11validations23next_code_point_reverse17h6ff013ae99e80a87E"}
!471 = distinct !{!471, !472, !"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E: %self"}
!472 = distinct !{!472, !"_ZN96_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h9810a795200818d7E"}
!473 = distinct !{!473, !474, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h7f323f0a53a2162bE: %self"}
!474 = distinct !{!474, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h7f323f0a53a2162bE"}
!475 = distinct !{!475, !474, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17h7f323f0a53a2162bE: argument 1"}
!476 = distinct !{!476, !477, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind17h2c3832d1e992bcb2E: %self"}
!477 = distinct !{!477, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind17h2c3832d1e992bcb2E"}
!478 = distinct !{!478, !477, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind17h2c3832d1e992bcb2E: %predicate.0"}
!479 = distinct !{!479, !480, !"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h14fbb20e67b10887E: %self"}
!480 = distinct !{!480, !"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h14fbb20e67b10887E"}
!481 = distinct !{!481, !480, !"_ZN98_$LT$core..iter..adapters..rev..Rev$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h14fbb20e67b10887E: %predicate.0"}
!482 = !{!483, !485, !487, !457}
!483 = distinct !{!483, !484, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E: %self.0"}
!484 = distinct !{!484, !"_ZN4core3str21_$LT$impl$u20$str$GT$16is_char_boundary17h858eafd657dfda73E"}
!485 = distinct !{!485, !486, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h8d077cb4b72607e4E: %slice.0"}
!486 = distinct !{!486, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h8d077cb4b72607e4E"}
!487 = distinct !{!487, !488, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E: %slice.0"}
!488 = distinct !{!488, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index17h9d8b3ac339184fc0E"}
!489 = !{!490, !492, !494, !496, !497, !499, !460}
!490 = distinct !{!490, !491, !"_ZN4core3str11validations15next_code_point17hd17a687ed971e01cE: %bytes"}
!491 = distinct !{!491, !"_ZN4core3str11validations15next_code_point17hd17a687ed971e01cE"}
!492 = distinct !{!492, !493, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0342b5a873cee8ecE: %self"}
!493 = distinct !{!493, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0342b5a873cee8ecE"}
!494 = distinct !{!494, !495, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h355c31b5a078f9fdE: %self"}
!495 = distinct !{!495, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h355c31b5a078f9fdE"}
!496 = distinct !{!496, !495, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h355c31b5a078f9fdE: argument 1"}
!497 = distinct !{!497, !498, !"_ZN4core4iter6traits8iterator8Iterator4find17he196e8d221f23a48E: %self"}
!498 = distinct !{!498, !"_ZN4core4iter6traits8iterator8Iterator4find17he196e8d221f23a48E"}
!499 = distinct !{!499, !498, !"_ZN4core4iter6traits8iterator8Iterator4find17he196e8d221f23a48E: %predicate.0"}
!500 = !{!501, !503, !505, !507, !460}
!501 = distinct !{!501, !502, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!502 = distinct !{!502, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!503 = distinct !{!503, !504, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!504 = distinct !{!504, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!505 = distinct !{!505, !506, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!506 = distinct !{!506, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!507 = distinct !{!507, !508, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!508 = distinct !{!508, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!509 = !{!510, !457}
!510 = distinct !{!510, !508, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!511 = !{!512, !501, !503, !505, !507, !460}
!512 = distinct !{!512, !513, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!513 = distinct !{!513, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!514 = !{!503, !505, !507, !460}
!515 = !{i32 0, i32 1114112}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZN5alloc3str19convert_while_ascii17h80cb0c48bf1a4e14E: %b.0"}
!518 = distinct !{!518, !"_ZN5alloc3str19convert_while_ascii17h80cb0c48bf1a4e14E"}
!519 = !{!520, !517}
!520 = distinct !{!520, !518, !"_ZN5alloc3str19convert_while_ascii17h80cb0c48bf1a4e14E: %out"}
!521 = !{!520}
!522 = !{!523}
!523 = distinct !{!523, !524, !"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_uppercase17hcf09655c8d5e99d2E: %self"}
!524 = distinct !{!524, !"_ZN4core3num20_$LT$impl$u20$u8$GT$18to_ascii_uppercase17hcf09655c8d5e99d2E"}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZN4core3str11validations15next_code_point17hd17a687ed971e01cE: %bytes"}
!527 = distinct !{!527, !"_ZN4core3str11validations15next_code_point17hd17a687ed971e01cE"}
!528 = !{!529}
!529 = distinct !{!529, !530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6repeat17hce21bb38771a6a65E: argument 0"}
!530 = distinct !{!530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6repeat17hce21bb38771a6a65E"}
!531 = !{!532}
!532 = distinct !{!532, !530, !"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6repeat17hce21bb38771a6a65E: %self.0"}
!533 = !{!529, !532}
!534 = !{!535}
!535 = distinct !{!535, !536, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E: %self"}
!536 = distinct !{!536, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E"}
!537 = !{!538}
!538 = distinct !{!538, !539, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!539 = distinct !{!539, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!542 = distinct !{!542, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!543 = !{!541, !538, !535}
!544 = !{!545, !529, !532}
!545 = distinct !{!545, !536, !"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$RF$T$GT$$GT$6extend17hfb2862cb73693dd8E: %iter.0"}
!546 = !{!541, !538, !535, !529}
!547 = !{!548}
!548 = distinct !{!548, !549, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!549 = distinct !{!549, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!550 = !{!551}
!551 = distinct !{!551, !552, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!552 = distinct !{!552, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!553 = !{!554}
!554 = distinct !{!554, !555, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!555 = distinct !{!555, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!556 = !{!554, !551, !548}
!557 = !{!558}
!558 = distinct !{!558, !549, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!559 = !{!560}
!560 = distinct !{!560, !561, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!561 = distinct !{!561, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!562 = !{!563}
!563 = distinct !{!563, !564, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!564 = distinct !{!564, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!565 = !{!566}
!566 = distinct !{!566, !567, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!567 = distinct !{!567, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!568 = !{!569, !571, !566, !563, !560}
!569 = distinct !{!569, !570, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!570 = distinct !{!570, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!571 = distinct !{!571, !572, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!572 = distinct !{!572, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!573 = !{!574}
!574 = distinct !{!574, !561, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!575 = !{!566, !563, !560}
!576 = !{!577}
!577 = distinct !{!577, !578, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!578 = distinct !{!578, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!579 = !{!580}
!580 = distinct !{!580, !581, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!581 = distinct !{!581, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!584 = distinct !{!584, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!585 = !{!586, !588, !583, !580, !577}
!586 = distinct !{!586, !587, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!587 = distinct !{!587, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!588 = distinct !{!588, !589, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!589 = distinct !{!589, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!590 = !{!591}
!591 = distinct !{!591, !578, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!592 = !{!583, !580, !577}
!593 = !{!594}
!594 = distinct !{!594, !595, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!595 = distinct !{!595, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!596 = !{!597}
!597 = distinct !{!597, !598, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!598 = distinct !{!598, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!599 = !{!600}
!600 = distinct !{!600, !601, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!601 = distinct !{!601, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!602 = !{!603, !605, !600, !597, !594}
!603 = distinct !{!603, !604, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!604 = distinct !{!604, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!605 = distinct !{!605, !606, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!606 = distinct !{!606, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!607 = !{!608}
!608 = distinct !{!608, !595, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!609 = !{!600, !597, !594}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h3904e1cbe569fd9aE: argument 0"}
!612 = distinct !{!612, !"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h3904e1cbe569fd9aE"}
!613 = !{!614, !616}
!614 = distinct !{!614, !615, !"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he189c387fbaeedfaE: %self"}
!615 = distinct !{!615, !"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he189c387fbaeedfaE"}
!616 = distinct !{!616, !617, !"_ZN99_$LT$core..char..decode..DecodeUtf16$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a8241e802e7332E: %self"}
!617 = distinct !{!617, !"_ZN99_$LT$core..char..decode..DecodeUtf16$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h88a8241e802e7332E"}
!618 = !{!619}
!619 = distinct !{!619, !620, !"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h3904e1cbe569fd9aE: argument 0"}
!620 = distinct !{!620, !"_ZN4core6option19Option$LT$$RF$T$GT$6cloned17h3904e1cbe569fd9aE"}
!621 = !{!622, !616}
!622 = distinct !{!622, !623, !"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he189c387fbaeedfaE: %self"}
!623 = distinct !{!623, !"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he189c387fbaeedfaE"}
!624 = !{!625}
!625 = distinct !{!625, !626, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14into_raw_parts17h97d13a36338c7af6E: argument 0"}
!626 = distinct !{!626, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14into_raw_parts17h97d13a36338c7af6E"}
!627 = !{!628}
!628 = distinct !{!628, !626, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14into_raw_parts17h97d13a36338c7af6E: %self"}
!629 = !{!630}
!630 = distinct !{!630, !631, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hded43feb3d8dd25aE: %self"}
!631 = distinct !{!631, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hded43feb3d8dd25aE"}
!632 = !{!633}
!633 = distinct !{!633, !634, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11try_reserve17hed9a0daa4baafd94E: %self"}
!634 = distinct !{!634, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11try_reserve17hed9a0daa4baafd94E"}
!635 = !{!633, !630}
!636 = !{!637}
!637 = distinct !{!637, !638, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E: %self"}
!638 = distinct !{!638, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17hfcf80b7e25b54bb9E"}
!639 = !{!637, !633, !630}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E: argument 0"}
!642 = distinct !{!642, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E"}
!643 = !{!644, !637, !633, !630}
!644 = distinct !{!644, !645, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E: %self"}
!645 = distinct !{!645, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E"}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17try_reserve_exact17h06a3f9777a78c76eE: %self"}
!648 = distinct !{!648, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17try_reserve_exact17h06a3f9777a78c76eE"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E: %self"}
!651 = distinct !{!651, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$17try_reserve_exact17hdac9a4198b472b63E"}
!652 = !{!650, !647}
!653 = !{!654}
!654 = distinct !{!654, !655, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$10grow_exact17hb79536ba6b50ef26E: %self"}
!655 = distinct !{!655, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$10grow_exact17hb79536ba6b50ef26E"}
!656 = !{!654, !650, !647}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E: argument 0"}
!659 = distinct !{!659, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he2946a8fadfe1c08E"}
!660 = !{!661, !654, !650, !647}
!661 = distinct !{!661, !662, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E: %self"}
!662 = distinct !{!662, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E"}
!663 = !{!664}
!664 = distinct !{!664, !665, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb48424a9c72561a2E: %self"}
!665 = distinct !{!665, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17hb48424a9c72561a2E"}
!666 = !{!667}
!667 = distinct !{!667, !668, !"_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E: %dst.0"}
!668 = distinct !{!668, !"_ZN4core4char7methods15encode_utf8_raw17heb10308bcee6f675E"}
!669 = !{!670}
!670 = distinct !{!670, !671, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!671 = distinct !{!671, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!672 = !{!673}
!673 = distinct !{!673, !674, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!674 = distinct !{!674, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!675 = !{!676}
!676 = distinct !{!676, !677, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!677 = distinct !{!677, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!678 = !{!679, !676, !673, !670}
!679 = distinct !{!679, !680, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!680 = distinct !{!680, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!681 = !{!682}
!682 = distinct !{!682, !671, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!683 = !{!684, !679, !676, !673, !670}
!684 = distinct !{!684, !685, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!685 = distinct !{!685, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!686 = !{!676, !673, !670}
!687 = !{!688, !690}
!688 = distinct !{!688, !689, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!689 = distinct !{!689, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!690 = distinct !{!690, !691, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!691 = distinct !{!691, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!692 = !{!693, !695, !696}
!693 = distinct !{!693, !694, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE: %v"}
!694 = distinct !{!694, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE"}
!695 = distinct !{!695, !694, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE: %s.0"}
!696 = distinct !{!696, !697, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hff2525b0404b995eE: argument 0"}
!697 = distinct !{!697, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hff2525b0404b995eE"}
!698 = !{!693, !696}
!699 = !{!700}
!700 = distinct !{!700, !701, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3c00a8468c411df8E: %self"}
!701 = distinct !{!701, !"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17h3c00a8468c411df8E"}
!702 = !{!703}
!703 = distinct !{!703, !704, !"_ZN74_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecCloneFrom$GT$10clone_from17h3eabe621ee691dd0E: %this"}
!704 = distinct !{!704, !"_ZN74_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..SpecCloneFrom$GT$10clone_from17h3eabe621ee691dd0E"}
!705 = !{!703, !700}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %self"}
!708 = distinct !{!708, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E"}
!709 = !{!710}
!710 = distinct !{!710, !711, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E: %self"}
!711 = distinct !{!711, !"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc6c45b22c7b6e161E"}
!712 = !{!713}
!713 = distinct !{!713, !714, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E: %self"}
!714 = distinct !{!714, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$15append_elements17h2549f85c03a6bb42E"}
!715 = !{!716, !718, !713, !710, !707, !703, !700}
!716 = distinct !{!716, !717, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE: %self"}
!717 = distinct !{!717, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h9b7669f1bffa39ffE"}
!718 = distinct !{!718, !719, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE: %self"}
!719 = distinct !{!719, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h5fc43615950da4daE"}
!720 = !{!721}
!721 = distinct !{!721, !708, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17he6425976c75699c1E: %other.0"}
!722 = !{!713, !710, !707, !703, !700}
!723 = !{!724}
!724 = distinct !{!724, !725, !"_ZN100_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$core..ops..range..RangeFull$GT$$GT$5index17hf68eed866406c683E: %self"}
!725 = distinct !{!725, !"_ZN100_$LT$alloc..string..String$u20$as$u20$core..ops..index..Index$LT$core..ops..range..RangeFull$GT$$GT$5index17hf68eed866406c683E"}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h737938fa422ecfbcE: argument 0"}
!728 = distinct !{!728, !"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h737938fa422ecfbcE"}
!729 = !{!730}
!730 = distinct !{!730, !728, !"_ZN5alloc6borrow12Cow$LT$B$GT$10into_owned17h737938fa422ecfbcE: %self"}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he00926a8a291e06dE: argument 0"}
!733 = distinct !{!733, !"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he00926a8a291e06dE"}
!734 = !{!735, !737, !738, !740, !732, !741, !727, !730}
!735 = distinct !{!735, !736, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE: %v"}
!736 = distinct !{!736, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE"}
!737 = distinct !{!737, !736, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE: %s.0"}
!738 = distinct !{!738, !739, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h335256d18c2a9017E: argument 0"}
!739 = distinct !{!739, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h335256d18c2a9017E"}
!740 = distinct !{!740, !739, !"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h335256d18c2a9017E: %self.0"}
!741 = distinct !{!741, !733, !"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17he00926a8a291e06dE: %self.0"}
!742 = !{!735, !738, !732, !727, !730}
!743 = !{!732, !727}
!744 = !{!741, !730}
!745 = !{!727, !730}
!746 = !{!747}
!747 = distinct !{!747, !748, !"_ZN5alloc6string5Drain6as_str17hfed4b648b6034284E: %self"}
!748 = distinct !{!748, !"_ZN5alloc6string5Drain6as_str17hfed4b648b6034284E"}
!749 = !{!750}
!750 = distinct !{!750, !751, !"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb4fbf7a5d6517d5E: %self"}
!751 = distinct !{!751, !"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdb4fbf7a5d6517d5E"}
!752 = !{!753}
!753 = distinct !{!753, !754, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h995e65702d6de79eE: %self"}
!754 = distinct !{!754, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h995e65702d6de79eE"}
!755 = !{!756}
!756 = distinct !{!756, !754, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h995e65702d6de79eE: argument 0"}
!757 = !{!758, !750}
!758 = distinct !{!758, !759, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e1985d1e0e63503E: %self"}
!759 = distinct !{!759, !"_ZN150_$LT$$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1e1985d1e0e63503E"}
!760 = !{!761}
!761 = distinct !{!761, !762, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7d5d9a51fb083f29E: argument 0"}
!762 = distinct !{!762, !"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h7d5d9a51fb083f29E"}
!763 = !{!764}
!764 = distinct !{!764, !765, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h3275356df5a8bca7E: %self"}
!765 = distinct !{!765, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$13shrink_to_fit17h3275356df5a8bca7E"}
!766 = !{!767}
!767 = distinct !{!767, !768, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h9b92ebe3fb547298E: %self"}
!768 = distinct !{!768, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13shrink_to_fit17h9b92ebe3fb547298E"}
!769 = !{!770}
!770 = distinct !{!770, !771, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h98131712a22490c1E: %self"}
!771 = distinct !{!771, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6shrink17h98131712a22490c1E"}
!772 = !{!770, !767, !764}
!773 = !{!774, !770, !767, !764}
!774 = distinct !{!774, !775, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E: %self"}
!775 = distinct !{!775, !"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$15set_ptr_and_cap17hf91640828e0c1a22E"}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!778 = distinct !{!778, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!779 = !{!780, !781}
!780 = distinct !{!780, !778, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!781 = distinct !{!781, !778, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!784 = distinct !{!784, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!785 = !{!786, !787}
!786 = distinct !{!786, !784, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!787 = distinct !{!787, !784, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!788 = !{!789}
!789 = distinct !{!789, !790, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!790 = distinct !{!790, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!791 = !{!792, !793}
!792 = distinct !{!792, !790, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!793 = distinct !{!793, !790, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: argument 0"}
!796 = distinct !{!796, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E"}
!797 = !{!798, !799}
!798 = distinct !{!798, !796, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %pieces.0"}
!799 = distinct !{!799, !796, !"_ZN4core3fmt9Arguments6new_v117hd2e6fecaf00ce252E: %args.0"}
!800 = !{!801}
!801 = distinct !{!801, !802, !"_ZN87_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17hec29d51af560df78E: argument 0"}
!802 = distinct !{!802, !"_ZN87_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17hec29d51af560df78E"}
!803 = !{!804}
!804 = distinct !{!804, !805, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE: %v"}
!805 = distinct !{!805, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE"}
!806 = !{!804, !807, !801, !808}
!807 = distinct !{!807, !805, !"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h2dbdd1d6516b2c3bE: %s.0"}
!808 = distinct !{!808, !802, !"_ZN87_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17hec29d51af560df78E: %s.0"}
!809 = !{!804, !801}
!810 = !{!807, !808}
