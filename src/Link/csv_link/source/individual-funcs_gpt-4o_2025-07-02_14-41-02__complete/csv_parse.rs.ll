; ModuleID = '/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_parse.rs.bc'
source_filename = "csv_parse.94a456b3-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]" = type { i64*, i64*, { [0 x i8]*, i64 }* }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"[closure@std::panicking::begin_panic<&str>::{closure#0}]" = type { { [0 x i8]*, i64 }, %"core::panic::location::Location"* }
%"alloc::alloc::Global" = type {}
%"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>" = type { [0 x i8] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%CsvParser = type <{ i32, i8, i64, { i8*, i64 }, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }>
%"core::ptr::metadata::PtrComponents<CsvParser>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<CsvParser>" = type { [1 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [2 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8* }> <{ i8* bitcast (void ({ i8*, i64 }*)* @"_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17hf81a525a37b59573E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast ({ {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h5c43d1893df3c623E" to i8*), i8* bitcast ({ {}*, [3 x i64]* } ({ i8*, i64 }*)* @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h865a31701283126cE" to i8*) }>, align 8
@alloc118 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/core/src/ptr/mod.rs" }>, align 1
@alloc119 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc118, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\\\04\00\00\0D\00\00\00" }>, align 8
@alloc7 = private unnamed_addr constant <{}> zeroinitializer, align 1
@alloc120 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/a55dd71d5fb0ec5a6a3a9e8c27b2127ba491ce52/library/alloc/src/alloc.rs" }>, align 1
@alloc121 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc120, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\B2\00\00\00\1B\00\00\00" }>, align 8
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8* }> <{ i8* bitcast (void ({ [0 x i8]*, i64 }*)* @"_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h4abca83092d6153bE" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i64 ({ [0 x i8]*, i64 }*)* @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h41445501e3d8f241E" to i8*) }>, align 8
@alloc125 = private unnamed_addr constant <{ [24 x i8] }> <{ [24 x i8] c"received null csv_parser" }>, align 1
@alloc226 = private unnamed_addr constant <{ [139 x i8] }> <{ [139 x i8] c"/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_parse.rs" }>, align 1
@alloc127 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\1D\00\00\00\05\00\00\00" }>, align 8
@alloc129 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\008\00\00\003\00\00\00" }>, align 8
@str.2 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc131 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00B\00\00\00\11\00\00\00" }>, align 8
@alloc133 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00C\00\00\00\09\00\00\00" }>, align 8
@str.3 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc135 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\ED\00\00\00\22\00\00\00" }>, align 8
@alloc137 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\ED\00\00\00\15\00\00\00" }>, align 8
@alloc139 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\EF\00\00\00\19\00\00\00" }>, align 8
@alloc141 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\F3\00\00\00\1D\00\00\00" }>, align 8
@alloc143 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\FB\00\00\00&\00\00\00" }>, align 8
@alloc145 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\04\01\00\00\22\00\00\00" }>, align 8
@alloc147 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\04\01\00\00\15\00\00\00" }>, align 8
@alloc149 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\06\01\00\00\19\00\00\00" }>, align 8
@alloc151 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\0A\01\00\00\1D\00\00\00" }>, align 8
@alloc153 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\12\01\00\00&\00\00\00" }>, align 8
@alloc155 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\1F\01\00\00\19\00\00\00" }>, align 8
@alloc157 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00!\01\00\00\15\00\00\00" }>, align 8
@alloc159 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\22\01\00\00\15\00\00\00" }>, align 8
@alloc161 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00+\01\00\00$\00\00\00" }>, align 8
@alloc163 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00/\01\00\00\1D\00\00\00" }>, align 8
@alloc165 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\001\01\00\00\19\00\00\00" }>, align 8
@alloc167 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00<\01\00\00 \00\00\00" }>, align 8
@alloc169 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00A\01\00\00\19\00\00\00" }>, align 8
@alloc171 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00C\01\00\00\15\00\00\00" }>, align 8
@alloc173 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\90\00\00\00\1D\00\00\00" }>, align 8
@alloc175 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\92\00\00\00\19\00\00\00" }>, align 8
@alloc177 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\9B\00\00\00$\00\00\00" }>, align 8
@alloc179 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\9E\00\00\00\1D\00\00\00" }>, align 8
@alloc181 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\A0\00\00\00\19\00\00\00" }>, align 8
@alloc183 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\A6\00\00\00\1D\00\00\00" }>, align 8
@alloc185 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\A8\00\00\00\19\00\00\00" }>, align 8
@alloc187 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\AB\00\00\00\1D\00\00\00" }>, align 8
@alloc189 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\AF\00\00\00!\00\00\00" }>, align 8
@alloc191 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\B7\00\00\00*\00\00\00" }>, align 8
@alloc193 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\C3\00\00\00\1D\00\00\00" }>, align 8
@alloc195 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\C7\00\00\00!\00\00\00" }>, align 8
@alloc197 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\CF\00\00\00*\00\00\00" }>, align 8
@alloc199 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\D9\00\00\00\1D\00\00\00" }>, align 8
@alloc201 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\DB\00\00\00\19\00\00\00" }>, align 8
@alloc203 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\DF\00\00\00\19\00\00\00" }>, align 8
@alloc205 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\E1\00\00\00\15\00\00\00" }>, align 8
@alloc207 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\E2\00\00\00\15\00\00\00" }>, align 8
@alloc209 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\E5\00\00\00\19\00\00\00" }>, align 8
@alloc211 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\E7\00\00\00\15\00\00\00" }>, align 8
@alloc213 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00L\00\00\00\1D\00\00\00" }>, align 8
@alloc215 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00P\00\00\00!\00\00\00" }>, align 8
@alloc217 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00X\00\00\00*\00\00\00" }>, align 8
@alloc219 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00k\00\00\00\19\00\00\00" }>, align 8
@alloc221 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00o\00\00\00\1D\00\00\00" }>, align 8
@alloc223 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00w\00\00\00&\00\00\00" }>, align 8
@alloc225 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\87\00\00\00\19\00\00\00" }>, align 8
@alloc227 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [139 x i8] }>, <{ [139 x i8] }>* @alloc226, i32 0, i32 0, i32 0), [16 x i8] c"\8B\00\00\00\00\00\00\00\89\00\00\00\15\00\00\00" }>, align 8

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h06b0f32f351fb381E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %runtime = alloca %"[closure@<core::ops::range::Range<usize> as core::slice::index::SliceIndex<[u8]>>::get_unchecked::{closure#0}]", align 8
  %_5 = call i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h150039af27f5d5f7E"([0 x i8]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8, i8* %_5, i64 %self.0
  store i8* %1, i8** %0, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %_8 = sub i64 %self.1, %self.0
  %3 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h0d600abe7c06c287E(i8* %2, i64 %_8)
  %4 = extractvalue { [0 x i8]*, i64 } %3, 0
  %5 = extractvalue { [0 x i8]*, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %7 = insertvalue { [0 x i8]*, i64 } %6, i64 %5, 1
  ret { [0 x i8]*, i64 } %7
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hd6441c3409f86f27E"(i64 %self.0, i64 %self.1, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = icmp ugt i64 %self.0, %self.1
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = icmp ugt i64 %self.1, %slice.1
  br i1 %_9, label %bb3, label %bb4

bb1:                                              ; preds = %start
  call void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0) #14
  unreachable

bb4:                                              ; preds = %bb2
  %1 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h06b0f32f351fb381E"(i64 %self.0, i64 %self.1, [0 x i8]* %slice.0, i64 %slice.1)
  %_17.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_17.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb5

bb3:                                              ; preds = %bb2
  call void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64 %self.1, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #14
  unreachable

bb5:                                              ; preds = %bb4
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_17.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_17.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h1590c6e2ef3c162fE"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %1 = bitcast { i64, i64 }* %_3 to i64*
  store i64 0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %self, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = call { [0 x i8]*, i64 } @"_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hd6441c3409f86f27E"(i64 %4, i64 %6, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0)
  %8 = extractvalue { [0 x i8]*, i64 } %7, 0
  %9 = extractvalue { [0 x i8]*, i64 } %7, 1
  br label %bb1

bb1:                                              ; preds = %start
  %10 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %8, 0
  %11 = insertvalue { [0 x i8]*, i64 } %10, i64 %9, 1
  ret { [0 x i8]*, i64 } %11
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5a1b738f8c7bfd0bE"(i8* %unique) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hceaff1883cb780b9E"(i8* %unique)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2964191a9e435308E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h8d8a5c275285f92fE"(i8* %pointer) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %pointer, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hebbfd91027de1f7eE"(i8* %pointer.0, i64* align 8 %pointer.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  store i8* %pointer.0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  store i64* %pointer.1, i64** %2, align 8
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8, !nonnull !1, !noundef !1
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = insertvalue { i8*, i64* } undef, i8* %4, 0
  %8 = insertvalue { i8*, i64* } %7, i64* %6, 1
  ret { i8*, i64* } %8
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hdc1f9cae951484adE"(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca { i8*, i64 }, align 8
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h7950fa8698cc6cadE"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i64 }* %1 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"*
  %3 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"* %2 to %"core::alloc::AllocError"*
  %4 = bitcast { i8*, i64 }* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = bitcast { i8*, i64 }* %1 to {}**
  store {}* null, {}** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i64 } %10, i64 %9, 1
  ret { i8*, i64 } %11
}

; Function Attrs: uwtable
define i64 @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h41445501e3d8f241E"({ [0 x i8]*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = call i64 @_ZN4core3any6TypeId2of17hc99e799aa9d654c2E()
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; Function Attrs: noinline noreturn uwtable
define void @_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h6a97f9c54b96cbcdE(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %f) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_2 = alloca %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", align 8
  %1 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_2 to i8*
  %2 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %f to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @"_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17h3280dea5f50ffe9aE"(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_2) #14
  br label %bb1

bb1:                                              ; preds = %start
  invoke void @_ZN4core4hint9black_box17hb33eb9ca41d4f97cE()
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  call void @llvm.trap()
  unreachable

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13
}

; Function Attrs: cold noinline noreturn uwtable
define void @_ZN3std9panicking11begin_panic17h173426b834d9bfd8E([0 x i8]* align 1 %msg.0, i64 %msg.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #3 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_4 = alloca i8, align 1
  %_3 = alloca %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", align 8
  store i8 1, i8* %_4, align 1
  %loc = invoke align 8 %"core::panic::location::Location"* @_ZN4core5panic8location8Location6caller17h94e4c20b183d13baE(%"core::panic::location::Location"* align 8 %0)
          to label %bb1 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %2 = load i8, i8* %_4, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb3, label %bb2

cleanup:                                          ; preds = %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb4

bb1:                                              ; preds = %start
  store i8 0, i8* %_4, align 1
  %9 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  store [0 x i8]* %msg.0, [0 x i8]** %10, align 8
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  store i64 %msg.1, i64* %11, align 8
  %12 = getelementptr inbounds %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3, i32 0, i32 1
  store %"core::panic::location::Location"* %loc, %"core::panic::location::Location"** %12, align 8
  invoke void @_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h6a97f9c54b96cbcdE(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_3) #14
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb3, %bb4
  %13 = bitcast { i8*, i32 }* %1 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb3:                                              ; preds = %bb4
  br label %bb2
}

; Function Attrs: uwtable
define { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17hcf654123a7b18c13E"([0 x i8]* align 1 %inner.0, i64 %inner.1) unnamed_addr #1 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %inner.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %inner.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !align !4
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_2, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  store i8* %5, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8, !align !4
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { i8*, i64 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %13, 1
  ret { i8*, i64 } %15
}

; Function Attrs: inlinehint noreturn uwtable
define void @"_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17h3280dea5f50ffe9aE"(%"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1) unnamed_addr #4 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_8 = alloca i64*, align 8
  %_6 = alloca { i8*, i64 }, align 8
  %1 = bitcast %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %_7.0 = load [0 x i8]*, [0 x i8]** %2, align 8, !nonnull !1, !align !4, !noundef !1
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %_7.1 = load i64, i64* %3, align 8
  %4 = call { i8*, i64 } @"_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17hcf654123a7b18c13E"([0 x i8]* align 1 %_7.0, i64 %_7.1)
  store { i8*, i64 } %4, { i8*, i64 }* %_6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %_3.0 = bitcast { i8*, i64 }* %_6 to {}*
  %5 = bitcast i64** %_8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 8, i1 false)
  %6 = bitcast i64** %_8 to {}**
  store {}* null, {}** %6, align 8
  %7 = getelementptr inbounds %"[closure@std::panicking::begin_panic<&str>::{closure#0}]", %"[closure@std::panicking::begin_panic<&str>::{closure#0}]"* %_1, i32 0, i32 1
  %_10 = load %"core::panic::location::Location"*, %"core::panic::location::Location"** %7, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = load i64*, i64** %_8, align 8, !align !2
  invoke void @_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE({}* align 1 %_3.0, [3 x i64]* align 8 bitcast (<{ i8*, [16 x i8], i8*, i8* }>* @vtable.0 to [3 x i64]*), i64* align 8 %8, %"core::panic::location::Location"* align 8 %_10, i1 zeroext true) #14
          to label %unreachable unwind label %cleanup

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb2

unreachable:                                      ; preds = %bb1
  unreachable

bb3:                                              ; preds = %bb2
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; Function Attrs: uwtable
define i64 @_ZN4core3any6TypeId2of17hc99e799aa9d654c2E() unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  store i64 -5139102199292759541, i64* %0, align 8
  %_1 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %_1, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h2c927a4ef3ca72b7E(i64 %0) unnamed_addr #0 {
start:
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  %_3 = load i64, i64* %self, align 8, !range !5, !noundef !1
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h779910c6c0b4dcd5E(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17he2d8ce1208509221E(i64 %align) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %align, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !5, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @_ZN4core3mem7replace17h4aac037de9c55edcE({ i8*, i64 }* align 8 %dest, i8* align 1 %src.0, i64 %src.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, i8* %_7, align 1
  %1 = invoke { i8*, i64 } @_ZN4core3ptr4read17h3cb8cf012474278eE({ i8*, i64 }* %dest)
          to label %bb1 unwind label %cleanup

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_7, align 1, !range !3, !noundef !1
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb6

bb1:                                              ; preds = %start
  %result.0 = extractvalue { i8*, i64 } %1, 0
  %result.1 = extractvalue { i8*, i64 } %1, 1
  store i8 0, i8* %_7, align 1
  invoke void @_ZN4core3ptr5write17hfd2f45e5439e4ef9E({ i8*, i64 }* %dest, i8* align 1 %src.0, i64 %src.1)
          to label %bb2 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %14 = insertvalue { i8*, i64 } undef, i8* %result.0, 0
  %15 = insertvalue { i8*, i64 } %14, i64 %result.1, 1
  ret { i8*, i64 } %15

bb4:                                              ; preds = %bb5, %bb6
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h779910c6c0b4dcd5E(i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !6, !noundef !1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17ha0515b3c820ef717E(i64 %self) unnamed_addr #0 {
start:
  ret i64 %self
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h0d600abe7c06c287E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h4fbaf22c9a21b20cE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h92c593ffa8bd3159E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17he919de21581fc398E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hd4b1910d31d5f5f8E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h4abca83092d6153bE"({ [0 x i8]*, i64 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr4read17h01ca866c4c60e229E(%"alloc::alloc::Global"* %src) unnamed_addr #0 {
start:
  %0 = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>", align 1
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>", align 1
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>"* %0 to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::alloc::Global>"* %tmp to %"alloc::alloc::Global"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"alloc::alloc::Global"* %2 to i8*
  %4 = bitcast %"alloc::alloc::Global"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 0, i1 false)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @_ZN4core3ptr4read17h3cb8cf012474278eE({ i8*, i64 }* %src) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %tmp = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to {}*
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %7 = insertvalue { i8*, i64 } %6, i64 %5, 1
  store { i8*, i64 } %7, { i8*, i64 }* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = bitcast { i8*, i64 }* %tmp to i8*
  %9 = bitcast { i8*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 0
  %_6.0 = load i8*, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %tmp, i32 0, i32 1
  %_6.1 = load i64, i64* %11, align 8
  %12 = insertvalue { i8*, i64 } undef, i8* %_6.0, 0
  %13 = insertvalue { i8*, i64 } %12, i64 %_6.1, 1
  %14 = extractvalue { i8*, i64 } %13, 0
  %15 = extractvalue { i8*, i64 } %13, 1
  %16 = extractvalue { i8*, i64 } %13, 0
  %17 = extractvalue { i8*, i64 } %13, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %18 = insertvalue { i8*, i64 } undef, i8* %16, 0
  %19 = insertvalue { i8*, i64 } %18, i64 %17, 1
  ret { i8*, i64 } %19
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17hfd2f45e5439e4ef9E({ i8*, i64 }* %dst, i8* align 1 %0, i64 %1) unnamed_addr #0 {
start:
  %src = alloca { i8*, i64 }, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 0
  store i8* %0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %src, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = bitcast { i8*, i64 }* %dst to i8*
  %5 = bitcast { i8*, i64 }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  ret void
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h0bd31f4c1a59ca63E"({}* %_1.0, [3 x i64]* align 8 %_1.1) unnamed_addr #1 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !1, !nonnull !1
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h7de4a6f893cf0000E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha98b741c742c6c24E"(i8* %self.0, i64* align 8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h8d8a5c275285f92fE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h64d4be1993b32770E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9928659939833bdbE"(i8* %self.0, i64* align 8 %self.1)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hceaff1883cb780b9E"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd2e1e6c5b74a2c89E"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h03d632ed6640f9b5E"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hc3467ecd649f18abE"({ i8*, i64* }* align 8 %self)
  %1 = extractvalue { {}*, [3 x i64]* } %0, 0
  %2 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17hf81a525a37b59573E"({ i8*, i64 }* %_1) unnamed_addr #0 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h5412d34d7250fdcbE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha3fcfd70b1cc0b6aE"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h572e220dcbd61f9aE({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h5412d34d7250fdcbE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h92c593ffa8bd3159E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define %CsvParser* @_ZN4core3ptr8metadata14from_raw_parts17hf368ed9386b8346dE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<CsvParser>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<CsvParser>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<CsvParser>", %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<CsvParser>"* %_3 to %"core::ptr::metadata::PtrComponents<CsvParser>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<CsvParser>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<CsvParser>"* %_3 to %CsvParser**
  %6 = load %CsvParser*, %CsvParser** %5, align 8
  ret %CsvParser* %6
}

; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17h572e220dcbd61f9aE({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hd4b1910d31d5f5f8E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h04dab305714978f4E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %ptr.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i8*, i64 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2964191a9e435308E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h837d97b6a0e8dcfdE"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha3fcfd70b1cc0b6aE"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast i8** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 8, i1 false)
  %2 = bitcast i8** %0 to {}**
  store {}* null, {}** %2, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %_5 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2964191a9e435308E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha98b741c742c6c24E"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9928659939833bdbE"(i8* %self.0, i64* align 8 %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
  %1 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2964191a9e435308E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9928659939833bdbE"(i8* %self.0, i64* align 8 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc32e92bc9cad2a39E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd2e1e6c5b74a2c89E"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hc3467ecd649f18abE"({ i8*, i64* }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !1, !noundef !1
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !1, !align !2, !noundef !1
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9928659939833bdbE"(i8* %_3.0, i64* align 8 %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h01983ce12d365a7aE"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hfa89c11720b25fa4E"(i8* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd2e1e6c5b74a2c89E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hfa89c11720b25fa4E"(i8* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc32e92bc9cad2a39E"(i8* %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2964191a9e435308E"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h5c554d973360a329E"(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd2e1e6c5b74a2c89E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17he919de21581fc398E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h04dab305714978f4E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; Function Attrs: uwtable
define void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hcc585e5fa9819974E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %2 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 0
  %4 = load {}*, {}** %3, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i32 0, i32 1
  %6 = load [3 x i64]*, [3 x i64]** %5, align 8, !nonnull !1, !align !2, !noundef !1
  %7 = bitcast [3 x i64]* %6 to void ({}*)**
  %8 = getelementptr inbounds void ({}*)*, void ({}*)** %7, i64 0
  %9 = load void ({}*)*, void ({}*)** %8, align 8, !invariant.load !1, !nonnull !1
  invoke void %9({}* %4)
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  %10 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8, !nonnull !1, !align !2, !noundef !1
  invoke void @_ZN5alloc5alloc8box_free17h3306911f44367f4eE(i8* %12, i64* align 8 %14) #15
          to label %bb2 unwind label %abort

cleanup:                                          ; preds = %start
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %20 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %21 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8, !nonnull !1, !noundef !1
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %20, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8, !nonnull !1, !align !2, !noundef !1
  call void @_ZN5alloc5alloc8box_free17h3306911f44367f4eE(i8* %22, i64* align 8 %24)
  br label %bb1

abort:                                            ; preds = %bb4
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable

bb2:                                              ; preds = %bb4
  %26 = bitcast { i8*, i32 }* %0 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  resume { i8*, i32 } %31

bb1:                                              ; preds = %bb3
  ret void
}

; Function Attrs: inlinehint uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h4fbaf22c9a21b20cE"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h150039af27f5d5f7E"([0 x i8]* %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; Function Attrs: inlinehint uwtable
define void @_ZN4core4hint9black_box17hb33eb9ca41d4f97cE() unnamed_addr #0 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !7
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h41321a508cfa6005E(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  %_4 = call i64 @_ZN4core3mem11valid_align10ValidAlign13new_unchecked17he2d8ce1208509221E(i64 %align), !range !5
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !5, !noundef !1
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h9e419a3ab3b63a94E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h2931367ad46b0584E({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_3 = load i64, i64* %0, align 8, !range !5, !noundef !1
  %_2 = call i64 @_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h2c927a4ef3ca72b7E(i64 %_3), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17ha0515b3c820ef717E(i64 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN4core5alloc6layout6Layout8dangling17h0ac448d799c2fa0eE({ i64, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h2931367ad46b0584E({ i64, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8** %0 to i64*
  store i64 %_3, i64* %1, align 8
  %2 = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2964191a9e435308E"(i8* %2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %3
}

; Function Attrs: inlinehint uwtable
define internal align 8 %"core::panic::location::Location"* @_ZN4core5panic8location8Location6caller17h94e4c20b183d13baE(%"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = alloca %"core::panic::location::Location"*, align 8
  store %"core::panic::location::Location"* %0, %"core::panic::location::Location"** %1, align 8
  %2 = load %"core::panic::location::Location"*, %"core::panic::location::Location"** %1, align 8, !nonnull !1, !align !2, !noundef !1
  br label %bb1

bb1:                                              ; preds = %start
  ret %"core::panic::location::Location"* %2
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha181432d6b6d57c4E"([0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %0 = icmp eq i64 %self.1, 0
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0f824cef48a30088E"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %1 = call { [0 x i8]*, i64 } @"_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h1590c6e2ef3c162fE"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17hfc3e84efd38f004bE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %_3 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false)
  %1 = bitcast { i8*, i64 }* %_3 to {}**
  store {}* null, {}** %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8, !align !4
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = call { i8*, i64 } @_ZN4core3mem7replace17h4aac037de9c55edcE({ i8*, i64 }* align 8 %self, i8* align 1 %3, i64 %5)
  %7 = extractvalue { i8*, i64 } %6, 0
  %8 = extractvalue { i8*, i64 } %6, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = insertvalue { i8*, i64 } undef, i8* %7, 0
  %10 = insertvalue { i8*, i64 } %9, i64 %8, 1
  ret { i8*, i64 } %10
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h9ec3325f1f92784dE"(i8* %0) unnamed_addr #0 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  store i8 1, i8* %_7, align 1
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = bitcast i8** %1 to %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"*
  %6 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"* %5 to %"core::alloc::AllocError"*
  %7 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = bitcast i8** %1 to {}**
  store {}* null, {}** %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %9 = load i8, i8* %_7, align 1, !range !3, !noundef !1
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %11 = load i8*, i8** %1, align 8
  ret i8* %11

bb5:                                              ; preds = %bb6
  br label %bb4
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast { i8*, i64 }* %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %4 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 8, i1 false)
  %5 = bitcast i64** %0 to {}**
  store {}* null, {}** %5, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %x = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %6 = bitcast i64** %0 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %x, { [0 x i8]*, i64 }** %6, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i64*, i64** %0, align 8, !align !2
  ret i64* %7
}

; Function Attrs: inlinehint uwtable
define align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h750b57f682741169E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast { i8*, i64 }* %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %4 = bitcast i64** %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 8, i1 false)
  %5 = bitcast i64** %0 to {}**
  store {}* null, {}** %5, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %x = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %6 = bitcast i64** %0 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %x, { [0 x i8]*, i64 }** %6, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %7 = load i64*, i64** %0, align 8, !align !2
  ret i64* %7
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17ha2d4bad0ed9b8a9eE"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hb1d4d9d31b501761E"({ i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = xor i1 %_2, true
  ret i1 %0
}

; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_some17hb1d4d9d31b501761E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = bitcast { i8*, i64 }* %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 1
  br i1 %4, label %bb2, label %bb1

bb2:                                              ; preds = %start
  store i8 1, i8* %0, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 0, i8* %0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %5 = load i8, i8* %0, align 1, !range !3, !noundef !1
  %6 = trunc i8 %5 to i1
  ret i1 %6
}

; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h7950fa8698cc6cadE"() unnamed_addr #1 {
start:
  ret void
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h7cdc1d874a27433aE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h9e419a3ab3b63a94E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h2931367ad46b0584E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc15exchange_malloc17h0ceb92ca658bcc9eE(i64 %size, i64 %align) unnamed_addr #0 {
start:
  %_6 = alloca { i8*, i64 }, align 8
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h41321a508cfa6005E(i64 %size, i64 %align)
  %layout.0 = extractvalue { i64, i64 } %0, 0
  %layout.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hd335de18e1604f18E"(%"alloc::alloc::Global"* align 1 bitcast (<{}>* @alloc7 to %"alloc::alloc::Global"*), i64 %layout.0, i64 %layout.1)
  store { i8*, i64 } %1, { i8*, i64 }* %_6, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast { i8*, i64 }* %_6 to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_9 = select i1 %4, i64 1, i64 0
  switch i64 %_9, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb5:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 0
  %ptr.0 = load i8*, i8** %5, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 1
  %ptr.1 = load i64, i64* %6, align 8
  %7 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h01983ce12d365a7aE"(i8* %ptr.0, i64 %ptr.1)
  br label %bb6

bb3:                                              ; preds = %bb2
  call void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64 %layout.0, i64 %layout.1) #14
  unreachable

bb6:                                              ; preds = %bb5
  ret i8* %7
}

; Function Attrs: inlinehint uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h651787cd3313bb5aE(i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h9e419a3ab3b63a94E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h2931367ad46b0584E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h8c25b254c199c25bE(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h9e419a3ab3b63a94E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  %_7 = call i8* @_ZN4core5alloc6layout6Layout8dangling17h0ac448d799c2fa0eE({ i64, i64 }* align 8 %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !5, !noundef !1
  %8 = call i8* @_ZN5alloc5alloc5alloc17h651787cd3313bb5aE(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !5, !noundef !1
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h7cdc1d874a27433aE(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h837d97b6a0e8dcfdE"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h9ec3325f1f92784dE"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h26e776e824b4dd68E"(i8* %_16)
  store i8* %12, i8** %_15, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  %13 = bitcast i8** %_15 to {}**
  %14 = load {}*, {}** %13, align 8
  %15 = icmp eq {}* %14, null
  %_20 = select i1 %15, i64 1, i64 0
  switch i64 %_20, label %bb15 [
    i64 0, label %bb14
    i64 1, label %bb16
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb14:                                             ; preds = %bb13
  %val = load i8*, i8** %_15, align 8, !nonnull !1, !noundef !1
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h5c554d973360a329E"(i8* %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hdc1f9cae951484adE"(%"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc121 to %"core::panic::location::Location"*))
  store { i8*, i64 } %17, { i8*, i64 }* %2, align 8
  br label %bb17

bb17:                                             ; preds = %bb16
  br label %bb20

bb20:                                             ; preds = %bb19, %bb17
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = insertvalue { i8*, i64 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i64 } %22, i64 %21, 1
  ret { i8*, i64 } %23

bb18:                                             ; preds = %bb14
  %24 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_24.0, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_24.1, i64* %25, align 8
  br label %bb19

bb19:                                             ; preds = %bb5, %bb18
  br label %bb20

bb4:                                              ; preds = %bb3
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h5c554d973360a329E"(i8* %_7, i64 0)
  %_6.0 = extractvalue { i8*, i64 } %26, 0
  %_6.1 = extractvalue { i8*, i64 } %26, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_6.0, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_6.1, i64* %28, align 8
  br label %bb19
}

; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc5alloc7dealloc17h931cdc33a06f43a6E(i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h9e419a3ab3b63a94E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h2931367ad46b0584E({ i64, i64 }* align 8 %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #17
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; Function Attrs: inlinehint uwtable
define void @_ZN5alloc5alloc8box_free17h3306911f44367f4eE(i8* %0, i64* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i8*, i64* }, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  store i64* %1, i64** %6, align 8
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h03d632ed6640f9b5E"({ i8*, i64* }* align 8 %ptr)
          to label %bb1 unwind label %cleanup

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb10

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { {}*, [3 x i64]* } %7, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %7, 1
  %13 = bitcast [3 x i64]* %_5.1 to i64*
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8, !invariant.load !1
  %16 = bitcast [3 x i64]* %_5.1 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8, !range !6, !invariant.load !1
  store i64 %15, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h03d632ed6640f9b5E"({ i8*, i64* }* align 8 %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !1
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !6, !invariant.load !1
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h41321a508cfa6005E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !1, !align !2, !noundef !1
  %_16 = invoke i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h7de4a6f893cf0000E"(i8* %_17.0, i64* align 8 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
  %_15 = invoke i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5a1b738f8c7bfd0bE"(i8* %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5f657a08d117eae3E"(%"alloc::alloc::Global"* align 1 %alloc, i8* %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %29 = bitcast { i8*, i32 }* %4 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h0202308991057fdfE"({}* align 1 %0, [3 x i64]* align 8 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %3 = alloca { i8*, i64* }, align 8
  %b = alloca { {}*, [3 x i64]* }, align 8
  %4 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 0
  store {}* %0, {}** %4, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  store [3 x i64]* %1, [3 x i64]** %5, align 8
  store i8 1, i8* %_9, align 1
  %_4 = bitcast { {}*, [3 x i64]* }* %b to %"alloc::alloc::Global"*
  invoke void @_ZN4core3ptr4read17h01ca866c4c60e229E(%"alloc::alloc::Global"* %_4)
          to label %bb1 unwind label %cleanup

bb7:                                              ; preds = %bb4, %cleanup
  %6 = load i8, i8* %_9, align 1, !range !3, !noundef !1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb6, label %bb5

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %13 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 0
  %_7.0 = load {}*, {}** %13, align 8, !nonnull !1, !align !4, !noundef !1
  %14 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %b, i32 0, i32 1
  %_7.1 = load [3 x i64]*, [3 x i64]** %14, align 8, !nonnull !1, !align !2, !noundef !1
  %15 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he8e1aa541488b9eeE"({}* align 1 %_7.0, [3 x i64]* align 8 %_7.1)
          to label %bb2 unwind label %cleanup1

bb4:                                              ; preds = %cleanup1
  br label %bb7

cleanup1:                                         ; preds = %bb2, %bb1
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { {}*, [3 x i64]* } %15, 0
  %_6.1 = extractvalue { {}*, [3 x i64]* } %15, 1
  %21 = invoke { i8*, i64* } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h98219f64af7057d8E"({}* align 1 %_6.0, [3 x i64]* align 8 %_6.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  %_5.0 = extractvalue { i8*, i64* } %21, 0
  %_5.1 = extractvalue { i8*, i64* } %21, 1
  %22 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  store i8* %_5.0, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  store i64* %_5.1, i64** %23, align 8
  %24 = bitcast { i8*, i64* }* %3 to i8*
  %25 = getelementptr i8, i8* %24, i64 16
  %26 = bitcast i8* %25 to %"alloc::alloc::Global"*
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8, !nonnull !1, !noundef !1
  %29 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %3, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8, !nonnull !1, !align !2, !noundef !1
  %31 = insertvalue { i8*, i64* } undef, i8* %28, 0
  %32 = insertvalue { i8*, i64* } %31, i64* %30, 1
  ret { i8*, i64* } %32

bb5:                                              ; preds = %bb6, %bb7
  %33 = bitcast { i8*, i32 }* %2 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = insertvalue { i8*, i32 } undef, i8* %34, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

bb6:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hcc585e5fa9819974E"({ {}*, [3 x i64]* }* %b) #15
          to label %bb5 unwind label %abort

abort:                                            ; preds = %bb6
  %39 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h56eed98f5c2f8828E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64* }, align 8
  %2 = call { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h0202308991057fdfE"({}* align 1 %b.0, [3 x i64]* align 8 %b.1)
  %_4.0 = extractvalue { i8*, i64* } %2, 0
  %_4.1 = extractvalue { i8*, i64* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h64d4be1993b32770E"(i8* %_4.0, i64* align 8 %_4.1)
          to label %bb2 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb3

bb2:                                              ; preds = %bb1
  %_6.0 = extractvalue { {}*, [3 x i64]* } %3, 0
  %_6.1 = extractvalue { {}*, [3 x i64]* } %3, 1
  %9 = bitcast { i8*, i64* }* %1 to { {}*, [3 x i64]* }*
  %10 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %9, i32 0, i32 0
  store {}* %_6.0, {}** %10, align 8
  %11 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %9, i32 0, i32 1
  store [3 x i64]* %_6.1, [3 x i64]** %11, align 8
  %12 = bitcast { i8*, i64* }* %1 to i8*
  %13 = getelementptr i8, i8* %12, i64 16
  %14 = bitcast i8* %13 to %"alloc::alloc::Global"*
  %15 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8, !nonnull !1, !align !2, !noundef !1
  %19 = insertvalue { i8*, i64* } undef, i8* %16, 0
  %20 = insertvalue { i8*, i64* } %19, i64* %18, 1
  ret { i8*, i64* } %20

bb4:                                              ; preds = %bb3
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he8e1aa541488b9eeE"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %_9 = alloca { i8*, i64* }, align 8
  %1 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 0
  store {}* %b.0, {}** %2, align 8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 1
  store [3 x i64]* %b.1, [3 x i64]** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !align !4, !noundef !1
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = insertvalue { i8*, i64* } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64* } %8, i64* %7, 1
  store { i8*, i64* } %9, { i8*, i64* }* %_9, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %10 = bitcast { i8*, i64* }* %_9 to { {}*, [3 x i64]* }*
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = bitcast { {}*, [3 x i64]* }* %10 to { i8*, i64* }*
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 0
  %_6.0 = load i8*, i8** %12, align 8, !nonnull !1, !noundef !1
  %13 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %11, i32 0, i32 1
  %_6.1 = load i64*, i64** %13, align 8, !nonnull !1, !align !2, !noundef !1
  %14 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h64d4be1993b32770E"(i8* %_6.0, i64* align 8 %_6.1)
  %_5.0 = extractvalue { {}*, [3 x i64]* } %14, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %15 = insertvalue { {}*, [3 x i64]* } undef, {}* %_5.0, 0
  %16 = insertvalue { {}*, [3 x i64]* } %15, [3 x i64]* %_5.1, 1
  ret { {}*, [3 x i64]* } %16
}

; Function Attrs: inlinehint uwtable
define { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h23d6e0d10baf7293E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h56eed98f5c2f8828E"({}* align 1 %b.0, [3 x i64]* align 8 %b.1)
  %_2.0 = extractvalue { i8*, i64* } %0, 0
  %_2.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast i8* %_2.0 to {}*
  %2 = bitcast i64* %_2.1 to [3 x i64]*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %1, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %2, 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: inlinehint uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5f657a08d117eae3E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h9e419a3ab3b63a94E({ i64, i64 }* align 8 %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd2e1e6c5b74a2c89E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !5, !noundef !1
  call void @_ZN5alloc5alloc7dealloc17h931cdc33a06f43a6E(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  ret void
}

; Function Attrs: inlinehint uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hd335de18e1604f18E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h8c25b254c199c25bE(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; Function Attrs: inlinehint uwtable
define i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h26e776e824b4dd68E"(i8* %0) unnamed_addr #0 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !1, !noundef !1
  store i8* %v, i8** %1, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %6 = bitcast i8** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"*
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"* %6 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %8 = bitcast i8** %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = bitcast i8** %1 to {}**
  store {}* null, {}** %9, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %10 = load i8*, i8** %1, align 8
  ret i8* %10
}

; Function Attrs: uwtable
define { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h865a31701283126cE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_6 = select i1 %2, i64 0, i64 1
  switch i64 %_6, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #14
  unreachable

bb3:                                              ; preds = %start
  %a = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %_5.0 = bitcast { [0 x i8]*, i64 }* %a to {}*
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_5.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), 1
  ret { {}*, [3 x i64]* } %4
}

; Function Attrs: uwtable
define { {}*, [3 x i64]* } @"_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h5c43d1893df3c623E"({ i8*, i64 }* align 8 %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i32 }, align 8
  %_4 = alloca { i8*, i64 }, align 8
  %data = alloca { {}*, [3 x i64]* }, align 8
  %2 = call { i8*, i64 } @"_ZN4core6option15Option$LT$T$GT$4take17hfc3e84efd38f004bE"({ i8*, i64 }* align 8 %self)
  store { i8*, i64 } %2, { i8*, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast { i8*, i64 }* %_4 to {}**
  %4 = load {}*, {}** %3, align 8
  %5 = icmp eq {}* %4, null
  %_6 = select i1 %5, i64 0, i64 1
  switch i64 %_6, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb2:                                              ; preds = %bb1
  call void @_ZN3std7process5abort17hbfbd791ff32f7241E() #14
  unreachable

bb4:                                              ; preds = %bb1
  %6 = bitcast { i8*, i64 }* %_4 to { [0 x i8]*, i64 }*
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 0
  %a.0 = load [0 x i8]*, [0 x i8]** %7, align 8, !nonnull !1, !align !4, !noundef !1
  %8 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 1
  %a.1 = load i64, i64* %8, align 8
  %_4.i = invoke i8* @_ZN5alloc5alloc15exchange_malloc17h0ceb92ca658bcc9eE(i64 16, i64 8)
          to label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h530c4547382dc288E.exit" unwind label %cleanup.i

cleanup.i:                                        ; preds = %bb4
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h530c4547382dc288E.exit": ; preds = %bb4
  %20 = bitcast i8* %_4.i to { [0 x i8]*, i64 }*
  %21 = bitcast { [0 x i8]*, i64 }* %20 to i64*
  %22 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 0
  store [0 x i8]* %a.0, [0 x i8]** %22, align 8
  %23 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %20, i32 0, i32 1
  store i64 %a.1, i64* %23, align 8
  br label %bb5

bb5:                                              ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h530c4547382dc288E.exit"
  %24 = bitcast { [0 x i8]*, i64 }* %20 to {}*
  %25 = bitcast {}* %24 to i8*
  %_8.0 = bitcast i8* %25 to {}*
  %26 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  store {}* %_8.0, {}** %26, align 8
  %27 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  store [3 x i64]* bitcast (<{ i8*, [16 x i8], i8* }>* @vtable.1 to [3 x i64]*), [3 x i64]** %27, align 8
  %28 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 0
  %_14.0 = load {}*, {}** %28, align 8, !nonnull !1, !align !4, !noundef !1
  %29 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %data, i32 0, i32 1
  %_14.1 = load [3 x i64]*, [3 x i64]** %29, align 8, !nonnull !1, !align !2, !noundef !1
  %30 = invoke { {}*, [3 x i64]* } @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h23d6e0d10baf7293E"({}* align 1 %_14.0, [3 x i64]* align 8 %_14.1)
          to label %bb6 unwind label %cleanup

bb7:                                              ; preds = %cleanup
  br i1 false, label %bb9, label %bb8

cleanup:                                          ; preds = %bb5
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = extractvalue { i8*, i32 } %31, 0
  %33 = extractvalue { i8*, i32 } %31, 1
  %34 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  br label %bb7

bb6:                                              ; preds = %bb5
  %_12.0 = extractvalue { {}*, [3 x i64]* } %30, 0
  %_12.1 = extractvalue { {}*, [3 x i64]* } %30, 1
  %36 = insertvalue { {}*, [3 x i64]* } undef, {}* %_12.0, 0
  %37 = insertvalue { {}*, [3 x i64]* } %36, [3 x i64]* %_12.1, 1
  ret { {}*, [3 x i64]* } %37

bb8:                                              ; preds = %bb9, %bb7
  %38 = bitcast { i8*, i32 }* %1 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = insertvalue { i8*, i32 } undef, i8* %39, 0
  %43 = insertvalue { i8*, i32 } %42, i32 %41, 1
  resume { i8*, i32 } %43

bb9:                                              ; preds = %bb7
  invoke void @"_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hcc585e5fa9819974E"({ {}*, [3 x i64]* }* %data) #15
          to label %bb8 unwind label %abort

abort:                                            ; preds = %bb9
  %44 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() #16
  unreachable
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h98219f64af7057d8E"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1) unnamed_addr #0 {
start:
  %0 = call { i8*, i64* } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hefae3e00360effacE"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1)
  %_2.0 = extractvalue { i8*, i64* } %0, 0
  %_2.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { i8*, i64* } @"_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hebbfd91027de1f7eE"(i8* %_2.0, i64* align 8 %_2.1)
  %2 = extractvalue { i8*, i64* } %1, 0
  %3 = extractvalue { i8*, i64* } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i8*, i64* } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64* } %4, i64* %3, 1
  ret { i8*, i64* } %5
}

; Function Attrs: inlinehint uwtable
define { i8*, i64* } @"_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hefae3e00360effacE"({}* align 1 %reference.0, [3 x i64]* align 8 %reference.1) unnamed_addr #0 {
start:
  %0 = alloca { i8*, i64* }, align 8
  %1 = bitcast { i8*, i64* }* %0 to { {}*, [3 x i64]* }*
  %2 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 0
  store {}* %reference.0, {}** %2, align 8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %1, i32 0, i32 1
  store [3 x i64]* %reference.1, [3 x i64]** %3, align 8
  %4 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !1, !noundef !1
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %0, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !1, !align !2, !noundef !1
  %8 = insertvalue { i8*, i64* } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64* } %8, i64* %7, 1
  ret { i8*, i64* } %9
}

; Function Attrs: uwtable
define i64 @csv_parse(%CsvParser* align 1 %p, [0 x i8]* align 1 %s.0, i64 %s.1, i64* %0, i64* %1, {}* align 1 %data) unnamed_addr #1 {
start:
  %2 = alloca {}*, align 8
  %_536 = alloca i64*, align 8
  %_519 = alloca i64*, align 8
  %_497 = alloca i64*, align 8
  %_489 = alloca i8, align 1
  %_488 = alloca i8, align 1
  %_477 = alloca i64, align 8
  %_467 = alloca i64*, align 8
  %_453 = alloca i8, align 1
  %_452 = alloca i8, align 1
  %_443 = alloca i64*, align 8
  %_425 = alloca i8, align 1
  %_424 = alloca i8, align 1
  %_420 = alloca i64, align 8
  %_410 = alloca i64*, align 8
  %_396 = alloca i8, align 1
  %_395 = alloca i8, align 1
  %_386 = alloca i64*, align 8
  %_364 = alloca i64*, align 8
  %_354 = alloca i64*, align 8
  %_346 = alloca i8, align 1
  %_345 = alloca i8, align 1
  %_342 = alloca i8, align 1
  %_333 = alloca i64*, align 8
  %_329 = alloca i64, align 8
  %_319 = alloca i64*, align 8
  %_305 = alloca i8, align 1
  %_304 = alloca i8, align 1
  %_295 = alloca i64*, align 8
  %_279 = alloca i8, align 1
  %_278 = alloca i8, align 1
  %_274 = alloca i64, align 8
  %_264 = alloca i64*, align 8
  %_250 = alloca i8, align 1
  %_249 = alloca i8, align 1
  %_240 = alloca i64*, align 8
  %_225 = alloca i64*, align 8
  %_212 = alloca i64*, align 8
  %_195 = alloca i64*, align 8
  %_182 = alloca i64*, align 8
  %_175 = alloca i64, align 8
  %_165 = alloca i64*, align 8
  %_151 = alloca i8, align 1
  %_150 = alloca i8, align 1
  %_141 = alloca i64*, align 8
  %_121 = alloca i64, align 8
  %_111 = alloca i64*, align 8
  %_97 = alloca i8, align 1
  %_96 = alloca i8, align 1
  %_87 = alloca i64*, align 8
  %_72 = alloca i8, align 1
  %_71 = alloca i8, align 1
  %_60 = alloca i8, align 1
  %_59 = alloca i8, align 1
  %_58 = alloca i8, align 1
  %_42 = alloca i64, align 8
  %_23 = alloca i8, align 1
  %entry_pos = alloca i64, align 8
  %spaces = alloca i64, align 8
  %pstate = alloca i32, align 4
  %quoted = alloca i8, align 1
  %pos = alloca i64, align 8
  %3 = alloca i64, align 8
  %cb2 = alloca i64*, align 8
  %cb1 = alloca i64*, align 8
  store i64* %0, i64** %cb1, align 8
  store i64* %1, i64** %cb2, align 8
  %4 = bitcast {}** %2 to i64*
  store i64 0, i64* %4, align 8
  %5 = load {}*, {}** %2, align 8
  %6 = call %CsvParser* @_ZN4core3ptr8metadata14from_raw_parts17hf368ed9386b8346dE({}* %5)
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp ne %CsvParser* %p, %6
  %_6 = xor i1 %_7, true
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_12 = call zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha181432d6b6d57c4E"([0 x i8]* align 1 %s.0, i64 %s.1)
  br label %bb4

bb2:                                              ; preds = %bb1
  call void @_ZN3std9panicking11begin_panic17h173426b834d9bfd8E([0 x i8]* align 1 bitcast (<{ [24 x i8] }>* @alloc125 to [0 x i8]*), i64 24, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc127 to %"core::panic::location::Location"*)) #14
  unreachable

bb4:                                              ; preds = %bb3
  br i1 %_12, label %bb5, label %bb6

bb6:                                              ; preds = %bb4
  store i64 0, i64* %pos, align 8
  %7 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 9
  %delim = load i8, i8* %7, align 1
  %8 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 8
  %quote = load i8, i8* %8, align 1
  %9 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 10
  %is_space = load i32 (i8)*, i32 (i8)** %9, align 1, !nonnull !1, !noundef !1
  %10 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 11
  %is_term = load i32 (i8)*, i32 (i8)** %10, align 1, !nonnull !1, !noundef !1
  %11 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %12 = load i8, i8* %11, align 1, !range !3, !noundef !1
  %13 = trunc i8 %12 to i1
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %quoted, align 1
  %15 = bitcast %CsvParser* %p to i32*
  %16 = load i32, i32* %15, align 1
  store i32 %16, i32* %pstate, align 4
  %17 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  %18 = load i64, i64* %17, align 1
  store i64 %18, i64* %spaces, align 8
  %19 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  %20 = load i64, i64* %19, align 1
  store i64 %20, i64* %entry_pos, align 8
  %_25 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %_24 = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$7is_none17ha2d4bad0ed9b8a9eE"({ i8*, i64 }* align 8 %_25)
  br label %bb10

bb5:                                              ; preds = %bb4
  store i64 0, i64* %3, align 8
  br label %bb306

bb306:                                            ; preds = %bb112, %bb298, %bb288, %bb22, %bb305, %bb13, %bb5
  %21 = load i64, i64* %3, align 8
  ret i64 %21

bb10:                                             ; preds = %bb6
  br i1 %_24, label %bb8, label %bb7

bb7:                                              ; preds = %bb10
  store i8 0, i8* %_23, align 1
  br label %bb9

bb8:                                              ; preds = %bb10
  %_27 = load i64, i64* %pos, align 8
  %_26 = icmp ult i64 %_27, %s.1
  %22 = zext i1 %_26 to i8
  store i8 %22, i8* %_23, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %23 = load i8, i8* %_23, align 1, !range !3, !noundef !1
  %24 = trunc i8 %23 to i1
  br i1 %24, label %bb11, label %bb14

bb14:                                             ; preds = %bb101, %bb95, %bb70, %bb29, %bb209, %bb203, %bb185, %bb179, %bb148, %bb126, %bb118, %bb109, %bb304, %bb294, %bb295, %bb283, %bb268, %bb234, %bb25, %bb12, %bb9
  %_37 = load i64, i64* %pos, align 8
  %_36 = icmp ult i64 %_37, %s.1
  br i1 %_36, label %bb15, label %bb305

bb11:                                             ; preds = %bb9
  %_30 = call i32 @csv_increase_buffer(%CsvParser* align 1 %p)
  br label %bb12

bb12:                                             ; preds = %bb11
  %25 = icmp eq i32 %_30, 0
  br i1 %25, label %bb14, label %bb13

bb13:                                             ; preds = %bb12
  %26 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_32 = trunc i8 %26 to i1
  %27 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %28 = zext i1 %_32 to i8
  store i8 %28, i8* %27, align 1
  %_33 = load i32, i32* %pstate, align 4
  %29 = bitcast %CsvParser* %p to i32*
  store i32 %_33, i32* %29, align 1
  %_34 = load i64, i64* %spaces, align 8
  %30 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  store i64 %_34, i64* %30, align 1
  %_35 = load i64, i64* %entry_pos, align 8
  %31 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  store i64 %_35, i64* %31, align 1
  %32 = load i64, i64* %pos, align 8
  store i64 %32, i64* %3, align 8
  br label %bb306

bb305:                                            ; preds = %bb93, %bb14
  %33 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_545 = trunc i8 %33 to i1
  %34 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %35 = zext i1 %_545 to i8
  store i8 %35, i8* %34, align 1
  %_546 = load i32, i32* %pstate, align 4
  %36 = bitcast %CsvParser* %p to i32*
  store i32 %_546, i32* %36, align 1
  %_547 = load i64, i64* %spaces, align 8
  %37 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  store i64 %_547, i64* %37, align 1
  %_548 = load i64, i64* %entry_pos, align 8
  %38 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  store i64 %_548, i64* %38, align 1
  %39 = load i64, i64* %pos, align 8
  store i64 %39, i64* %3, align 8
  br label %bb306

bb15:                                             ; preds = %bb14
  %_41 = load i64, i64* %entry_pos, align 8
  %40 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_44 = load i8, i8* %40, align 1
  %_43 = and i8 %_44, 8
  %41 = icmp eq i8 %_43, 0
  br i1 %41, label %bb18, label %bb16

bb18:                                             ; preds = %bb15
  %42 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %43 = load i64, i64* %42, align 1
  store i64 %43, i64* %_42, align 8
  br label %bb19

bb16:                                             ; preds = %bb15
  %44 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 5
  %_45 = load i64, i64* %44, align 1
  %45 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_45, i64 1)
  %_46.0 = extractvalue { i64, i1 } %45, 0
  %_46.1 = extractvalue { i64, i1 } %45, 1
  %46 = call i1 @llvm.expect.i1(i1 %_46.1, i1 false)
  br i1 %46, label %panic, label %bb17

bb17:                                             ; preds = %bb16
  store i64 %_46.0, i64* %_42, align 8
  br label %bb19

panic:                                            ; preds = %bb16
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc129 to %"core::panic::location::Location"*)) #14
  unreachable

bb19:                                             ; preds = %bb17, %bb18
  %47 = load i64, i64* %_42, align 8
  %_40 = icmp eq i64 %_41, %47
  br i1 %_40, label %bb20, label %bb23

bb23:                                             ; preds = %bb21, %bb19
  %_54 = load i64, i64* %pos, align 8
  %_56 = icmp ult i64 %_54, %s.1
  %48 = call i1 @llvm.expect.i1(i1 %_56, i1 true)
  br i1 %48, label %bb24, label %panic1

bb20:                                             ; preds = %bb19
  %_47 = call i32 @csv_increase_buffer(%CsvParser* align 1 %p)
  br label %bb21

bb21:                                             ; preds = %bb20
  %49 = icmp eq i32 %_47, 0
  br i1 %49, label %bb23, label %bb22

bb22:                                             ; preds = %bb21
  %50 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_49 = trunc i8 %50 to i1
  %51 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %52 = zext i1 %_49 to i8
  store i8 %52, i8* %51, align 1
  %_50 = load i32, i32* %pstate, align 4
  %53 = bitcast %CsvParser* %p to i32*
  store i32 %_50, i32* %53, align 1
  %_51 = load i64, i64* %spaces, align 8
  %54 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  store i64 %_51, i64* %54, align 1
  %_52 = load i64, i64* %entry_pos, align 8
  %55 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  store i64 %_52, i64* %55, align 1
  %56 = load i64, i64* %pos, align 8
  store i64 %56, i64* %3, align 8
  br label %bb306

bb24:                                             ; preds = %bb23
  %57 = getelementptr inbounds [0 x i8], [0 x i8]* %s.0, i64 0, i64 %_54
  %c = load i8, i8* %57, align 1
  %58 = load i64, i64* %pos, align 8
  %59 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %58, i64 1)
  %_57.0 = extractvalue { i64, i1 } %59, 0
  %_57.1 = extractvalue { i64, i1 } %59, 1
  %60 = call i1 @llvm.expect.i1(i1 %_57.1, i1 false)
  br i1 %60, label %panic2, label %bb25

panic1:                                           ; preds = %bb23
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_54, i64 %s.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc131 to %"core::panic::location::Location"*)) #14
  unreachable

bb25:                                             ; preds = %bb24
  store i64 %_57.0, i64* %pos, align 8
  %61 = load i32, i32* %pstate, align 4
  switch i32 %61, label %bb14 [
    i32 0, label %bb26
    i32 1, label %bb26
    i32 2, label %bb102
    i32 3, label %bb210
  ]

panic2:                                           ; preds = %bb24
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc133 to %"core::panic::location::Location"*)) #14
  unreachable

bb26:                                             ; preds = %bb25, %bb25
  %_61 = call i32 %is_space(i8 %c)
  br label %bb36

bb102:                                            ; preds = %bb25
  %_191 = icmp eq i8 %c, %quote
  br i1 %_191, label %bb103, label %bb119

bb210:                                            ; preds = %bb25
  %_373 = icmp eq i8 %c, %delim
  br i1 %_373, label %bb211, label %bb235

bb235:                                            ; preds = %bb210
  %_426 = call i32 %is_term(i8 %c)
  br label %bb242

bb211:                                            ; preds = %bb210
  %_377 = load i64, i64* %spaces, align 8
  %62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_377, i64 1)
  %_378.0 = extractvalue { i64, i1 } %62, 0
  %_378.1 = extractvalue { i64, i1 } %62, 1
  %63 = call i1 @llvm.expect.i1(i1 %_378.1, i1 false)
  br i1 %63, label %panic3, label %bb212

bb212:                                            ; preds = %bb211
  %64 = load i64, i64* %entry_pos, align 8
  %65 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %64, i64 %_378.0)
  %_379.0 = extractvalue { i64, i1 } %65, 0
  %_379.1 = extractvalue { i64, i1 } %65, 1
  %66 = call i1 @llvm.expect.i1(i1 %_379.1, i1 false)
  br i1 %66, label %panic4, label %bb213

panic3:                                           ; preds = %bb211
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc135 to %"core::panic::location::Location"*)) #14
  unreachable

bb213:                                            ; preds = %bb212
  store i64 %_379.0, i64* %entry_pos, align 8
  %67 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_381 = trunc i8 %67 to i1
  %_380 = xor i1 %_381, true
  br i1 %_380, label %bb214, label %bb216

panic4:                                           ; preds = %bb212
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc137 to %"core::panic::location::Location"*)) #14
  unreachable

bb216:                                            ; preds = %bb215, %bb213
  %68 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_385 = load i8, i8* %68, align 1
  %_384 = and i8 %_385, 8
  %69 = icmp eq i8 %_384, 0
  br i1 %69, label %bb221, label %bb217

bb214:                                            ; preds = %bb213
  %_382 = load i64, i64* %spaces, align 8
  %70 = load i64, i64* %entry_pos, align 8
  %71 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %70, i64 %_382)
  %_383.0 = extractvalue { i64, i1 } %71, 0
  %_383.1 = extractvalue { i64, i1 } %71, 1
  %72 = call i1 @llvm.expect.i1(i1 %_383.1, i1 false)
  br i1 %72, label %panic5, label %bb215

bb215:                                            ; preds = %bb214
  store i64 %_383.0, i64* %entry_pos, align 8
  br label %bb216

panic5:                                           ; preds = %bb214
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc139 to %"core::panic::location::Location"*)) #14
  unreachable

bb221:                                            ; preds = %bb220, %bb218, %bb216
  %73 = bitcast i64** %cb1 to {}**
  %74 = load {}*, {}** %73, align 8
  %75 = icmp eq {}* %74, null
  %_393 = select i1 %75, i64 0, i64 1
  %76 = icmp eq i64 %_393, 1
  br i1 %76, label %bb222, label %bb234

bb217:                                            ; preds = %bb216
  %_387 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %77 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_387)
  store i64* %77, i64** %_386, align 8
  br label %bb218

bb218:                                            ; preds = %bb217
  %78 = bitcast i64** %_386 to {}**
  %79 = load {}*, {}** %78, align 8
  %80 = icmp eq {}* %79, null
  %_388 = select i1 %80, i64 0, i64 1
  %81 = icmp eq i64 %_388, 1
  br i1 %81, label %bb219, label %bb221

bb219:                                            ; preds = %bb218
  %82 = bitcast i64** %_386 to { [0 x i8]*, i64 }**
  %buf = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %82, align 8, !nonnull !1, !align !2, !noundef !1
  %_390 = load i64, i64* %entry_pos, align 8
  %83 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_581.0 = load [0 x i8]*, [0 x i8]** %83, align 8, !nonnull !1, !align !4, !noundef !1
  %84 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_581.1 = load i64, i64* %84, align 8
  %_392 = icmp ult i64 %_390, %_581.1
  %85 = call i1 @llvm.expect.i1(i1 %_392, i1 true)
  br i1 %85, label %bb220, label %panic6

bb220:                                            ; preds = %bb219
  %86 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 0
  %_582.0 = load [0 x i8]*, [0 x i8]** %86, align 8, !nonnull !1, !align !4, !noundef !1
  %87 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf, i32 0, i32 1
  %_582.1 = load i64, i64* %87, align 8
  %88 = getelementptr inbounds [0 x i8], [0 x i8]* %_582.0, i64 0, i64 %_390
  store i8 0, i8* %88, align 1
  br label %bb221

panic6:                                           ; preds = %bb219
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_390, i64 %_581.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc141 to %"core::panic::location::Location"*)) #14
  unreachable

bb222:                                            ; preds = %bb221
  %89 = bitcast i64** %cb1 to void ([0 x i8]*, i64, i64, {}*)**
  %cb17 = load void ([0 x i8]*, i64, i64, {}*)*, void ([0 x i8]*, i64, i64, {}*)** %89, align 8, !nonnull !1, !noundef !1
  %90 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_398 = load i8, i8* %90, align 1
  %_397 = and i8 %_398, 16
  %91 = icmp eq i8 %_397, 0
  br i1 %91, label %bb226, label %bb227

bb234:                                            ; preds = %bb233, %bb231, %bb229, %bb221
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i8 0, i8* %quoted, align 1
  store i64 0, i64* %spaces, align 8
  br label %bb14

bb226:                                            ; preds = %bb222
  store i8 0, i8* %_396, align 1
  br label %bb228

bb227:                                            ; preds = %bb222
  %92 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_400 = trunc i8 %92 to i1
  %_399 = xor i1 %_400, true
  %93 = zext i1 %_399 to i8
  store i8 %93, i8* %_396, align 1
  br label %bb228

bb228:                                            ; preds = %bb227, %bb226
  %94 = load i8, i8* %_396, align 1, !range !3, !noundef !1
  %95 = trunc i8 %94 to i1
  br i1 %95, label %bb224, label %bb223

bb223:                                            ; preds = %bb228
  store i8 0, i8* %_395, align 1
  br label %bb225

bb224:                                            ; preds = %bb228
  %_402 = load i64, i64* %entry_pos, align 8
  %_401 = icmp eq i64 %_402, 0
  %96 = zext i1 %_401 to i8
  store i8 %96, i8* %_395, align 1
  br label %bb225

bb225:                                            ; preds = %bb224, %bb223
  %97 = load i8, i8* %_395, align 1, !range !3, !noundef !1
  %98 = trunc i8 %97 to i1
  br i1 %98, label %bb229, label %bb230

bb230:                                            ; preds = %bb225
  %_411 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %99 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h750b57f682741169E"({ i8*, i64 }* align 8 %_411)
  store i64* %99, i64** %_410, align 8
  br label %bb231

bb229:                                            ; preds = %bb225
  %_408 = load i64, i64* %entry_pos, align 8
  call void %cb17([0 x i8]* align 1 bitcast (<{}>* @alloc7 to [0 x i8]*), i64 0, i64 %_408, {}* align 1 %data)
  br label %bb234

bb231:                                            ; preds = %bb230
  %100 = bitcast i64** %_410 to {}**
  %101 = load {}*, {}** %100, align 8
  %102 = icmp eq {}* %101, null
  %_412 = select i1 %102, i64 0, i64 1
  %103 = icmp eq i64 %_412, 1
  br i1 %103, label %bb232, label %bb234

bb232:                                            ; preds = %bb231
  %104 = bitcast i64** %_410 to { [0 x i8]*, i64 }**
  %buf8 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %104, align 8, !nonnull !1, !align !2, !noundef !1
  %105 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf8, i32 0, i32 0
  %_583.0 = load [0 x i8]*, [0 x i8]** %105, align 8, !nonnull !1, !align !4, !noundef !1
  %106 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf8, i32 0, i32 1
  %_583.1 = load i64, i64* %106, align 8
  %_421 = load i64, i64* %entry_pos, align 8
  store i64 %_421, i64* %_420, align 8
  %107 = load i64, i64* %_420, align 8
  %108 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0f824cef48a30088E"([0 x i8]* align 1 %_583.0, i64 %_583.1, i64 %107, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc143 to %"core::panic::location::Location"*))
  %_418.0 = extractvalue { [0 x i8]*, i64 } %108, 0
  %_418.1 = extractvalue { [0 x i8]*, i64 } %108, 1
  br label %bb233

bb233:                                            ; preds = %bb232
  %_422 = load i64, i64* %entry_pos, align 8
  call void %cb17([0 x i8]* align 1 %_418.0, i64 %_418.1, i64 %_422, {}* align 1 %data)
  br label %bb234

bb242:                                            ; preds = %bb235
  %109 = icmp eq i32 %_426, 0
  br i1 %109, label %bb240, label %bb239

bb240:                                            ; preds = %bb242
  %_429 = icmp eq i8 %c, 13
  %110 = zext i1 %_429 to i8
  store i8 %110, i8* %_425, align 1
  br label %bb241

bb239:                                            ; preds = %bb242
  store i8 1, i8* %_425, align 1
  br label %bb241

bb241:                                            ; preds = %bb239, %bb240
  %111 = load i8, i8* %_425, align 1, !range !3, !noundef !1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %bb236, label %bb237

bb237:                                            ; preds = %bb241
  %_431 = icmp eq i8 %c, 10
  %113 = zext i1 %_431 to i8
  store i8 %113, i8* %_424, align 1
  br label %bb238

bb236:                                            ; preds = %bb241
  store i8 1, i8* %_424, align 1
  br label %bb238

bb238:                                            ; preds = %bb236, %bb237
  %114 = load i8, i8* %_424, align 1, !range !3, !noundef !1
  %115 = trunc i8 %114 to i1
  br i1 %115, label %bb243, label %bb269

bb269:                                            ; preds = %bb238
  %_490 = call i32 %is_space(i8 %c)
  br label %bb276

bb243:                                            ; preds = %bb238
  %_434 = load i64, i64* %spaces, align 8
  %116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_434, i64 1)
  %_435.0 = extractvalue { i64, i1 } %116, 0
  %_435.1 = extractvalue { i64, i1 } %116, 1
  %117 = call i1 @llvm.expect.i1(i1 %_435.1, i1 false)
  br i1 %117, label %panic9, label %bb244

bb244:                                            ; preds = %bb243
  %118 = load i64, i64* %entry_pos, align 8
  %119 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %118, i64 %_435.0)
  %_436.0 = extractvalue { i64, i1 } %119, 0
  %_436.1 = extractvalue { i64, i1 } %119, 1
  %120 = call i1 @llvm.expect.i1(i1 %_436.1, i1 false)
  br i1 %120, label %panic10, label %bb245

panic9:                                           ; preds = %bb243
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc145 to %"core::panic::location::Location"*)) #14
  unreachable

bb245:                                            ; preds = %bb244
  store i64 %_436.0, i64* %entry_pos, align 8
  %121 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_438 = trunc i8 %121 to i1
  %_437 = xor i1 %_438, true
  br i1 %_437, label %bb246, label %bb248

panic10:                                          ; preds = %bb244
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc147 to %"core::panic::location::Location"*)) #14
  unreachable

bb248:                                            ; preds = %bb247, %bb245
  %122 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_442 = load i8, i8* %122, align 1
  %_441 = and i8 %_442, 8
  %123 = icmp eq i8 %_441, 0
  br i1 %123, label %bb253, label %bb249

bb246:                                            ; preds = %bb245
  %_439 = load i64, i64* %spaces, align 8
  %124 = load i64, i64* %entry_pos, align 8
  %125 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %124, i64 %_439)
  %_440.0 = extractvalue { i64, i1 } %125, 0
  %_440.1 = extractvalue { i64, i1 } %125, 1
  %126 = call i1 @llvm.expect.i1(i1 %_440.1, i1 false)
  br i1 %126, label %panic11, label %bb247

bb247:                                            ; preds = %bb246
  store i64 %_440.0, i64* %entry_pos, align 8
  br label %bb248

panic11:                                          ; preds = %bb246
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc149 to %"core::panic::location::Location"*)) #14
  unreachable

bb253:                                            ; preds = %bb252, %bb250, %bb248
  %127 = bitcast i64** %cb1 to {}**
  %128 = load {}*, {}** %127, align 8
  %129 = icmp eq {}* %128, null
  %_450 = select i1 %129, i64 0, i64 1
  %130 = icmp eq i64 %_450, 1
  br i1 %130, label %bb254, label %bb266

bb249:                                            ; preds = %bb248
  %_444 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %131 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_444)
  store i64* %131, i64** %_443, align 8
  br label %bb250

bb250:                                            ; preds = %bb249
  %132 = bitcast i64** %_443 to {}**
  %133 = load {}*, {}** %132, align 8
  %134 = icmp eq {}* %133, null
  %_445 = select i1 %134, i64 0, i64 1
  %135 = icmp eq i64 %_445, 1
  br i1 %135, label %bb251, label %bb253

bb251:                                            ; preds = %bb250
  %136 = bitcast i64** %_443 to { [0 x i8]*, i64 }**
  %buf12 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %136, align 8, !nonnull !1, !align !2, !noundef !1
  %_447 = load i64, i64* %entry_pos, align 8
  %137 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf12, i32 0, i32 0
  %_584.0 = load [0 x i8]*, [0 x i8]** %137, align 8, !nonnull !1, !align !4, !noundef !1
  %138 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf12, i32 0, i32 1
  %_584.1 = load i64, i64* %138, align 8
  %_449 = icmp ult i64 %_447, %_584.1
  %139 = call i1 @llvm.expect.i1(i1 %_449, i1 true)
  br i1 %139, label %bb252, label %panic13

bb252:                                            ; preds = %bb251
  %140 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf12, i32 0, i32 0
  %_585.0 = load [0 x i8]*, [0 x i8]** %140, align 8, !nonnull !1, !align !4, !noundef !1
  %141 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf12, i32 0, i32 1
  %_585.1 = load i64, i64* %141, align 8
  %142 = getelementptr inbounds [0 x i8], [0 x i8]* %_585.0, i64 0, i64 %_447
  store i8 0, i8* %142, align 1
  br label %bb253

panic13:                                          ; preds = %bb251
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_447, i64 %_584.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc151 to %"core::panic::location::Location"*)) #14
  unreachable

bb254:                                            ; preds = %bb253
  %143 = bitcast i64** %cb1 to void ([0 x i8]*, i64, i64, {}*)**
  %cb114 = load void ([0 x i8]*, i64, i64, {}*)*, void ([0 x i8]*, i64, i64, {}*)** %143, align 8, !nonnull !1, !noundef !1
  %144 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_455 = load i8, i8* %144, align 1
  %_454 = and i8 %_455, 16
  %145 = icmp eq i8 %_454, 0
  br i1 %145, label %bb258, label %bb259

bb266:                                            ; preds = %bb265, %bb263, %bb261, %bb253
  %146 = bitcast i64** %cb2 to {}**
  %147 = load {}*, {}** %146, align 8
  %148 = icmp eq {}* %147, null
  %_481 = select i1 %148, i64 0, i64 1
  %149 = icmp eq i64 %_481, 1
  br i1 %149, label %bb267, label %bb268

bb258:                                            ; preds = %bb254
  store i8 0, i8* %_453, align 1
  br label %bb260

bb259:                                            ; preds = %bb254
  %150 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_457 = trunc i8 %150 to i1
  %_456 = xor i1 %_457, true
  %151 = zext i1 %_456 to i8
  store i8 %151, i8* %_453, align 1
  br label %bb260

bb260:                                            ; preds = %bb259, %bb258
  %152 = load i8, i8* %_453, align 1, !range !3, !noundef !1
  %153 = trunc i8 %152 to i1
  br i1 %153, label %bb256, label %bb255

bb255:                                            ; preds = %bb260
  store i8 0, i8* %_452, align 1
  br label %bb257

bb256:                                            ; preds = %bb260
  %_459 = load i64, i64* %entry_pos, align 8
  %_458 = icmp eq i64 %_459, 0
  %154 = zext i1 %_458 to i8
  store i8 %154, i8* %_452, align 1
  br label %bb257

bb257:                                            ; preds = %bb256, %bb255
  %155 = load i8, i8* %_452, align 1, !range !3, !noundef !1
  %156 = trunc i8 %155 to i1
  br i1 %156, label %bb261, label %bb262

bb262:                                            ; preds = %bb257
  %_468 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %157 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h750b57f682741169E"({ i8*, i64 }* align 8 %_468)
  store i64* %157, i64** %_467, align 8
  br label %bb263

bb261:                                            ; preds = %bb257
  %_465 = load i64, i64* %entry_pos, align 8
  call void %cb114([0 x i8]* align 1 bitcast (<{}>* @alloc7 to [0 x i8]*), i64 0, i64 %_465, {}* align 1 %data)
  br label %bb266

bb263:                                            ; preds = %bb262
  %158 = bitcast i64** %_467 to {}**
  %159 = load {}*, {}** %158, align 8
  %160 = icmp eq {}* %159, null
  %_469 = select i1 %160, i64 0, i64 1
  %161 = icmp eq i64 %_469, 1
  br i1 %161, label %bb264, label %bb266

bb264:                                            ; preds = %bb263
  %162 = bitcast i64** %_467 to { [0 x i8]*, i64 }**
  %buf15 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %162, align 8, !nonnull !1, !align !2, !noundef !1
  %163 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf15, i32 0, i32 0
  %_586.0 = load [0 x i8]*, [0 x i8]** %163, align 8, !nonnull !1, !align !4, !noundef !1
  %164 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf15, i32 0, i32 1
  %_586.1 = load i64, i64* %164, align 8
  %_478 = load i64, i64* %entry_pos, align 8
  store i64 %_478, i64* %_477, align 8
  %165 = load i64, i64* %_477, align 8
  %166 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0f824cef48a30088E"([0 x i8]* align 1 %_586.0, i64 %_586.1, i64 %165, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc153 to %"core::panic::location::Location"*))
  %_475.0 = extractvalue { [0 x i8]*, i64 } %166, 0
  %_475.1 = extractvalue { [0 x i8]*, i64 } %166, 1
  br label %bb265

bb265:                                            ; preds = %bb264
  %_479 = load i64, i64* %entry_pos, align 8
  call void %cb114([0 x i8]* align 1 %_475.0, i64 %_475.1, i64 %_479, {}* align 1 %data)
  br label %bb266

bb267:                                            ; preds = %bb266
  %167 = bitcast i64** %cb2 to void (i32, {}*)**
  %cb216 = load void (i32, {}*)*, void (i32, {}*)** %167, align 8, !nonnull !1, !noundef !1
  %_485 = zext i8 %c to i32
  call void %cb216(i32 %_485, {}* align 1 %data)
  br label %bb268

bb268:                                            ; preds = %bb267, %bb266
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i8 0, i8* %quoted, align 1
  store i64 0, i64* %spaces, align 8
  br label %bb14

bb276:                                            ; preds = %bb269
  %168 = icmp eq i32 %_490, 0
  br i1 %168, label %bb274, label %bb273

bb274:                                            ; preds = %bb276
  %_493 = icmp eq i8 %c, 32
  %169 = zext i1 %_493 to i8
  store i8 %169, i8* %_489, align 1
  br label %bb275

bb273:                                            ; preds = %bb276
  store i8 1, i8* %_489, align 1
  br label %bb275

bb275:                                            ; preds = %bb273, %bb274
  %170 = load i8, i8* %_489, align 1, !range !3, !noundef !1
  %171 = trunc i8 %170 to i1
  br i1 %171, label %bb270, label %bb271

bb271:                                            ; preds = %bb275
  %_495 = icmp eq i8 %c, 9
  %172 = zext i1 %_495 to i8
  store i8 %172, i8* %_488, align 1
  br label %bb272

bb270:                                            ; preds = %bb275
  store i8 1, i8* %_488, align 1
  br label %bb272

bb272:                                            ; preds = %bb270, %bb271
  %173 = load i8, i8* %_488, align 1, !range !3, !noundef !1
  %174 = trunc i8 %173 to i1
  br i1 %174, label %bb277, label %bb284

bb284:                                            ; preds = %bb272
  %_507 = icmp eq i8 %c, %quote
  br i1 %_507, label %bb285, label %bb296

bb277:                                            ; preds = %bb272
  %_498 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %175 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_498)
  store i64* %175, i64** %_497, align 8
  br label %bb278

bb278:                                            ; preds = %bb277
  %176 = bitcast i64** %_497 to {}**
  %177 = load {}*, {}** %176, align 8
  %178 = icmp eq {}* %177, null
  %_499 = select i1 %178, i64 0, i64 1
  %179 = icmp eq i64 %_499, 1
  br i1 %179, label %bb279, label %bb281

bb279:                                            ; preds = %bb278
  %180 = bitcast i64** %_497 to { [0 x i8]*, i64 }**
  %buf17 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %180, align 8, !nonnull !1, !align !2, !noundef !1
  %_502 = load i64, i64* %entry_pos, align 8
  %181 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf17, i32 0, i32 0
  %_587.0 = load [0 x i8]*, [0 x i8]** %181, align 8, !nonnull !1, !align !4, !noundef !1
  %182 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf17, i32 0, i32 1
  %_587.1 = load i64, i64* %182, align 8
  %_504 = icmp ult i64 %_502, %_587.1
  %183 = call i1 @llvm.expect.i1(i1 %_504, i1 true)
  br i1 %183, label %bb280, label %panic18

bb281:                                            ; preds = %bb280, %bb278
  %184 = load i64, i64* %entry_pos, align 8
  %185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %184, i64 1)
  %_505.0 = extractvalue { i64, i1 } %185, 0
  %_505.1 = extractvalue { i64, i1 } %185, 1
  %186 = call i1 @llvm.expect.i1(i1 %_505.1, i1 false)
  br i1 %186, label %panic19, label %bb282

bb280:                                            ; preds = %bb279
  %187 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf17, i32 0, i32 0
  %_588.0 = load [0 x i8]*, [0 x i8]** %187, align 8, !nonnull !1, !align !4, !noundef !1
  %188 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf17, i32 0, i32 1
  %_588.1 = load i64, i64* %188, align 8
  %189 = getelementptr inbounds [0 x i8], [0 x i8]* %_588.0, i64 0, i64 %_502
  store i8 %c, i8* %189, align 1
  br label %bb281

panic18:                                          ; preds = %bb279
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_502, i64 %_587.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc155 to %"core::panic::location::Location"*)) #14
  unreachable

bb282:                                            ; preds = %bb281
  store i64 %_505.0, i64* %entry_pos, align 8
  %190 = load i64, i64* %spaces, align 8
  %191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %190, i64 1)
  %_506.0 = extractvalue { i64, i1 } %191, 0
  %_506.1 = extractvalue { i64, i1 } %191, 1
  %192 = call i1 @llvm.expect.i1(i1 %_506.1, i1 false)
  br i1 %192, label %panic20, label %bb283

panic19:                                          ; preds = %bb281
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc157 to %"core::panic::location::Location"*)) #14
  unreachable

bb283:                                            ; preds = %bb282
  store i64 %_506.0, i64* %spaces, align 8
  br label %bb14

panic20:                                          ; preds = %bb282
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc159 to %"core::panic::location::Location"*)) #14
  unreachable

bb296:                                            ; preds = %bb284
  %193 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_529 = load i8, i8* %193, align 1
  %_528 = and i8 %_529, 1
  %194 = icmp eq i8 %_528, 0
  br i1 %194, label %bb299, label %bb297

bb285:                                            ; preds = %bb284
  %_510 = load i64, i64* %spaces, align 8
  %195 = icmp eq i64 %_510, 0
  br i1 %195, label %bb295, label %bb286

bb295:                                            ; preds = %bb285
  store i32 2, i32* %pstate, align 4
  br label %bb14

bb286:                                            ; preds = %bb285
  %196 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_512 = load i8, i8* %196, align 1
  %_511 = and i8 %_512, 1
  %197 = icmp eq i8 %_511, 0
  br i1 %197, label %bb289, label %bb287

bb289:                                            ; preds = %bb286
  store i64 0, i64* %spaces, align 8
  %_520 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %198 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_520)
  store i64* %198, i64** %_519, align 8
  br label %bb290

bb287:                                            ; preds = %bb286
  %199 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 6
  store i32 1, i32* %199, align 1
  %200 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_513 = trunc i8 %200 to i1
  %201 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %202 = zext i1 %_513 to i8
  store i8 %202, i8* %201, align 1
  %_514 = load i32, i32* %pstate, align 4
  %203 = bitcast %CsvParser* %p to i32*
  store i32 %_514, i32* %203, align 1
  %_515 = load i64, i64* %spaces, align 8
  %204 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  store i64 %_515, i64* %204, align 1
  %_516 = load i64, i64* %entry_pos, align 8
  %205 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  store i64 %_516, i64* %205, align 1
  %_517 = load i64, i64* %pos, align 8
  %206 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_517, i64 1)
  %_518.0 = extractvalue { i64, i1 } %206, 0
  %_518.1 = extractvalue { i64, i1 } %206, 1
  %207 = call i1 @llvm.expect.i1(i1 %_518.1, i1 false)
  br i1 %207, label %panic21, label %bb288

bb288:                                            ; preds = %bb287
  store i64 %_518.0, i64* %3, align 8
  br label %bb306

panic21:                                          ; preds = %bb287
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc161 to %"core::panic::location::Location"*)) #14
  unreachable

bb290:                                            ; preds = %bb289
  %208 = bitcast i64** %_519 to {}**
  %209 = load {}*, {}** %208, align 8
  %210 = icmp eq {}* %209, null
  %_521 = select i1 %210, i64 0, i64 1
  %211 = icmp eq i64 %_521, 1
  br i1 %211, label %bb291, label %bb293

bb291:                                            ; preds = %bb290
  %212 = bitcast i64** %_519 to { [0 x i8]*, i64 }**
  %buf22 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %212, align 8, !nonnull !1, !align !2, !noundef !1
  %_524 = load i64, i64* %entry_pos, align 8
  %213 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf22, i32 0, i32 0
  %_589.0 = load [0 x i8]*, [0 x i8]** %213, align 8, !nonnull !1, !align !4, !noundef !1
  %214 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf22, i32 0, i32 1
  %_589.1 = load i64, i64* %214, align 8
  %_526 = icmp ult i64 %_524, %_589.1
  %215 = call i1 @llvm.expect.i1(i1 %_526, i1 true)
  br i1 %215, label %bb292, label %panic23

bb293:                                            ; preds = %bb292, %bb290
  %216 = load i64, i64* %entry_pos, align 8
  %217 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %216, i64 1)
  %_527.0 = extractvalue { i64, i1 } %217, 0
  %_527.1 = extractvalue { i64, i1 } %217, 1
  %218 = call i1 @llvm.expect.i1(i1 %_527.1, i1 false)
  br i1 %218, label %panic24, label %bb294

bb292:                                            ; preds = %bb291
  %219 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf22, i32 0, i32 0
  %_590.0 = load [0 x i8]*, [0 x i8]** %219, align 8, !nonnull !1, !align !4, !noundef !1
  %220 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf22, i32 0, i32 1
  %_590.1 = load i64, i64* %220, align 8
  %221 = getelementptr inbounds [0 x i8], [0 x i8]* %_590.0, i64 0, i64 %_524
  store i8 %c, i8* %221, align 1
  br label %bb293

panic23:                                          ; preds = %bb291
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_524, i64 %_589.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc163 to %"core::panic::location::Location"*)) #14
  unreachable

bb294:                                            ; preds = %bb293
  store i64 %_527.0, i64* %entry_pos, align 8
  br label %bb14

panic24:                                          ; preds = %bb293
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc165 to %"core::panic::location::Location"*)) #14
  unreachable

bb299:                                            ; preds = %bb296
  store i32 2, i32* %pstate, align 4
  store i64 0, i64* %spaces, align 8
  %_537 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %222 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_537)
  store i64* %222, i64** %_536, align 8
  br label %bb300

bb297:                                            ; preds = %bb296
  %223 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 6
  store i32 1, i32* %223, align 1
  %224 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_530 = trunc i8 %224 to i1
  %225 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %226 = zext i1 %_530 to i8
  store i8 %226, i8* %225, align 1
  %_531 = load i32, i32* %pstate, align 4
  %227 = bitcast %CsvParser* %p to i32*
  store i32 %_531, i32* %227, align 1
  %_532 = load i64, i64* %spaces, align 8
  %228 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  store i64 %_532, i64* %228, align 1
  %_533 = load i64, i64* %entry_pos, align 8
  %229 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  store i64 %_533, i64* %229, align 1
  %_534 = load i64, i64* %pos, align 8
  %230 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_534, i64 1)
  %_535.0 = extractvalue { i64, i1 } %230, 0
  %_535.1 = extractvalue { i64, i1 } %230, 1
  %231 = call i1 @llvm.expect.i1(i1 %_535.1, i1 false)
  br i1 %231, label %panic25, label %bb298

bb298:                                            ; preds = %bb297
  store i64 %_535.0, i64* %3, align 8
  br label %bb306

panic25:                                          ; preds = %bb297
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc167 to %"core::panic::location::Location"*)) #14
  unreachable

bb300:                                            ; preds = %bb299
  %232 = bitcast i64** %_536 to {}**
  %233 = load {}*, {}** %232, align 8
  %234 = icmp eq {}* %233, null
  %_538 = select i1 %234, i64 0, i64 1
  %235 = icmp eq i64 %_538, 1
  br i1 %235, label %bb301, label %bb303

bb301:                                            ; preds = %bb300
  %236 = bitcast i64** %_536 to { [0 x i8]*, i64 }**
  %buf26 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %236, align 8, !nonnull !1, !align !2, !noundef !1
  %_541 = load i64, i64* %entry_pos, align 8
  %237 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf26, i32 0, i32 0
  %_591.0 = load [0 x i8]*, [0 x i8]** %237, align 8, !nonnull !1, !align !4, !noundef !1
  %238 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf26, i32 0, i32 1
  %_591.1 = load i64, i64* %238, align 8
  %_543 = icmp ult i64 %_541, %_591.1
  %239 = call i1 @llvm.expect.i1(i1 %_543, i1 true)
  br i1 %239, label %bb302, label %panic27

bb303:                                            ; preds = %bb302, %bb300
  %240 = load i64, i64* %entry_pos, align 8
  %241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %240, i64 1)
  %_544.0 = extractvalue { i64, i1 } %241, 0
  %_544.1 = extractvalue { i64, i1 } %241, 1
  %242 = call i1 @llvm.expect.i1(i1 %_544.1, i1 false)
  br i1 %242, label %panic28, label %bb304

bb302:                                            ; preds = %bb301
  %243 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf26, i32 0, i32 0
  %_592.0 = load [0 x i8]*, [0 x i8]** %243, align 8, !nonnull !1, !align !4, !noundef !1
  %244 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf26, i32 0, i32 1
  %_592.1 = load i64, i64* %244, align 8
  %245 = getelementptr inbounds [0 x i8], [0 x i8]* %_592.0, i64 0, i64 %_541
  store i8 %c, i8* %245, align 1
  br label %bb303

panic27:                                          ; preds = %bb301
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_541, i64 %_591.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc169 to %"core::panic::location::Location"*)) #14
  unreachable

bb304:                                            ; preds = %bb303
  store i64 %_544.0, i64* %entry_pos, align 8
  br label %bb14

panic28:                                          ; preds = %bb303
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc171 to %"core::panic::location::Location"*)) #14
  unreachable

bb119:                                            ; preds = %bb102
  %_221 = icmp eq i8 %c, %delim
  br i1 %_221, label %bb120, label %bb149

bb103:                                            ; preds = %bb102
  %246 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_194 = trunc i8 %246 to i1
  br i1 %_194, label %bb104, label %bb110

bb110:                                            ; preds = %bb103
  %247 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_205 = load i8, i8* %247, align 1
  %_204 = and i8 %_205, 1
  %248 = icmp eq i8 %_204, 0
  br i1 %248, label %bb113, label %bb111

bb104:                                            ; preds = %bb103
  %_196 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %249 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_196)
  store i64* %249, i64** %_195, align 8
  br label %bb105

bb105:                                            ; preds = %bb104
  %250 = bitcast i64** %_195 to {}**
  %251 = load {}*, {}** %250, align 8
  %252 = icmp eq {}* %251, null
  %_197 = select i1 %252, i64 0, i64 1
  %253 = icmp eq i64 %_197, 1
  br i1 %253, label %bb106, label %bb108

bb106:                                            ; preds = %bb105
  %254 = bitcast i64** %_195 to { [0 x i8]*, i64 }**
  %buf29 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %254, align 8, !nonnull !1, !align !2, !noundef !1
  %_200 = load i64, i64* %entry_pos, align 8
  %255 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf29, i32 0, i32 0
  %_563.0 = load [0 x i8]*, [0 x i8]** %255, align 8, !nonnull !1, !align !4, !noundef !1
  %256 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf29, i32 0, i32 1
  %_563.1 = load i64, i64* %256, align 8
  %_202 = icmp ult i64 %_200, %_563.1
  %257 = call i1 @llvm.expect.i1(i1 %_202, i1 true)
  br i1 %257, label %bb107, label %panic30

bb108:                                            ; preds = %bb107, %bb105
  %258 = load i64, i64* %entry_pos, align 8
  %259 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %258, i64 1)
  %_203.0 = extractvalue { i64, i1 } %259, 0
  %_203.1 = extractvalue { i64, i1 } %259, 1
  %260 = call i1 @llvm.expect.i1(i1 %_203.1, i1 false)
  br i1 %260, label %panic31, label %bb109

bb107:                                            ; preds = %bb106
  %261 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf29, i32 0, i32 0
  %_564.0 = load [0 x i8]*, [0 x i8]** %261, align 8, !nonnull !1, !align !4, !noundef !1
  %262 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf29, i32 0, i32 1
  %_564.1 = load i64, i64* %262, align 8
  %263 = getelementptr inbounds [0 x i8], [0 x i8]* %_564.0, i64 0, i64 %_200
  store i8 %c, i8* %263, align 1
  br label %bb108

panic30:                                          ; preds = %bb106
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_200, i64 %_563.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc173 to %"core::panic::location::Location"*)) #14
  unreachable

bb109:                                            ; preds = %bb108
  store i64 %_203.0, i64* %entry_pos, align 8
  store i32 3, i32* %pstate, align 4
  br label %bb14

panic31:                                          ; preds = %bb108
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc175 to %"core::panic::location::Location"*)) #14
  unreachable

bb113:                                            ; preds = %bb110
  %_213 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %264 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_213)
  store i64* %264, i64** %_212, align 8
  br label %bb114

bb111:                                            ; preds = %bb110
  %265 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 6
  store i32 1, i32* %265, align 1
  %266 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_206 = trunc i8 %266 to i1
  %267 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 1
  %268 = zext i1 %_206 to i8
  store i8 %268, i8* %267, align 1
  %_207 = load i32, i32* %pstate, align 4
  %269 = bitcast %CsvParser* %p to i32*
  store i32 %_207, i32* %269, align 1
  %_208 = load i64, i64* %spaces, align 8
  %270 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 2
  store i64 %_208, i64* %270, align 1
  %_209 = load i64, i64* %entry_pos, align 8
  %271 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 4
  store i64 %_209, i64* %271, align 1
  %_210 = load i64, i64* %pos, align 8
  %272 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_210, i64 1)
  %_211.0 = extractvalue { i64, i1 } %272, 0
  %_211.1 = extractvalue { i64, i1 } %272, 1
  %273 = call i1 @llvm.expect.i1(i1 %_211.1, i1 false)
  br i1 %273, label %panic32, label %bb112

bb112:                                            ; preds = %bb111
  store i64 %_211.0, i64* %3, align 8
  br label %bb306

panic32:                                          ; preds = %bb111
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc177 to %"core::panic::location::Location"*)) #14
  unreachable

bb114:                                            ; preds = %bb113
  %274 = bitcast i64** %_212 to {}**
  %275 = load {}*, {}** %274, align 8
  %276 = icmp eq {}* %275, null
  %_214 = select i1 %276, i64 0, i64 1
  %277 = icmp eq i64 %_214, 1
  br i1 %277, label %bb115, label %bb117

bb115:                                            ; preds = %bb114
  %278 = bitcast i64** %_212 to { [0 x i8]*, i64 }**
  %buf33 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %278, align 8, !nonnull !1, !align !2, !noundef !1
  %_217 = load i64, i64* %entry_pos, align 8
  %279 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf33, i32 0, i32 0
  %_565.0 = load [0 x i8]*, [0 x i8]** %279, align 8, !nonnull !1, !align !4, !noundef !1
  %280 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf33, i32 0, i32 1
  %_565.1 = load i64, i64* %280, align 8
  %_219 = icmp ult i64 %_217, %_565.1
  %281 = call i1 @llvm.expect.i1(i1 %_219, i1 true)
  br i1 %281, label %bb116, label %panic34

bb117:                                            ; preds = %bb116, %bb114
  %282 = load i64, i64* %entry_pos, align 8
  %283 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %282, i64 1)
  %_220.0 = extractvalue { i64, i1 } %283, 0
  %_220.1 = extractvalue { i64, i1 } %283, 1
  %284 = call i1 @llvm.expect.i1(i1 %_220.1, i1 false)
  br i1 %284, label %panic35, label %bb118

bb116:                                            ; preds = %bb115
  %285 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf33, i32 0, i32 0
  %_566.0 = load [0 x i8]*, [0 x i8]** %285, align 8, !nonnull !1, !align !4, !noundef !1
  %286 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf33, i32 0, i32 1
  %_566.1 = load i64, i64* %286, align 8
  %287 = getelementptr inbounds [0 x i8], [0 x i8]* %_566.0, i64 0, i64 %_217
  store i8 %c, i8* %287, align 1
  br label %bb117

panic34:                                          ; preds = %bb115
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_217, i64 %_565.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc179 to %"core::panic::location::Location"*)) #14
  unreachable

bb118:                                            ; preds = %bb117
  store i64 %_220.0, i64* %entry_pos, align 8
  store i64 0, i64* %spaces, align 8
  br label %bb14

panic35:                                          ; preds = %bb117
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc181 to %"core::panic::location::Location"*)) #14
  unreachable

bb149:                                            ; preds = %bb119
  %_280 = call i32 %is_term(i8 %c)
  br label %bb156

bb120:                                            ; preds = %bb119
  %288 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_224 = trunc i8 %288 to i1
  br i1 %_224, label %bb121, label %bb127

bb127:                                            ; preds = %bb120
  %289 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_235 = trunc i8 %289 to i1
  %_234 = xor i1 %_235, true
  br i1 %_234, label %bb128, label %bb130

bb121:                                            ; preds = %bb120
  %_226 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %290 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_226)
  store i64* %290, i64** %_225, align 8
  br label %bb122

bb122:                                            ; preds = %bb121
  %291 = bitcast i64** %_225 to {}**
  %292 = load {}*, {}** %291, align 8
  %293 = icmp eq {}* %292, null
  %_227 = select i1 %293, i64 0, i64 1
  %294 = icmp eq i64 %_227, 1
  br i1 %294, label %bb123, label %bb125

bb123:                                            ; preds = %bb122
  %295 = bitcast i64** %_225 to { [0 x i8]*, i64 }**
  %buf36 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %295, align 8, !nonnull !1, !align !2, !noundef !1
  %_230 = load i64, i64* %entry_pos, align 8
  %296 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf36, i32 0, i32 0
  %_567.0 = load [0 x i8]*, [0 x i8]** %296, align 8, !nonnull !1, !align !4, !noundef !1
  %297 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf36, i32 0, i32 1
  %_567.1 = load i64, i64* %297, align 8
  %_232 = icmp ult i64 %_230, %_567.1
  %298 = call i1 @llvm.expect.i1(i1 %_232, i1 true)
  br i1 %298, label %bb124, label %panic37

bb125:                                            ; preds = %bb124, %bb122
  %299 = load i64, i64* %entry_pos, align 8
  %300 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %299, i64 1)
  %_233.0 = extractvalue { i64, i1 } %300, 0
  %_233.1 = extractvalue { i64, i1 } %300, 1
  %301 = call i1 @llvm.expect.i1(i1 %_233.1, i1 false)
  br i1 %301, label %panic38, label %bb126

bb124:                                            ; preds = %bb123
  %302 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf36, i32 0, i32 0
  %_568.0 = load [0 x i8]*, [0 x i8]** %302, align 8, !nonnull !1, !align !4, !noundef !1
  %303 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf36, i32 0, i32 1
  %_568.1 = load i64, i64* %303, align 8
  %304 = getelementptr inbounds [0 x i8], [0 x i8]* %_568.0, i64 0, i64 %_230
  store i8 %c, i8* %304, align 1
  br label %bb125

panic37:                                          ; preds = %bb123
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_230, i64 %_567.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc183 to %"core::panic::location::Location"*)) #14
  unreachable

bb126:                                            ; preds = %bb125
  store i64 %_233.0, i64* %entry_pos, align 8
  br label %bb14

panic38:                                          ; preds = %bb125
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc185 to %"core::panic::location::Location"*)) #14
  unreachable

bb130:                                            ; preds = %bb129, %bb127
  %305 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_239 = load i8, i8* %305, align 1
  %_238 = and i8 %_239, 8
  %306 = icmp eq i8 %_238, 0
  br i1 %306, label %bb135, label %bb131

bb128:                                            ; preds = %bb127
  %_236 = load i64, i64* %spaces, align 8
  %307 = load i64, i64* %entry_pos, align 8
  %308 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %307, i64 %_236)
  %_237.0 = extractvalue { i64, i1 } %308, 0
  %_237.1 = extractvalue { i64, i1 } %308, 1
  %309 = call i1 @llvm.expect.i1(i1 %_237.1, i1 false)
  br i1 %309, label %panic39, label %bb129

bb129:                                            ; preds = %bb128
  store i64 %_237.0, i64* %entry_pos, align 8
  br label %bb130

panic39:                                          ; preds = %bb128
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc187 to %"core::panic::location::Location"*)) #14
  unreachable

bb135:                                            ; preds = %bb134, %bb132, %bb130
  %310 = bitcast i64** %cb1 to {}**
  %311 = load {}*, {}** %310, align 8
  %312 = icmp eq {}* %311, null
  %_247 = select i1 %312, i64 0, i64 1
  %313 = icmp eq i64 %_247, 1
  br i1 %313, label %bb136, label %bb148

bb131:                                            ; preds = %bb130
  %_241 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %314 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_241)
  store i64* %314, i64** %_240, align 8
  br label %bb132

bb132:                                            ; preds = %bb131
  %315 = bitcast i64** %_240 to {}**
  %316 = load {}*, {}** %315, align 8
  %317 = icmp eq {}* %316, null
  %_242 = select i1 %317, i64 0, i64 1
  %318 = icmp eq i64 %_242, 1
  br i1 %318, label %bb133, label %bb135

bb133:                                            ; preds = %bb132
  %319 = bitcast i64** %_240 to { [0 x i8]*, i64 }**
  %buf40 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %319, align 8, !nonnull !1, !align !2, !noundef !1
  %_244 = load i64, i64* %entry_pos, align 8
  %320 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf40, i32 0, i32 0
  %_569.0 = load [0 x i8]*, [0 x i8]** %320, align 8, !nonnull !1, !align !4, !noundef !1
  %321 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf40, i32 0, i32 1
  %_569.1 = load i64, i64* %321, align 8
  %_246 = icmp ult i64 %_244, %_569.1
  %322 = call i1 @llvm.expect.i1(i1 %_246, i1 true)
  br i1 %322, label %bb134, label %panic41

bb134:                                            ; preds = %bb133
  %323 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf40, i32 0, i32 0
  %_570.0 = load [0 x i8]*, [0 x i8]** %323, align 8, !nonnull !1, !align !4, !noundef !1
  %324 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf40, i32 0, i32 1
  %_570.1 = load i64, i64* %324, align 8
  %325 = getelementptr inbounds [0 x i8], [0 x i8]* %_570.0, i64 0, i64 %_244
  store i8 0, i8* %325, align 1
  br label %bb135

panic41:                                          ; preds = %bb133
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_244, i64 %_569.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc189 to %"core::panic::location::Location"*)) #14
  unreachable

bb136:                                            ; preds = %bb135
  %326 = bitcast i64** %cb1 to void ([0 x i8]*, i64, i64, {}*)**
  %cb142 = load void ([0 x i8]*, i64, i64, {}*)*, void ([0 x i8]*, i64, i64, {}*)** %326, align 8, !nonnull !1, !noundef !1
  %327 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_252 = load i8, i8* %327, align 1
  %_251 = and i8 %_252, 16
  %328 = icmp eq i8 %_251, 0
  br i1 %328, label %bb140, label %bb141

bb148:                                            ; preds = %bb147, %bb145, %bb143, %bb135
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i8 0, i8* %quoted, align 1
  store i64 0, i64* %spaces, align 8
  br label %bb14

bb140:                                            ; preds = %bb136
  store i8 0, i8* %_250, align 1
  br label %bb142

bb141:                                            ; preds = %bb136
  %329 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_254 = trunc i8 %329 to i1
  %_253 = xor i1 %_254, true
  %330 = zext i1 %_253 to i8
  store i8 %330, i8* %_250, align 1
  br label %bb142

bb142:                                            ; preds = %bb141, %bb140
  %331 = load i8, i8* %_250, align 1, !range !3, !noundef !1
  %332 = trunc i8 %331 to i1
  br i1 %332, label %bb138, label %bb137

bb137:                                            ; preds = %bb142
  store i8 0, i8* %_249, align 1
  br label %bb139

bb138:                                            ; preds = %bb142
  %_256 = load i64, i64* %entry_pos, align 8
  %_255 = icmp eq i64 %_256, 0
  %333 = zext i1 %_255 to i8
  store i8 %333, i8* %_249, align 1
  br label %bb139

bb139:                                            ; preds = %bb138, %bb137
  %334 = load i8, i8* %_249, align 1, !range !3, !noundef !1
  %335 = trunc i8 %334 to i1
  br i1 %335, label %bb143, label %bb144

bb144:                                            ; preds = %bb139
  %_265 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %336 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h750b57f682741169E"({ i8*, i64 }* align 8 %_265)
  store i64* %336, i64** %_264, align 8
  br label %bb145

bb143:                                            ; preds = %bb139
  %_262 = load i64, i64* %entry_pos, align 8
  call void %cb142([0 x i8]* align 1 bitcast (<{}>* @alloc7 to [0 x i8]*), i64 0, i64 %_262, {}* align 1 %data)
  br label %bb148

bb145:                                            ; preds = %bb144
  %337 = bitcast i64** %_264 to {}**
  %338 = load {}*, {}** %337, align 8
  %339 = icmp eq {}* %338, null
  %_266 = select i1 %339, i64 0, i64 1
  %340 = icmp eq i64 %_266, 1
  br i1 %340, label %bb146, label %bb148

bb146:                                            ; preds = %bb145
  %341 = bitcast i64** %_264 to { [0 x i8]*, i64 }**
  %buf43 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %341, align 8, !nonnull !1, !align !2, !noundef !1
  %342 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf43, i32 0, i32 0
  %_571.0 = load [0 x i8]*, [0 x i8]** %342, align 8, !nonnull !1, !align !4, !noundef !1
  %343 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf43, i32 0, i32 1
  %_571.1 = load i64, i64* %343, align 8
  %_275 = load i64, i64* %entry_pos, align 8
  store i64 %_275, i64* %_274, align 8
  %344 = load i64, i64* %_274, align 8
  %345 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0f824cef48a30088E"([0 x i8]* align 1 %_571.0, i64 %_571.1, i64 %344, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc191 to %"core::panic::location::Location"*))
  %_272.0 = extractvalue { [0 x i8]*, i64 } %345, 0
  %_272.1 = extractvalue { [0 x i8]*, i64 } %345, 1
  br label %bb147

bb147:                                            ; preds = %bb146
  %_276 = load i64, i64* %entry_pos, align 8
  call void %cb142([0 x i8]* align 1 %_272.0, i64 %_272.1, i64 %_276, {}* align 1 %data)
  br label %bb148

bb156:                                            ; preds = %bb149
  %346 = icmp eq i32 %_280, 0
  br i1 %346, label %bb154, label %bb153

bb154:                                            ; preds = %bb156
  %_283 = icmp eq i8 %c, 13
  %347 = zext i1 %_283 to i8
  store i8 %347, i8* %_279, align 1
  br label %bb155

bb153:                                            ; preds = %bb156
  store i8 1, i8* %_279, align 1
  br label %bb155

bb155:                                            ; preds = %bb153, %bb154
  %348 = load i8, i8* %_279, align 1, !range !3, !noundef !1
  %349 = trunc i8 %348 to i1
  br i1 %349, label %bb150, label %bb151

bb151:                                            ; preds = %bb155
  %_285 = icmp eq i8 %c, 10
  %350 = zext i1 %_285 to i8
  store i8 %350, i8* %_278, align 1
  br label %bb152

bb150:                                            ; preds = %bb155
  store i8 1, i8* %_278, align 1
  br label %bb152

bb152:                                            ; preds = %bb150, %bb151
  %351 = load i8, i8* %_278, align 1, !range !3, !noundef !1
  %352 = trunc i8 %351 to i1
  br i1 %352, label %bb157, label %bb186

bb186:                                            ; preds = %bb152
  %353 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_344 = trunc i8 %353 to i1
  %_343 = xor i1 %_344, true
  br i1 %_343, label %bb188, label %bb187

bb157:                                            ; preds = %bb152
  %354 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_288 = trunc i8 %354 to i1
  %_287 = xor i1 %_288, true
  br i1 %_287, label %bb158, label %bb180

bb180:                                            ; preds = %bb157
  %_334 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %355 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_334)
  store i64* %355, i64** %_333, align 8
  br label %bb181

bb158:                                            ; preds = %bb157
  %356 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_290 = trunc i8 %356 to i1
  %_289 = xor i1 %_290, true
  br i1 %_289, label %bb159, label %bb161

bb161:                                            ; preds = %bb160, %bb158
  %357 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_294 = load i8, i8* %357, align 1
  %_293 = and i8 %_294, 8
  %358 = icmp eq i8 %_293, 0
  br i1 %358, label %bb166, label %bb162

bb159:                                            ; preds = %bb158
  %_291 = load i64, i64* %spaces, align 8
  %359 = load i64, i64* %entry_pos, align 8
  %360 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %359, i64 %_291)
  %_292.0 = extractvalue { i64, i1 } %360, 0
  %_292.1 = extractvalue { i64, i1 } %360, 1
  %361 = call i1 @llvm.expect.i1(i1 %_292.1, i1 false)
  br i1 %361, label %panic44, label %bb160

bb160:                                            ; preds = %bb159
  store i64 %_292.0, i64* %entry_pos, align 8
  br label %bb161

panic44:                                          ; preds = %bb159
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc193 to %"core::panic::location::Location"*)) #14
  unreachable

bb166:                                            ; preds = %bb165, %bb163, %bb161
  %362 = bitcast i64** %cb1 to {}**
  %363 = load {}*, {}** %362, align 8
  %364 = icmp eq {}* %363, null
  %_302 = select i1 %364, i64 0, i64 1
  %365 = icmp eq i64 %_302, 1
  br i1 %365, label %bb167, label %bb179

bb162:                                            ; preds = %bb161
  %_296 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %366 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_296)
  store i64* %366, i64** %_295, align 8
  br label %bb163

bb163:                                            ; preds = %bb162
  %367 = bitcast i64** %_295 to {}**
  %368 = load {}*, {}** %367, align 8
  %369 = icmp eq {}* %368, null
  %_297 = select i1 %369, i64 0, i64 1
  %370 = icmp eq i64 %_297, 1
  br i1 %370, label %bb164, label %bb166

bb164:                                            ; preds = %bb163
  %371 = bitcast i64** %_295 to { [0 x i8]*, i64 }**
  %buf45 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %371, align 8, !nonnull !1, !align !2, !noundef !1
  %_299 = load i64, i64* %entry_pos, align 8
  %372 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf45, i32 0, i32 0
  %_572.0 = load [0 x i8]*, [0 x i8]** %372, align 8, !nonnull !1, !align !4, !noundef !1
  %373 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf45, i32 0, i32 1
  %_572.1 = load i64, i64* %373, align 8
  %_301 = icmp ult i64 %_299, %_572.1
  %374 = call i1 @llvm.expect.i1(i1 %_301, i1 true)
  br i1 %374, label %bb165, label %panic46

bb165:                                            ; preds = %bb164
  %375 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf45, i32 0, i32 0
  %_573.0 = load [0 x i8]*, [0 x i8]** %375, align 8, !nonnull !1, !align !4, !noundef !1
  %376 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf45, i32 0, i32 1
  %_573.1 = load i64, i64* %376, align 8
  %377 = getelementptr inbounds [0 x i8], [0 x i8]* %_573.0, i64 0, i64 %_299
  store i8 0, i8* %377, align 1
  br label %bb166

panic46:                                          ; preds = %bb164
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_299, i64 %_572.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc195 to %"core::panic::location::Location"*)) #14
  unreachable

bb167:                                            ; preds = %bb166
  %378 = bitcast i64** %cb1 to void ([0 x i8]*, i64, i64, {}*)**
  %cb147 = load void ([0 x i8]*, i64, i64, {}*)*, void ([0 x i8]*, i64, i64, {}*)** %378, align 8, !nonnull !1, !noundef !1
  %379 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_307 = load i8, i8* %379, align 1
  %_306 = and i8 %_307, 16
  %380 = icmp eq i8 %_306, 0
  br i1 %380, label %bb171, label %bb172

bb179:                                            ; preds = %bb178, %bb176, %bb174, %bb166
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i8 0, i8* %quoted, align 1
  store i64 0, i64* %spaces, align 8
  br label %bb14

bb171:                                            ; preds = %bb167
  store i8 0, i8* %_305, align 1
  br label %bb173

bb172:                                            ; preds = %bb167
  %381 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_309 = trunc i8 %381 to i1
  %_308 = xor i1 %_309, true
  %382 = zext i1 %_308 to i8
  store i8 %382, i8* %_305, align 1
  br label %bb173

bb173:                                            ; preds = %bb172, %bb171
  %383 = load i8, i8* %_305, align 1, !range !3, !noundef !1
  %384 = trunc i8 %383 to i1
  br i1 %384, label %bb169, label %bb168

bb168:                                            ; preds = %bb173
  store i8 0, i8* %_304, align 1
  br label %bb170

bb169:                                            ; preds = %bb173
  %_311 = load i64, i64* %entry_pos, align 8
  %_310 = icmp eq i64 %_311, 0
  %385 = zext i1 %_310 to i8
  store i8 %385, i8* %_304, align 1
  br label %bb170

bb170:                                            ; preds = %bb169, %bb168
  %386 = load i8, i8* %_304, align 1, !range !3, !noundef !1
  %387 = trunc i8 %386 to i1
  br i1 %387, label %bb174, label %bb175

bb175:                                            ; preds = %bb170
  %_320 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %388 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h750b57f682741169E"({ i8*, i64 }* align 8 %_320)
  store i64* %388, i64** %_319, align 8
  br label %bb176

bb174:                                            ; preds = %bb170
  %_317 = load i64, i64* %entry_pos, align 8
  call void %cb147([0 x i8]* align 1 bitcast (<{}>* @alloc7 to [0 x i8]*), i64 0, i64 %_317, {}* align 1 %data)
  br label %bb179

bb176:                                            ; preds = %bb175
  %389 = bitcast i64** %_319 to {}**
  %390 = load {}*, {}** %389, align 8
  %391 = icmp eq {}* %390, null
  %_321 = select i1 %391, i64 0, i64 1
  %392 = icmp eq i64 %_321, 1
  br i1 %392, label %bb177, label %bb179

bb177:                                            ; preds = %bb176
  %393 = bitcast i64** %_319 to { [0 x i8]*, i64 }**
  %buf48 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %393, align 8, !nonnull !1, !align !2, !noundef !1
  %394 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf48, i32 0, i32 0
  %_574.0 = load [0 x i8]*, [0 x i8]** %394, align 8, !nonnull !1, !align !4, !noundef !1
  %395 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf48, i32 0, i32 1
  %_574.1 = load i64, i64* %395, align 8
  %_330 = load i64, i64* %entry_pos, align 8
  store i64 %_330, i64* %_329, align 8
  %396 = load i64, i64* %_329, align 8
  %397 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0f824cef48a30088E"([0 x i8]* align 1 %_574.0, i64 %_574.1, i64 %396, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc197 to %"core::panic::location::Location"*))
  %_327.0 = extractvalue { [0 x i8]*, i64 } %397, 0
  %_327.1 = extractvalue { [0 x i8]*, i64 } %397, 1
  br label %bb178

bb178:                                            ; preds = %bb177
  %_331 = load i64, i64* %entry_pos, align 8
  call void %cb147([0 x i8]* align 1 %_327.0, i64 %_327.1, i64 %_331, {}* align 1 %data)
  br label %bb179

bb181:                                            ; preds = %bb180
  %398 = bitcast i64** %_333 to {}**
  %399 = load {}*, {}** %398, align 8
  %400 = icmp eq {}* %399, null
  %_335 = select i1 %400, i64 0, i64 1
  %401 = icmp eq i64 %_335, 1
  br i1 %401, label %bb182, label %bb184

bb182:                                            ; preds = %bb181
  %402 = bitcast i64** %_333 to { [0 x i8]*, i64 }**
  %buf49 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %402, align 8, !nonnull !1, !align !2, !noundef !1
  %_338 = load i64, i64* %entry_pos, align 8
  %403 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf49, i32 0, i32 0
  %_575.0 = load [0 x i8]*, [0 x i8]** %403, align 8, !nonnull !1, !align !4, !noundef !1
  %404 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf49, i32 0, i32 1
  %_575.1 = load i64, i64* %404, align 8
  %_340 = icmp ult i64 %_338, %_575.1
  %405 = call i1 @llvm.expect.i1(i1 %_340, i1 true)
  br i1 %405, label %bb183, label %panic50

bb184:                                            ; preds = %bb183, %bb181
  %406 = load i64, i64* %entry_pos, align 8
  %407 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %406, i64 1)
  %_341.0 = extractvalue { i64, i1 } %407, 0
  %_341.1 = extractvalue { i64, i1 } %407, 1
  %408 = call i1 @llvm.expect.i1(i1 %_341.1, i1 false)
  br i1 %408, label %panic51, label %bb185

bb183:                                            ; preds = %bb182
  %409 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf49, i32 0, i32 0
  %_576.0 = load [0 x i8]*, [0 x i8]** %409, align 8, !nonnull !1, !align !4, !noundef !1
  %410 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf49, i32 0, i32 1
  %_576.1 = load i64, i64* %410, align 8
  %411 = getelementptr inbounds [0 x i8], [0 x i8]* %_576.0, i64 0, i64 %_338
  store i8 %c, i8* %411, align 1
  br label %bb184

panic50:                                          ; preds = %bb182
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_338, i64 %_575.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc199 to %"core::panic::location::Location"*)) #14
  unreachable

bb185:                                            ; preds = %bb184
  store i64 %_341.0, i64* %entry_pos, align 8
  br label %bb14

panic51:                                          ; preds = %bb184
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc201 to %"core::panic::location::Location"*)) #14
  unreachable

bb187:                                            ; preds = %bb186
  store i8 0, i8* %_342, align 1
  br label %bb189

bb188:                                            ; preds = %bb186
  %_347 = call i32 %is_space(i8 %c)
  br label %bb196

bb196:                                            ; preds = %bb188
  %412 = icmp eq i32 %_347, 0
  br i1 %412, label %bb194, label %bb193

bb194:                                            ; preds = %bb196
  %_350 = icmp eq i8 %c, 32
  %413 = zext i1 %_350 to i8
  store i8 %413, i8* %_346, align 1
  br label %bb195

bb193:                                            ; preds = %bb196
  store i8 1, i8* %_346, align 1
  br label %bb195

bb195:                                            ; preds = %bb193, %bb194
  %414 = load i8, i8* %_346, align 1, !range !3, !noundef !1
  %415 = trunc i8 %414 to i1
  br i1 %415, label %bb190, label %bb191

bb191:                                            ; preds = %bb195
  %_352 = icmp eq i8 %c, 9
  %416 = zext i1 %_352 to i8
  store i8 %416, i8* %_345, align 1
  br label %bb192

bb190:                                            ; preds = %bb195
  store i8 1, i8* %_345, align 1
  br label %bb192

bb192:                                            ; preds = %bb190, %bb191
  %417 = load i8, i8* %_345, align 1, !range !3, !noundef !1
  %418 = trunc i8 %417 to i1
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %_342, align 1
  br label %bb189

bb189:                                            ; preds = %bb192, %bb187
  %420 = load i8, i8* %_342, align 1, !range !3, !noundef !1
  %421 = trunc i8 %420 to i1
  br i1 %421, label %bb197, label %bb204

bb204:                                            ; preds = %bb189
  %_365 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %422 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_365)
  store i64* %422, i64** %_364, align 8
  br label %bb205

bb197:                                            ; preds = %bb189
  %_355 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %423 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_355)
  store i64* %423, i64** %_354, align 8
  br label %bb198

bb198:                                            ; preds = %bb197
  %424 = bitcast i64** %_354 to {}**
  %425 = load {}*, {}** %424, align 8
  %426 = icmp eq {}* %425, null
  %_356 = select i1 %426, i64 0, i64 1
  %427 = icmp eq i64 %_356, 1
  br i1 %427, label %bb199, label %bb201

bb199:                                            ; preds = %bb198
  %428 = bitcast i64** %_354 to { [0 x i8]*, i64 }**
  %buf52 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %428, align 8, !nonnull !1, !align !2, !noundef !1
  %_359 = load i64, i64* %entry_pos, align 8
  %429 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf52, i32 0, i32 0
  %_577.0 = load [0 x i8]*, [0 x i8]** %429, align 8, !nonnull !1, !align !4, !noundef !1
  %430 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf52, i32 0, i32 1
  %_577.1 = load i64, i64* %430, align 8
  %_361 = icmp ult i64 %_359, %_577.1
  %431 = call i1 @llvm.expect.i1(i1 %_361, i1 true)
  br i1 %431, label %bb200, label %panic53

bb201:                                            ; preds = %bb200, %bb198
  %432 = load i64, i64* %entry_pos, align 8
  %433 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %432, i64 1)
  %_362.0 = extractvalue { i64, i1 } %433, 0
  %_362.1 = extractvalue { i64, i1 } %433, 1
  %434 = call i1 @llvm.expect.i1(i1 %_362.1, i1 false)
  br i1 %434, label %panic54, label %bb202

bb200:                                            ; preds = %bb199
  %435 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf52, i32 0, i32 0
  %_578.0 = load [0 x i8]*, [0 x i8]** %435, align 8, !nonnull !1, !align !4, !noundef !1
  %436 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf52, i32 0, i32 1
  %_578.1 = load i64, i64* %436, align 8
  %437 = getelementptr inbounds [0 x i8], [0 x i8]* %_578.0, i64 0, i64 %_359
  store i8 %c, i8* %437, align 1
  br label %bb201

panic53:                                          ; preds = %bb199
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_359, i64 %_577.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc203 to %"core::panic::location::Location"*)) #14
  unreachable

bb202:                                            ; preds = %bb201
  store i64 %_362.0, i64* %entry_pos, align 8
  %438 = load i64, i64* %spaces, align 8
  %439 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %438, i64 1)
  %_363.0 = extractvalue { i64, i1 } %439, 0
  %_363.1 = extractvalue { i64, i1 } %439, 1
  %440 = call i1 @llvm.expect.i1(i1 %_363.1, i1 false)
  br i1 %440, label %panic55, label %bb203

panic54:                                          ; preds = %bb201
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc205 to %"core::panic::location::Location"*)) #14
  unreachable

bb203:                                            ; preds = %bb202
  store i64 %_363.0, i64* %spaces, align 8
  br label %bb14

panic55:                                          ; preds = %bb202
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc207 to %"core::panic::location::Location"*)) #14
  unreachable

bb205:                                            ; preds = %bb204
  %441 = bitcast i64** %_364 to {}**
  %442 = load {}*, {}** %441, align 8
  %443 = icmp eq {}* %442, null
  %_366 = select i1 %443, i64 0, i64 1
  %444 = icmp eq i64 %_366, 1
  br i1 %444, label %bb206, label %bb208

bb206:                                            ; preds = %bb205
  %445 = bitcast i64** %_364 to { [0 x i8]*, i64 }**
  %buf56 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %445, align 8, !nonnull !1, !align !2, !noundef !1
  %_369 = load i64, i64* %entry_pos, align 8
  %446 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf56, i32 0, i32 0
  %_579.0 = load [0 x i8]*, [0 x i8]** %446, align 8, !nonnull !1, !align !4, !noundef !1
  %447 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf56, i32 0, i32 1
  %_579.1 = load i64, i64* %447, align 8
  %_371 = icmp ult i64 %_369, %_579.1
  %448 = call i1 @llvm.expect.i1(i1 %_371, i1 true)
  br i1 %448, label %bb207, label %panic57

bb208:                                            ; preds = %bb207, %bb205
  %449 = load i64, i64* %entry_pos, align 8
  %450 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %449, i64 1)
  %_372.0 = extractvalue { i64, i1 } %450, 0
  %_372.1 = extractvalue { i64, i1 } %450, 1
  %451 = call i1 @llvm.expect.i1(i1 %_372.1, i1 false)
  br i1 %451, label %panic58, label %bb209

bb207:                                            ; preds = %bb206
  %452 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf56, i32 0, i32 0
  %_580.0 = load [0 x i8]*, [0 x i8]** %452, align 8, !nonnull !1, !align !4, !noundef !1
  %453 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf56, i32 0, i32 1
  %_580.1 = load i64, i64* %453, align 8
  %454 = getelementptr inbounds [0 x i8], [0 x i8]* %_580.0, i64 0, i64 %_369
  store i8 %c, i8* %454, align 1
  br label %bb208

panic57:                                          ; preds = %bb206
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_369, i64 %_579.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc209 to %"core::panic::location::Location"*)) #14
  unreachable

bb209:                                            ; preds = %bb208
  store i64 %_372.0, i64* %entry_pos, align 8
  store i64 0, i64* %spaces, align 8
  br label %bb14

panic58:                                          ; preds = %bb208
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc211 to %"core::panic::location::Location"*)) #14
  unreachable

bb36:                                             ; preds = %bb26
  %455 = icmp eq i32 %_61, 0
  br i1 %455, label %bb34, label %bb33

bb34:                                             ; preds = %bb36
  %_64 = icmp eq i8 %c, 32
  %456 = zext i1 %_64 to i8
  store i8 %456, i8* %_60, align 1
  br label %bb35

bb33:                                             ; preds = %bb36
  store i8 1, i8* %_60, align 1
  br label %bb35

bb35:                                             ; preds = %bb33, %bb34
  %457 = load i8, i8* %_60, align 1, !range !3, !noundef !1
  %458 = trunc i8 %457 to i1
  br i1 %458, label %bb30, label %bb31

bb31:                                             ; preds = %bb35
  %_66 = icmp eq i8 %c, 9
  %459 = zext i1 %_66 to i8
  store i8 %459, i8* %_59, align 1
  br label %bb32

bb30:                                             ; preds = %bb35
  store i8 1, i8* %_59, align 1
  br label %bb32

bb32:                                             ; preds = %bb30, %bb31
  %460 = load i8, i8* %_59, align 1, !range !3, !noundef !1
  %461 = trunc i8 %460 to i1
  br i1 %461, label %bb28, label %bb27

bb27:                                             ; preds = %bb32
  store i8 0, i8* %_58, align 1
  br label %bb29

bb28:                                             ; preds = %bb32
  %_68 = icmp ne i8 %c, %delim
  %462 = zext i1 %_68 to i8
  store i8 %462, i8* %_58, align 1
  br label %bb29

bb29:                                             ; preds = %bb28, %bb27
  %463 = load i8, i8* %_58, align 1, !range !3, !noundef !1
  %464 = trunc i8 %463 to i1
  br i1 %464, label %bb14, label %bb37

bb37:                                             ; preds = %bb29
  %_73 = call i32 %is_term(i8 %c)
  br label %bb44

bb44:                                             ; preds = %bb37
  %465 = icmp eq i32 %_73, 0
  br i1 %465, label %bb42, label %bb41

bb42:                                             ; preds = %bb44
  %_76 = icmp eq i8 %c, 13
  %466 = zext i1 %_76 to i8
  store i8 %466, i8* %_72, align 1
  br label %bb43

bb41:                                             ; preds = %bb44
  store i8 1, i8* %_72, align 1
  br label %bb43

bb43:                                             ; preds = %bb41, %bb42
  %467 = load i8, i8* %_72, align 1, !range !3, !noundef !1
  %468 = trunc i8 %467 to i1
  br i1 %468, label %bb38, label %bb39

bb39:                                             ; preds = %bb43
  %_78 = icmp eq i8 %c, 10
  %469 = zext i1 %_78 to i8
  store i8 %469, i8* %_71, align 1
  br label %bb40

bb38:                                             ; preds = %bb43
  store i8 1, i8* %_71, align 1
  br label %bb40

bb40:                                             ; preds = %bb38, %bb39
  %470 = load i8, i8* %_71, align 1, !range !3, !noundef !1
  %471 = trunc i8 %470 to i1
  br i1 %471, label %bb45, label %bb71

bb71:                                             ; preds = %bb40
  %_132 = icmp eq i8 %c, %delim
  br i1 %_132, label %bb72, label %bb94

bb45:                                             ; preds = %bb40
  %_80 = load i32, i32* %pstate, align 4
  %472 = icmp eq i32 %_80, 1
  br i1 %472, label %bb46, label %bb68

bb46:                                             ; preds = %bb45
  %473 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_82 = trunc i8 %473 to i1
  %_81 = xor i1 %_82, true
  br i1 %_81, label %bb47, label %bb49

bb68:                                             ; preds = %bb67, %bb45
  %474 = bitcast i64** %cb2 to {}**
  %475 = load {}*, {}** %474, align 8
  %476 = icmp eq {}* %475, null
  %_125 = select i1 %476, i64 0, i64 1
  %477 = icmp eq i64 %_125, 1
  br i1 %477, label %bb69, label %bb70

bb49:                                             ; preds = %bb48, %bb46
  %478 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_86 = load i8, i8* %478, align 1
  %_85 = and i8 %_86, 8
  %479 = icmp eq i8 %_85, 0
  br i1 %479, label %bb54, label %bb50

bb47:                                             ; preds = %bb46
  %_83 = load i64, i64* %spaces, align 8
  %480 = load i64, i64* %entry_pos, align 8
  %481 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %480, i64 %_83)
  %_84.0 = extractvalue { i64, i1 } %481, 0
  %_84.1 = extractvalue { i64, i1 } %481, 1
  %482 = call i1 @llvm.expect.i1(i1 %_84.1, i1 false)
  br i1 %482, label %panic59, label %bb48

bb48:                                             ; preds = %bb47
  store i64 %_84.0, i64* %entry_pos, align 8
  br label %bb49

panic59:                                          ; preds = %bb47
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc213 to %"core::panic::location::Location"*)) #14
  unreachable

bb54:                                             ; preds = %bb53, %bb51, %bb49
  %483 = bitcast i64** %cb1 to {}**
  %484 = load {}*, {}** %483, align 8
  %485 = icmp eq {}* %484, null
  %_94 = select i1 %485, i64 0, i64 1
  %486 = icmp eq i64 %_94, 1
  br i1 %486, label %bb55, label %bb67

bb50:                                             ; preds = %bb49
  %_88 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %487 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_88)
  store i64* %487, i64** %_87, align 8
  br label %bb51

bb51:                                             ; preds = %bb50
  %488 = bitcast i64** %_87 to {}**
  %489 = load {}*, {}** %488, align 8
  %490 = icmp eq {}* %489, null
  %_89 = select i1 %490, i64 0, i64 1
  %491 = icmp eq i64 %_89, 1
  br i1 %491, label %bb52, label %bb54

bb52:                                             ; preds = %bb51
  %492 = bitcast i64** %_87 to { [0 x i8]*, i64 }**
  %buf60 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %492, align 8, !nonnull !1, !align !2, !noundef !1
  %_91 = load i64, i64* %entry_pos, align 8
  %493 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf60, i32 0, i32 0
  %_555.0 = load [0 x i8]*, [0 x i8]** %493, align 8, !nonnull !1, !align !4, !noundef !1
  %494 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf60, i32 0, i32 1
  %_555.1 = load i64, i64* %494, align 8
  %_93 = icmp ult i64 %_91, %_555.1
  %495 = call i1 @llvm.expect.i1(i1 %_93, i1 true)
  br i1 %495, label %bb53, label %panic61

bb53:                                             ; preds = %bb52
  %496 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf60, i32 0, i32 0
  %_556.0 = load [0 x i8]*, [0 x i8]** %496, align 8, !nonnull !1, !align !4, !noundef !1
  %497 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf60, i32 0, i32 1
  %_556.1 = load i64, i64* %497, align 8
  %498 = getelementptr inbounds [0 x i8], [0 x i8]* %_556.0, i64 0, i64 %_91
  store i8 0, i8* %498, align 1
  br label %bb54

panic61:                                          ; preds = %bb52
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_91, i64 %_555.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc215 to %"core::panic::location::Location"*)) #14
  unreachable

bb55:                                             ; preds = %bb54
  %499 = bitcast i64** %cb1 to void ([0 x i8]*, i64, i64, {}*)**
  %cb162 = load void ([0 x i8]*, i64, i64, {}*)*, void ([0 x i8]*, i64, i64, {}*)** %499, align 8, !nonnull !1, !noundef !1
  %500 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_99 = load i8, i8* %500, align 1
  %_98 = and i8 %_99, 16
  %501 = icmp eq i8 %_98, 0
  br i1 %501, label %bb59, label %bb60

bb67:                                             ; preds = %bb66, %bb64, %bb62, %bb54
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i8 0, i8* %quoted, align 1
  store i64 0, i64* %spaces, align 8
  br label %bb68

bb59:                                             ; preds = %bb55
  store i8 0, i8* %_97, align 1
  br label %bb61

bb60:                                             ; preds = %bb55
  %502 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_101 = trunc i8 %502 to i1
  %_100 = xor i1 %_101, true
  %503 = zext i1 %_100 to i8
  store i8 %503, i8* %_97, align 1
  br label %bb61

bb61:                                             ; preds = %bb60, %bb59
  %504 = load i8, i8* %_97, align 1, !range !3, !noundef !1
  %505 = trunc i8 %504 to i1
  br i1 %505, label %bb57, label %bb56

bb56:                                             ; preds = %bb61
  store i8 0, i8* %_96, align 1
  br label %bb58

bb57:                                             ; preds = %bb61
  %_103 = load i64, i64* %entry_pos, align 8
  %_102 = icmp eq i64 %_103, 0
  %506 = zext i1 %_102 to i8
  store i8 %506, i8* %_96, align 1
  br label %bb58

bb58:                                             ; preds = %bb57, %bb56
  %507 = load i8, i8* %_96, align 1, !range !3, !noundef !1
  %508 = trunc i8 %507 to i1
  br i1 %508, label %bb62, label %bb63

bb63:                                             ; preds = %bb58
  %_112 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %509 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h750b57f682741169E"({ i8*, i64 }* align 8 %_112)
  store i64* %509, i64** %_111, align 8
  br label %bb64

bb62:                                             ; preds = %bb58
  %_109 = load i64, i64* %entry_pos, align 8
  call void %cb162([0 x i8]* align 1 bitcast (<{}>* @alloc7 to [0 x i8]*), i64 0, i64 %_109, {}* align 1 %data)
  br label %bb67

bb64:                                             ; preds = %bb63
  %510 = bitcast i64** %_111 to {}**
  %511 = load {}*, {}** %510, align 8
  %512 = icmp eq {}* %511, null
  %_113 = select i1 %512, i64 0, i64 1
  %513 = icmp eq i64 %_113, 1
  br i1 %513, label %bb65, label %bb67

bb65:                                             ; preds = %bb64
  %514 = bitcast i64** %_111 to { [0 x i8]*, i64 }**
  %buf63 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %514, align 8, !nonnull !1, !align !2, !noundef !1
  %515 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf63, i32 0, i32 0
  %_557.0 = load [0 x i8]*, [0 x i8]** %515, align 8, !nonnull !1, !align !4, !noundef !1
  %516 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf63, i32 0, i32 1
  %_557.1 = load i64, i64* %516, align 8
  %_122 = load i64, i64* %entry_pos, align 8
  store i64 %_122, i64* %_121, align 8
  %517 = load i64, i64* %_121, align 8
  %518 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0f824cef48a30088E"([0 x i8]* align 1 %_557.0, i64 %_557.1, i64 %517, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc217 to %"core::panic::location::Location"*))
  %_119.0 = extractvalue { [0 x i8]*, i64 } %518, 0
  %_119.1 = extractvalue { [0 x i8]*, i64 } %518, 1
  br label %bb66

bb66:                                             ; preds = %bb65
  %_123 = load i64, i64* %entry_pos, align 8
  call void %cb162([0 x i8]* align 1 %_119.0, i64 %_119.1, i64 %_123, {}* align 1 %data)
  br label %bb67

bb69:                                             ; preds = %bb68
  %519 = bitcast i64** %cb2 to void (i32, {}*)**
  %cb264 = load void (i32, {}*)*, void (i32, {}*)** %519, align 8, !nonnull !1, !noundef !1
  %_129 = zext i8 %c to i32
  call void %cb264(i32 %_129, {}* align 1 %data)
  br label %bb70

bb70:                                             ; preds = %bb69, %bb68
  store i32 0, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i8 0, i8* %quoted, align 1
  store i64 0, i64* %spaces, align 8
  br label %bb14

bb94:                                             ; preds = %bb71
  %_179 = icmp eq i8 %c, %quote
  br i1 %_179, label %bb95, label %bb96

bb72:                                             ; preds = %bb71
  %520 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_136 = trunc i8 %520 to i1
  %_135 = xor i1 %_136, true
  br i1 %_135, label %bb73, label %bb75

bb75:                                             ; preds = %bb74, %bb72
  %521 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_140 = load i8, i8* %521, align 1
  %_139 = and i8 %_140, 8
  %522 = icmp eq i8 %_139, 0
  br i1 %522, label %bb80, label %bb76

bb73:                                             ; preds = %bb72
  %_137 = load i64, i64* %spaces, align 8
  %523 = load i64, i64* %entry_pos, align 8
  %524 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %523, i64 %_137)
  %_138.0 = extractvalue { i64, i1 } %524, 0
  %_138.1 = extractvalue { i64, i1 } %524, 1
  %525 = call i1 @llvm.expect.i1(i1 %_138.1, i1 false)
  br i1 %525, label %panic65, label %bb74

bb74:                                             ; preds = %bb73
  store i64 %_138.0, i64* %entry_pos, align 8
  br label %bb75

panic65:                                          ; preds = %bb73
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc219 to %"core::panic::location::Location"*)) #14
  unreachable

bb80:                                             ; preds = %bb79, %bb77, %bb75
  %526 = bitcast i64** %cb1 to {}**
  %527 = load {}*, {}** %526, align 8
  %528 = icmp eq {}* %527, null
  %_148 = select i1 %528, i64 0, i64 1
  %529 = icmp eq i64 %_148, 1
  br i1 %529, label %bb81, label %bb93

bb76:                                             ; preds = %bb75
  %_142 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %530 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_142)
  store i64* %530, i64** %_141, align 8
  br label %bb77

bb77:                                             ; preds = %bb76
  %531 = bitcast i64** %_141 to {}**
  %532 = load {}*, {}** %531, align 8
  %533 = icmp eq {}* %532, null
  %_143 = select i1 %533, i64 0, i64 1
  %534 = icmp eq i64 %_143, 1
  br i1 %534, label %bb78, label %bb80

bb78:                                             ; preds = %bb77
  %535 = bitcast i64** %_141 to { [0 x i8]*, i64 }**
  %buf66 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %535, align 8, !nonnull !1, !align !2, !noundef !1
  %_145 = load i64, i64* %entry_pos, align 8
  %536 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf66, i32 0, i32 0
  %_558.0 = load [0 x i8]*, [0 x i8]** %536, align 8, !nonnull !1, !align !4, !noundef !1
  %537 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf66, i32 0, i32 1
  %_558.1 = load i64, i64* %537, align 8
  %_147 = icmp ult i64 %_145, %_558.1
  %538 = call i1 @llvm.expect.i1(i1 %_147, i1 true)
  br i1 %538, label %bb79, label %panic67

bb79:                                             ; preds = %bb78
  %539 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf66, i32 0, i32 0
  %_559.0 = load [0 x i8]*, [0 x i8]** %539, align 8, !nonnull !1, !align !4, !noundef !1
  %540 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf66, i32 0, i32 1
  %_559.1 = load i64, i64* %540, align 8
  %541 = getelementptr inbounds [0 x i8], [0 x i8]* %_559.0, i64 0, i64 %_145
  store i8 0, i8* %541, align 1
  br label %bb80

panic67:                                          ; preds = %bb78
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_145, i64 %_558.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc221 to %"core::panic::location::Location"*)) #14
  unreachable

bb81:                                             ; preds = %bb80
  %542 = bitcast i64** %cb1 to void ([0 x i8]*, i64, i64, {}*)**
  %cb168 = load void ([0 x i8]*, i64, i64, {}*)*, void ([0 x i8]*, i64, i64, {}*)** %542, align 8, !nonnull !1, !noundef !1
  %543 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 7
  %_153 = load i8, i8* %543, align 1
  %_152 = and i8 %_153, 16
  %544 = icmp eq i8 %_152, 0
  br i1 %544, label %bb85, label %bb86

bb93:                                             ; preds = %bb92, %bb90, %bb88, %bb80
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i8 0, i8* %quoted, align 1
  store i64 0, i64* %spaces, align 8
  br label %bb305

bb85:                                             ; preds = %bb81
  store i8 0, i8* %_151, align 1
  br label %bb87

bb86:                                             ; preds = %bb81
  %545 = load i8, i8* %quoted, align 1, !range !3, !noundef !1
  %_155 = trunc i8 %545 to i1
  %_154 = xor i1 %_155, true
  %546 = zext i1 %_154 to i8
  store i8 %546, i8* %_151, align 1
  br label %bb87

bb87:                                             ; preds = %bb86, %bb85
  %547 = load i8, i8* %_151, align 1, !range !3, !noundef !1
  %548 = trunc i8 %547 to i1
  br i1 %548, label %bb83, label %bb82

bb82:                                             ; preds = %bb87
  store i8 0, i8* %_150, align 1
  br label %bb84

bb83:                                             ; preds = %bb87
  %_157 = load i64, i64* %entry_pos, align 8
  %_156 = icmp eq i64 %_157, 0
  %549 = zext i1 %_156 to i8
  store i8 %549, i8* %_150, align 1
  br label %bb84

bb84:                                             ; preds = %bb83, %bb82
  %550 = load i8, i8* %_150, align 1, !range !3, !noundef !1
  %551 = trunc i8 %550 to i1
  br i1 %551, label %bb88, label %bb89

bb89:                                             ; preds = %bb84
  %_166 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %552 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h750b57f682741169E"({ i8*, i64 }* align 8 %_166)
  store i64* %552, i64** %_165, align 8
  br label %bb90

bb88:                                             ; preds = %bb84
  %_163 = load i64, i64* %entry_pos, align 8
  call void %cb168([0 x i8]* align 1 bitcast (<{}>* @alloc7 to [0 x i8]*), i64 0, i64 %_163, {}* align 1 %data)
  br label %bb93

bb90:                                             ; preds = %bb89
  %553 = bitcast i64** %_165 to {}**
  %554 = load {}*, {}** %553, align 8
  %555 = icmp eq {}* %554, null
  %_167 = select i1 %555, i64 0, i64 1
  %556 = icmp eq i64 %_167, 1
  br i1 %556, label %bb91, label %bb93

bb91:                                             ; preds = %bb90
  %557 = bitcast i64** %_165 to { [0 x i8]*, i64 }**
  %buf69 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %557, align 8, !nonnull !1, !align !2, !noundef !1
  %558 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf69, i32 0, i32 0
  %_560.0 = load [0 x i8]*, [0 x i8]** %558, align 8, !nonnull !1, !align !4, !noundef !1
  %559 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf69, i32 0, i32 1
  %_560.1 = load i64, i64* %559, align 8
  %_176 = load i64, i64* %entry_pos, align 8
  store i64 %_176, i64* %_175, align 8
  %560 = load i64, i64* %_175, align 8
  %561 = call { [0 x i8]*, i64 } @"_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0f824cef48a30088E"([0 x i8]* align 1 %_560.0, i64 %_560.1, i64 %560, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc223 to %"core::panic::location::Location"*))
  %_173.0 = extractvalue { [0 x i8]*, i64 } %561, 0
  %_173.1 = extractvalue { [0 x i8]*, i64 } %561, 1
  br label %bb92

bb92:                                             ; preds = %bb91
  %_177 = load i64, i64* %entry_pos, align 8
  call void %cb168([0 x i8]* align 1 %_173.0, i64 %_173.1, i64 %_177, {}* align 1 %data)
  br label %bb93

bb96:                                             ; preds = %bb94
  store i32 2, i32* %pstate, align 4
  store i8 0, i8* %quoted, align 1
  %_183 = getelementptr inbounds %CsvParser, %CsvParser* %p, i32 0, i32 3
  %562 = call align 8 i64* @"_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE"({ i8*, i64 }* align 8 %_183)
  store i64* %562, i64** %_182, align 8
  br label %bb97

bb95:                                             ; preds = %bb94
  store i32 2, i32* %pstate, align 4
  store i8 1, i8* %quoted, align 1
  br label %bb14

bb97:                                             ; preds = %bb96
  %563 = bitcast i64** %_182 to {}**
  %564 = load {}*, {}** %563, align 8
  %565 = icmp eq {}* %564, null
  %_184 = select i1 %565, i64 0, i64 1
  %566 = icmp eq i64 %_184, 1
  br i1 %566, label %bb98, label %bb100

bb98:                                             ; preds = %bb97
  %567 = bitcast i64** %_182 to { [0 x i8]*, i64 }**
  %buf70 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %567, align 8, !nonnull !1, !align !2, !noundef !1
  %_187 = load i64, i64* %entry_pos, align 8
  %568 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf70, i32 0, i32 0
  %_561.0 = load [0 x i8]*, [0 x i8]** %568, align 8, !nonnull !1, !align !4, !noundef !1
  %569 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf70, i32 0, i32 1
  %_561.1 = load i64, i64* %569, align 8
  %_189 = icmp ult i64 %_187, %_561.1
  %570 = call i1 @llvm.expect.i1(i1 %_189, i1 true)
  br i1 %570, label %bb99, label %panic71

bb100:                                            ; preds = %bb99, %bb97
  %571 = load i64, i64* %entry_pos, align 8
  %572 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %571, i64 1)
  %_190.0 = extractvalue { i64, i1 } %572, 0
  %_190.1 = extractvalue { i64, i1 } %572, 1
  %573 = call i1 @llvm.expect.i1(i1 %_190.1, i1 false)
  br i1 %573, label %panic72, label %bb101

bb99:                                             ; preds = %bb98
  %574 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf70, i32 0, i32 0
  %_562.0 = load [0 x i8]*, [0 x i8]** %574, align 8, !nonnull !1, !align !4, !noundef !1
  %575 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %buf70, i32 0, i32 1
  %_562.1 = load i64, i64* %575, align 8
  %576 = getelementptr inbounds [0 x i8], [0 x i8]* %_562.0, i64 0, i64 %_187
  store i8 %c, i8* %576, align 1
  br label %bb100

panic71:                                          ; preds = %bb98
  call void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64 %_187, i64 %_561.1, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc225 to %"core::panic::location::Location"*)) #14
  unreachable

bb101:                                            ; preds = %bb100
  store i64 %_190.0, i64* %entry_pos, align 8
  br label %bb14

panic72:                                          ; preds = %bb100
  call void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1 bitcast ([28 x i8]* @str.3 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc227 to %"core::panic::location::Location"*)) #14
  unreachable
}

; Function Attrs: uwtable
define i32 @csv_increase_buffer(%CsvParser* align 1 %p) unnamed_addr #1 {
start:
  ret i32 0
}

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #7

; Function Attrs: noreturn uwtable
declare void @_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE({}* align 1, [3 x i64]* align 8, i64* align 8, %"core::panic::location::Location"* align 8, i1 zeroext) unnamed_addr #8

; Function Attrs: cold noinline noreturn nounwind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E() unnamed_addr #9

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #10

; Function Attrs: cold noreturn uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E(i64, i64) unnamed_addr #11

; Function Attrs: nounwind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #10

; Function Attrs: nounwind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #10

; Function Attrs: cold noreturn uwtable
declare void @_ZN3std7process5abort17hbfbd791ff32f7241E() unnamed_addr #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #12

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #13

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h89917039f65f3f80E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #2 = { noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #4 = { inlinehint noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #9 = { cold noinline noreturn nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #11 = { cold noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-a14" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nosync nounwind readnone willreturn }
attributes #14 = { noreturn }
attributes #15 = { noinline }
attributes #16 = { noinline noreturn nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{}
!2 = !{i64 8}
!3 = !{i8 0, i8 2}
!4 = !{i64 1}
!5 = !{i64 1, i64 -9223372036854775807}
!6 = !{i64 1, i64 0}
!7 = !{i32 3286711}

^0 = module: (path: "/Users/gab/repo/Rust/rustify-validator/src/Symbolizer/csv_link_v1/source/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete/csv_parse.rs.bc", hash: (1582743065, 1908224802, 164245021, 2655398161, 1095509059))
^1 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h04dab305714978f4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 364374032234571940
^2 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h64d4be1993b32770E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^151))))) ; guid = 536949206212886460
^3 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^4 = gv: (name: "alloc189", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 646577706476735620
^5 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^6 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h7de4a6f893cf0000E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^121), (callee: ^117))))) ; guid = 1045705922184120965
^7 = gv: (name: "_ZN98_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17hefae3e00360effacE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13))) ; guid = 1055520529953695468
^8 = gv: (name: "alloc213", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 1060082736085336775
^9 = gv: (name: "alloc205", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 1110367281422474644
^10 = gv: (name: "_ZN4core5alloc6layout6Layout8dangling17h0ac448d799c2fa0eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 10, calls: ((callee: ^112), (callee: ^81))))) ; guid = 1212301880168515175
^11 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc32e92bc9cad2a39E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 1274821942671433974
^12 = gv: (name: "alloc167", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 1302483784554260599
^13 = gv: (name: "alloc169", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 1362318368683571804
^14 = gv: (name: "__rust_alloc_zeroed") ; guid = 1523553558892608046
^15 = gv: (name: "alloc179", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 1620608271522815708
^16 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign13new_unchecked17he2d8ce1208509221E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 1709949124675337347
^17 = gv: (name: "_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$8take_box17h5c43d1893df3c623E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 79, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^153), (callee: ^42), (callee: ^30), (callee: ^31), (callee: ^18), (callee: ^164)), refs: (^129, ^91)))) ; guid = 1798726170923792264
^18 = gv: (name: "_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17hcc585e5fa9819974E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 43, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^53), (callee: ^164)), refs: (^129)))) ; guid = 1948088714993936996
^19 = gv: (name: "alloc127", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 1993292919342280084
^20 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_none17ha2d4bad0ed9b8a9eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4, calls: ((callee: ^39))))) ; guid = 1997477280688985062
^21 = gv: (name: "alloc133", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 2098511828664757491
^22 = gv: (name: "alloc120", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2220971930027377308
^23 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^24 = gv: (name: "_ZN4core5panic8location8Location6caller17h94e4c20b183d13baE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 5))) ; guid = 2673444910548015057
^25 = gv: (name: "alloc143", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 2733851589900315066
^26 = gv: (name: "alloc203", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 2842115787309864975
^27 = gv: (name: "_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17h0f824cef48a30088E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^67))))) ; guid = 2975047124999666927
^28 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17h06b0f32f351fb381E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^152), (callee: ^127))))) ; guid = 3118216713027234064
^29 = gv: (name: "_ZN3std9panicking11begin_panic17h173426b834d9bfd8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 34, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^24), (callee: ^56)), refs: (^129)))) ; guid = 3314046363082864870
^30 = gv: (name: "_ZN5alloc5alloc15exchange_malloc17h0ceb92ca658bcc9eE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 23, calls: ((callee: ^95), (callee: ^79), (callee: ^142), (callee: ^163)), refs: (^138)))) ; guid = 3422023081996220729
^31 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$8into_raw17h23d6e0d10baf7293E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 10, calls: ((callee: ^145))))) ; guid = 3521062780733337353
^32 = gv: (name: "alloc159", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 3526549370917965729
^33 = gv: (name: "alloc121", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^22)))) ; guid = 3546912897853787462
^34 = gv: (name: "alloc163", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 3680672594656274450
^35 = gv: (name: "_ZN5alloc5alloc7dealloc17h931cdc33a06f43a6E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^158), (callee: ^112), (callee: ^43))))) ; guid = 3721198108327844213
^36 = gv: (name: "_ZN5alloc5alloc6Global10alloc_impl17h8c25b254c199c25bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 76, calls: ((callee: ^158), (callee: ^10), (callee: ^73), (callee: ^146), (callee: ^147), (callee: ^162), (callee: ^156), (callee: ^100), (callee: ^59)), refs: (^33)))) ; guid = 3774261238197858370
^37 = gv: (name: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8is_empty17ha181432d6b6d57c4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 3962461962259764079
^38 = gv: (name: "_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic..PanicPayload$LT$$RF$str$GT$$GT$17hf81a525a37b59573E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 4105384038758382946
^39 = gv: (name: "_ZN4core6option15Option$LT$T$GT$7is_some17hb1d4d9d31b501761E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 14))) ; guid = 4125029958555783122
^40 = gv: (name: "alloc187", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 4394759025521925128
^41 = gv: (name: "alloc141", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 4452423422274752418
^42 = gv: (name: "_ZN3std7process5abort17hbfbd791ff32f7241E") ; guid = 4619386724051639732
^43 = gv: (name: "__rust_dealloc") ; guid = 4639430271351303854
^44 = gv: (name: "alloc191", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 4786742608698042165
^45 = gv: (name: "_ZN4core3ptr5write17hfd2f45e5439e4ef9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9))) ; guid = 4923975920951514692
^46 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$11into_unique17h0202308991057fdfE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 67, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^52), (callee: ^99), (callee: ^69), (callee: ^18), (callee: ^164)), refs: (^129)))) ; guid = 4999384576023740048
^47 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h03d632ed6640f9b5E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^64))))) ; guid = 5069462924759388624
^48 = gv: (name: "alloc119", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^94)))) ; guid = 5141033371893511548
^49 = gv: (name: "_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h41445501e3d8f241E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^65))))) ; guid = 5152682016273648582
^50 = gv: (name: "_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h0bd31f4c1a59ca63E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 6, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 5231950203973768650
^51 = gv: (name: "alloc155", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 5274696176846360880
^52 = gv: (name: "_ZN4core3ptr4read17h01ca866c4c60e229E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11))) ; guid = 5559640720977581855
^53 = gv: (name: "_ZN5alloc5alloc8box_free17h3306911f44367f4eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 61, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^47), (callee: ^95), (callee: ^6), (callee: ^107), (callee: ^136)), refs: (^129)))) ; guid = 5700062852328545912
^54 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize3get17ha0515b3c820ef717E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 5730334301405833809
^55 = gv: (name: "_ZN91_$LT$std..panicking..begin_panic..PanicPayload$LT$A$GT$$u20$as$u20$core..panic..BoxMeUp$GT$3get17h865a31701283126cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^42)), refs: (^91)))) ; guid = 5785329582172494309
^56 = gv: (name: "_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h6a97f9c54b96cbcdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 26, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 1, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^80), (callee: ^93)), refs: (^129)))) ; guid = 6071257356459577639
^57 = gv: (name: "llvm.trap") ; guid = 6116349651215144041
^58 = gv: (name: "alloc199", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 6159160341952235491
^59 = gv: (name: "_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hdc1f9cae951484adE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^103))))) ; guid = 6199462433032752523
^60 = gv: (name: "alloc139", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 6436004247275008452
^61 = gv: (name: "alloc185", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 6554093198070159229
^62 = gv: (name: "llvm.memset.p0i8.i64") ; guid = 6575870351372456124
^63 = gv: (name: "alloc151", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 6786362021296924511
^64 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ref17hc3467ecd649f18abE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^151))))) ; guid = 6905887130806973734
^65 = gv: (name: "_ZN4core3any6TypeId2of17hc99e799aa9d654c2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 6940414576242193527
^66 = gv: (name: "alloc181", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 7013787554808841963
^67 = gv: (name: "_ZN108_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h1590c6e2ef3c162fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^116))))) ; guid = 7016761762315346062
^68 = gv: (name: "_ZN4core6option15Option$LT$T$GT$6as_mut17hed9021edf3bc1b7bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18))) ; guid = 7056489977493883169
^69 = gv: (name: "_ZN95_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$mut$u20$T$GT$$GT$4from17h98219f64af7057d8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^7), (callee: ^75))))) ; guid = 7401605354854538691
^70 = gv: (name: "_ZN4core3ptr4read17h3cb8cf012474278eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29))) ; guid = 7426163232297079108
^71 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17h572e220dcbd61f9aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 7836455030766379221
^72 = gv: (name: "alloc177", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 7848695810050357326
^73 = gv: (name: "_ZN5alloc5alloc5alloc17h651787cd3313bb5aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^158), (callee: ^112), (callee: ^97))))) ; guid = 7899135097495948489
^74 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17he919de21581fc398E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^133))))) ; guid = 7940038623868269202
^75 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17hebbfd91027de1f7eE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 8375101701362716733
^76 = gv: (name: "_ZN4core3mem7replace17h4aac037de9c55edcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 39, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^70), (callee: ^45)), refs: (^129)))) ; guid = 8399089619064528354
^77 = gv: (name: "alloc157", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 8429741946340715124
^78 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha3fcfd70b1cc0b6aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^71), (callee: ^130))))) ; guid = 8716341227543352785
^79 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17hd335de18e1604f18E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^36))))) ; guid = 8882309384514547153
^80 = gv: (name: "_ZN3std9panicking11begin_panic28_$u7b$$u7b$closure$u7d$$u7d$17h3280dea5f50ffe9aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 37, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^84), (callee: ^105)), refs: (^129, ^150)))) ; guid = 8965225898642392649
^81 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h2964191a9e435308E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 8965916685656064792
^82 = gv: (name: "alloc207", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 8985454918248839670
^83 = gv: (name: "alloc153", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 9192499832261615950
^84 = gv: (name: "_ZN3std9panicking11begin_panic21PanicPayload$LT$A$GT$3new17hcf654123a7b18c13E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 22))) ; guid = 9259650539818192719
^85 = gv: (name: "csv_increase_buffer", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9325484878143708927
^86 = gv: (name: "_ZN4core3mem11valid_align10ValidAlign10as_nonzero17h2c927a4ef3ca72b7E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 6, calls: ((callee: ^134))))) ; guid = 9369445175567845720
^87 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hfa89c11720b25fa4E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^11), (callee: ^81))))) ; guid = 9387450116470773415
^88 = gv: (name: "alloc135", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 9525105210634363096
^89 = gv: (name: "alloc173", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 9551106137617603813
^90 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hd2e1e6c5b74a2c89E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 9652811340455941592
^91 = gv: (name: "vtable.1", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^49, ^115)))) ; guid = 9712463147514906544
^92 = gv: (name: "alloc149", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 9895648414134803733
^93 = gv: (name: "_ZN4core4hint9black_box17hb33eb9ca41d4f97cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0)))) ; guid = 9902230063319602226
^94 = gv: (name: "alloc118", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 10003921285045990906
^95 = gv: (name: "_ZN4core5alloc6layout6Layout25from_size_align_unchecked17h41321a508cfa6005E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 14, calls: ((callee: ^16))))) ; guid = 10157967941568291039
^96 = gv: (name: "_ZN4core9panicking5panic17h89917039f65f3f80E") ; guid = 10260764845770086626
^97 = gv: (name: "__rust_alloc") ; guid = 10301051264606935346
^98 = gv: (name: "alloc197", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 10474879455700599559
^99 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$4leak17he8e1aa541488b9eeE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 29, calls: ((callee: ^2))))) ; guid = 10852488234216751641
^100 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h5c554d973360a329E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 13, calls: ((callee: ^90), (callee: ^74), (callee: ^1))))) ; guid = 11136027920682480234
^101 = gv: (name: "alloc171", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 11204641351255091205
^102 = gv: (name: "alloc221", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 11316012049935574684
^103 = gv: (name: "_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h7950fa8698cc6cadE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 11316073338676427785
^104 = gv: (name: "alloc145", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 11347063223342783524
^105 = gv: (name: "_ZN3std9panicking20rust_panic_with_hook17h053d4067a63a6fcbE") ; guid = 11379753628054763235
^106 = gv: (name: "alloc165", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 11549187475902516007
^107 = gv: (name: "_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h5a1b738f8c7bfd0bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^154), (callee: ^81))))) ; guid = 11700964659770123731
^108 = gv: (name: "alloc215", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 11716398973574591722
^109 = gv: (name: "alloc226", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11882145878910837731
^110 = gv: (name: "str.2", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 11956336628463022363
^111 = gv: (name: "str.3", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 12053527347989904880
^112 = gv: (name: "_ZN4core5alloc6layout6Layout5align17h2931367ad46b0584E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 7, calls: ((callee: ^86), (callee: ^54))))) ; guid = 12264724234098017240
^113 = gv: (name: "alloc183", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 12346165428601750841
^114 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17h92c593ffa8bd3159E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 12391090583308353063
^115 = gv: (name: "_ZN4core3ptr28drop_in_place$LT$$RF$str$GT$17h4abca83092d6153bE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 1))) ; guid = 12428258628424539309
^116 = gv: (name: "_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17hd6441c3409f86f27E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 15, calls: ((callee: ^139), (callee: ^28), (callee: ^159))))) ; guid = 12577558706350126895
^117 = gv: (name: "_ZN119_$LT$core..ptr..unique..Unique$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..non_null..NonNull$LT$T$GT$$GT$$GT$4from17h8d8a5c275285f92fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 4))) ; guid = 12754468065645005704
^118 = gv: (name: "alloc201", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 12793049590544965766
^119 = gv: (name: "alloc227", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 12807847163613995190
^120 = gv: (name: "alloc131", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 12880959034780650161
^121 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17ha98b741c742c6c24E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8, calls: ((callee: ^151), (callee: ^81))))) ; guid = 12891572343066695839
^122 = gv: (name: "alloc217", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 13283191775780863632
^123 = gv: (name: "alloc211", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 13355637472495666538
^124 = gv: (name: "alloc125", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 13593565094552744950
^125 = gv: (name: "alloc195", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 13722495634993792661
^126 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^127 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h0d600abe7c06c287E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^135), (callee: ^114))))) ; guid = 14351033661605877753
^128 = gv: (name: "alloc209", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 14486294770997157084
^129 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^130 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h5412d34d7250fdcbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 15165887332789992107
^131 = gv: (name: "_ZN4core6option15Option$LT$T$GT$6as_ref17h750b57f682741169E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 18))) ; guid = 15308312999388833043
^132 = gv: (name: "alloc161", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 15342642509537383090
^133 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hd4b1910d31d5f5f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 15398734119403300831
^134 = gv: (name: "_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h779910c6c0b4dcd5E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 4))) ; guid = 15573435083226384877
^135 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h4fbaf22c9a21b20cE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 15600025724388504098
^136 = gv: (name: "_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h5f657a08d117eae3E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 20, calls: ((callee: ^158), (callee: ^90), (callee: ^35))))) ; guid = 15868705073110462065
^137 = gv: (name: "alloc175", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 15907385705497017581
^138 = gv: (name: "alloc7", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 15959924874056835549
^139 = gv: (name: "_ZN4core5slice5index22slice_index_order_fail17h5452274d427e5b12E") ; guid = 16237673211549674151
^140 = gv: (name: "alloc223", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 16310366496355483290
^141 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hf368ed9386b8346dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 16318547856518656135
^142 = gv: (name: "_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h01983ce12d365a7aE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^87), (callee: ^90))))) ; guid = 16345556647757579483
^143 = gv: (name: "alloc137", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 16415963085470557080
^144 = gv: (name: "csv_parse", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1683, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^141), (callee: ^37), (callee: ^29), (callee: ^20), (callee: ^85), (callee: ^96), (callee: ^161), (callee: ^68), (callee: ^131), (callee: ^27)), refs: (^19, ^124, ^148, ^110, ^120, ^21, ^111, ^88, ^143, ^60, ^41, ^138, ^25, ^104, ^160, ^92, ^63, ^83, ^51, ^77, ^32, ^132, ^34, ^106, ^12, ^13, ^101, ^89, ^137, ^72, ^15, ^66, ^113, ^61, ^40, ^4, ^44, ^155, ^125, ^98, ^58, ^118, ^26, ^9, ^82, ^128, ^123, ^8, ^108, ^122, ^149, ^102, ^140, ^157, ^119)))) ; guid = 16441161464716961325
^145 = gv: (name: "_ZN5alloc5boxed16Box$LT$T$C$A$GT$23into_raw_with_allocator17h56eed98f5c2f8828E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 40, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^46), (callee: ^2)), refs: (^129)))) ; guid = 16737985032490496347
^146 = gv: (name: "_ZN5alloc5alloc12alloc_zeroed17h7cdc1d874a27433aE", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 12, calls: ((callee: ^158), (callee: ^112), (callee: ^14))))) ; guid = 16786253828801711838
^147 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h837d97b6a0e8dcfdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^78), (callee: ^81))))) ; guid = 16871637019968340636
^148 = gv: (name: "alloc129", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 16891447946881643534
^149 = gv: (name: "alloc219", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 16919414765156572876
^150 = gv: (name: "vtable.0", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^38, ^55, ^17)))) ; guid = 17404682529985905143
^151 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h9928659939833bdbE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5))) ; guid = 17404736790233821766
^152 = gv: (name: "_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17h150039af27f5d5f7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 17539255686287512998
^153 = gv: (name: "_ZN4core6option15Option$LT$T$GT$4take17hfc3e84efd38f004bE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 16, calls: ((callee: ^76))))) ; guid = 17621024917618678047
^154 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hceaff1883cb780b9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^90))))) ; guid = 17651473032947895555
^155 = gv: (name: "alloc193", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 17657962575203514780
^156 = gv: (name: "_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h26e776e824b4dd68E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 17689482345325611915
^157 = gv: (name: "alloc225", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 17953497755752675727
^158 = gv: (name: "_ZN4core5alloc6layout6Layout4size17h9e419a3ab3b63a94E", summaries: (function: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), insts: 3))) ; guid = 17972316757531421765
^159 = gv: (name: "_ZN4core5slice5index24slice_end_index_len_fail17ha148152571519510E") ; guid = 17978184489729322003
^160 = gv: (name: "alloc147", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^109)))) ; guid = 18067140890485524586
^161 = gv: (name: "_ZN4core9panicking18panic_bounds_check17h54a3444ed599ccd1E") ; guid = 18152823210794913220
^162 = gv: (name: "_ZN4core6option15Option$LT$T$GT$5ok_or17h9ec3325f1f92784dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28))) ; guid = 18236290117299249349
^163 = gv: (name: "_ZN5alloc5alloc18handle_alloc_error17h63a008190bf6efc7E") ; guid = 18289986228052337267
^164 = gv: (name: "_ZN4core9panicking15panic_no_unwind17ha22e330d9595cb93E") ; guid = 18383225413769944326
^165 = blockcount: 639
