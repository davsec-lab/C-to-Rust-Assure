import logging
import os
import sys
import tempfile
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)
sys.modules.setdefault("tiktoken", types.ModuleType("tiktoken"))

sympy_mod = types.ModuleType("sympy")
codegen_mod = types.ModuleType("sympy.codegen")
cnodes_mod = types.ModuleType("sympy.codegen.cnodes")
cnodes_mod.struct = object()
sys.modules.setdefault("sympy", sympy_mod)
sys.modules.setdefault("sympy.codegen", codegen_mod)
sys.modules.setdefault("sympy.codegen.cnodes", cnodes_mod)

from functionAndDeps import FunctionAndDependencies
from functionAndDepsExtractor import FunctionAndDepsExtractor
from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.config import TranslatorModes
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
from translationValidator import repairMissingExternSemicolons
from type_registry import TranslationMode, TypeKind


class DummyLogger:
    def debug(self, *args, **kwargs):
        pass

    def info(self, *args, **kwargs):
        pass

    def warning(self, *args, **kwargs):
        pass

    def critical(self, *args, **kwargs):
        pass


class SymbolProbe(SymbolExtractionMixin):
    pass


class PromptProbe(CodeUtilsMixin, SymbolExtractionMixin, TranslationPipelineMixin):
    def __init__(self):
        self.translatorMode = TranslatorModes.COMPILATION_FEEDBACK
        self.srcLang = "C"
        self.dstLang = "Rust"
        self.logger = DummyLogger()

    def stringifyCodeBlock(self, code):
        if isinstance(code, str):
            return code
        return "\n".join(code)


class CppPromptProbe(PromptProbe):
    def __init__(self):
        super().__init__()
        self.dstLang = "C++"


class TypedefFallbackProbe(PromptProbe):
    def __init__(self):
        super().__init__()
        self.llm_calls = []

    def chunkAndSend(self, batchName, request):
        self.llm_calls.append((batchName, request))
        return "type Callback = Option<unsafe extern \"C\" fn(i32) -> i32>;"

    def cleanCode(self, result):
        return result

    def compile(self, code):
        return (True, "")

    def extractIncludeBlock(self, result):
        return ""


class CppTypedefFallbackProbe(CppPromptProbe):
    def __init__(self, llmResponse):
        super().__init__()
        self._llmResponse = llmResponse
        self.llm_calls = []

    def chunkAndSend(self, batchName, request):
        self.llm_calls.append((batchName, request))
        return self._llmResponse

    def cleanCode(self, result):
        return result

    def compile(self, code):
        return (True, "")

    def extractIncludeBlock(self, result):
        return ""


class CodeUtilsProbe(CodeUtilsMixin):
    def __init__(self):
        self.logger = DummyLogger()


class TestTypeRegistryRefactor(unittest.TestCase):
    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()

    def test_upsert_keeps_rich_struct_metadata(self):
        rich_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "RichState",
            ["typedef struct {", "    char *buf;", "} RichState;"],
            TranslationMode.RICH_STRUCT,
            "global",
        )
        rich_node.merge_usage_list_entry("buf", "state->buf[0] = 'x'")
        rich_node.add_function_use("emit")

        plain_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "RichState",
            ["typedef struct {", "    char *buf;", "    int len;", "} RichState;"],
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        plain_node.add_function_use("flush")

        self.assertIs(rich_node, plain_node)
        self.assertEqual(plain_node.translation_mode, TranslationMode.RICH_STRUCT)
        self.assertIn("buf", plain_node.usageList)
        self.assertEqual(
            plain_node.cCode,
            ["typedef struct {", "    char *buf;", "} RichState;"],
        )
        self.assertEqual(sorted(plain_node.useFunctionList), ["emit", "flush"])

    def test_type_dependency_graph_orders_all_type_kinds(self):
        os.environ["PATH"] = (
            "/home/gabe/typedefextractor-target/bin:"
            + os.environ.get("PATH", "")
        )
        extractor = FunctionAndDepsExtractor(DummyLogger())

        FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF,
            "UInt32",
            ["typedef unsigned int UInt32;"],
            TranslationMode.TYPEDEF,
            "normal",
        )
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.ENUM,
            "Mode",
            ["typedef enum {", "    MODE_A = 0,", "    MODE_B = 1", "} Mode;"],
            TranslationMode.ENUM,
            "enum",
        )
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "Holder",
            [
                "typedef struct {",
                "    UInt32 count;",
                "    Mode mode;",
                "} Holder;",
            ],
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.STATIC,
            "g_holder",
            ["static Holder g_holder;"],
            TranslationMode.STATIC,
            "normal",
        )

        graph = extractor.buildTypeDependencyGraph({})
        ordered = [(key.kind.value, key.name) for key in graph.flattened_topo_order()]

        self.assertEqual(
            ordered,
            [
                ("typedef", "UInt32"),
                ("enum", "Mode"),
                ("struct", "Holder"),
                ("static", "g_holder"),
            ],
        )

    def test_normal_extraction_collects_extern_globals(self):
        os.environ["PATH"] = (
            "/home/gabe/typedefextractor-target/bin:"
            + os.environ.get("PATH", "")
        )
        extractor = FunctionAndDepsExtractor(DummyLogger())

        with tempfile.TemporaryDirectory() as temp_dir:
            file_path = os.path.join(temp_dir, "unRLE_obuf_to_output_SMALL.i")
            with open(file_path, "w") as handle:
                handle.write(
                    "typedef int Int32;\n"
                    "typedef unsigned int UInt32;\n"
                    "extern Int32 BZ2_rNums[512];\n"
                    "extern UInt32 BZ2_crc32Table[256];\n"
                    "static Int32 helper(void) { return BZ2_rNums[0]; }\n"
                )

            func_deps = FunctionAndDependencies("unRLE_obuf_to_output_SMALL")
            func_map = {"unRLE_obuf_to_output_SMALL": func_deps}
            extractor.extractNormalTypeUsageDetails(temp_dir, func_map)

        extern_names = sorted(node.name for node in FunctionAndDependencies.typeRegistry.iter_by_kind(TypeKind.EXTERN))
        self.assertEqual(extern_names, ["BZ2_crc32Table", "BZ2_rNums"])
        self.assertIn("BZ2_rNums", func_deps.externVariablesWithUsageInfo)
        self.assertIn("BZ2_crc32Table", func_deps.externVariablesWithUsageInfo)

    def test_normal_extraction_skips_libc_extern_globals(self):
        """libc / glibc / POSIX externs (stderr, optarg, __tzname, ...)
        must not enter the type graph: the LLM has no business
        translating them, and feeding them in caused the
        ``write_to_stderr`` hallucination observed in run
        individual-funcs_claude-sonnet-4-6_2026-05-27_15-47-35."""
        os.environ["PATH"] = (
            "/home/gabe/typedefextractor-target/bin:"
            + os.environ.get("PATH", "")
        )
        extractor = FunctionAndDepsExtractor(DummyLogger())

        with tempfile.TemporaryDirectory() as temp_dir:
            file_path = os.path.join(temp_dir, "url_parse.i")
            with open(file_path, "w") as handle:
                handle.write(
                    "typedef struct _IO_FILE FILE;\n"
                    "extern FILE *stderr;\n"
                    "extern FILE *stdout;\n"
                    "extern FILE *stdin;\n"
                    "extern char *__tzname[2];\n"
                    "extern char *optarg;\n"
                    "extern int kept_user_global;\n"
                    "static int helper(void) {\n"
                    "    return kept_user_global;\n"
                    "}\n"
                )

            func_deps = FunctionAndDependencies("url_parse")
            func_map = {"url_parse": func_deps}
            extractor.extractNormalTypeUsageDetails(temp_dir, func_map)

        extern_names = sorted(
            node.name for node in FunctionAndDependencies.typeRegistry.iter_by_kind(TypeKind.EXTERN)
        )
        # Only the user-defined extern survives; all libc/glibc ones are dropped.
        self.assertEqual(extern_names, ["kept_user_global"])
        for libcName in ("stderr", "stdout", "stdin", "__tzname", "optarg"):
            self.assertNotIn(libcName, func_deps.externVariablesWithUsageInfo,
                             f"libc extern {libcName!r} leaked into externVariablesWithUsageInfo")

    def test_extract_struct_definition_does_not_append_aliases(self):
        probe = SymbolProbe()
        code = """type UInt32 = u32;
type Count = UInt32;

struct RichBuffer {
    length: Count,
}
"""
        struct_definition = probe.extractStructDefinitionByName(code, "RichBuffer")
        self.assertIn("struct RichBuffer", struct_definition)
        self.assertNotIn("type UInt32", struct_definition)
        self.assertNotIn("type Count", struct_definition)

    def test_extract_struct_definition_ignores_function_parameter_references(self):
        probe = SymbolProbe()
        code = """#include <cassert>

struct csv_parser;

int csv_error(const struct csv_parser *p);

int
csv_error(const struct csv_parser *p)
{
    assert(p && "received null csv_parser");
    return p->status;
}
"""
        struct_definition = probe.extractStructDefinitionByName(code, "csv_parser")
        self.assertEqual(struct_definition, "struct csv_parser;")

    def test_extract_named_typedef_struct_definition_keeps_alias(self):
        probe = SymbolProbe()
        code = """typedef struct cJSON
{
    struct cJSON *next;
    int type;
} cJSON;
"""
        struct_definition = probe.extractStructDefinitionByName(code, "cJSON")
        self.assertEqual(
            struct_definition,
            """typedef struct cJSON
{
    struct cJSON *next;
    int type;
} cJSON;""",
        )

    def test_type_batch_prompt_lists_targets_before_dependencies(self):
        prompt_probe = PromptProbe()
        node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "Holder",
            ["typedef struct {", "    UInt32 count;", "} Holder;"],
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        prompt = prompt_probe._buildTypeBatchPrompt(
            [node],
            "type UInt32 = u32;",
        )
        self.assertLess(prompt.index("definitions:\n"), prompt.index("translated dependency definitions for reference only:\n"))
        self.assertIn("Do not repeat these dependency definitions in your response.", prompt)


    def test_type_batch_prompt_emits_example_usage_block_for_rich_structs(self):
        """For RICH_STRUCT nodes, the type-batch prompt must include an
        "example usage" block that tells the LLM what the upcoming
        per-field usage list is FOR.

        Historical note: this test used to assert the literal phrase
        "more idiomatic type in Rust/C++". That phrasing was removed
        because it was an open-ended invitation that caused stage
        scope creep (an earlier pass was reading it as license to also do
        an earlier pass's char* → std::string conversion). The replacement
        wording (asserted here) explicitly says the usage block is
        NOT a license for cross-stage type changes."""
        rust_probe = PromptProbe()
        cpp_probe = CppPromptProbe()
        node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "RichHolder",
            ["typedef struct {", "    char *name;", "} RichHolder;"],
            TranslationMode.RICH_STRUCT,
            "normal",
        )

        rust_prompt = rust_probe._buildTypeBatchBasePrompt([node])
        cpp_prompt = cpp_probe._buildTypeBatchBasePrompt([node])

        # The example-usage announcement block is present (so the
        # following "example usage:\n..." block isn't dangling).
        for prompt in (rust_prompt, cpp_prompt):
            self.assertIn("example usage of each field", prompt)
            # The replacement wording is scope-respecting.
            self.assertIn("NOT a license", prompt,
                          "the new wording must explicitly say the "
                          "usage block is not a license for cross-stage "
                          "type changes")

        # The legacy "more idiomatic type" phrasing must NOT come back —
        # it was the proximate cause of the an earlier pass→std::string bug.
        self.assertNotIn("more idiomatic type in Rust", rust_prompt)
        self.assertNotIn("more idiomatic type in C++", cpp_prompt)
        self.assertNotIn("according to the usage in the C", rust_prompt)
        self.assertNotIn("translate the type to more idiomatic type", rust_prompt)
        self.assertNotIn("translate the type to more idiomatic type", cpp_prompt)

        # Unrelated legacy guarantees: don't accidentally regrow the
        # "target-language types" phrase that this test was also
        # pinning historically.
        self.assertNotIn("target-language types", rust_prompt)
        self.assertNotIn("target-language types", cpp_prompt)


    def test_plain_char_typedef_is_translated_deterministically(self):
        prompt_probe = PromptProbe()
        translated = prompt_probe.translateSimpleTypedefDefinition("typedef char Char;")
        self.assertEqual(translated, "type Char = std::ffi::c_char;")

    def test_plain_typedef_is_translated_deterministically_for_cpp(self):
        prompt_probe = CppPromptProbe()
        translated = prompt_probe.translateSimpleTypedefDefinition("typedef unsigned short UInt16;")
        self.assertEqual(translated, "typedef unsigned short UInt16;")

    def test_bool_typedef_is_normalized_for_cpp(self):
        prompt_probe = CppPromptProbe()
        translated = prompt_probe.translateSimpleTypedefDefinition("typedef _Bool Bool;")
        self.assertEqual(translated, "typedef bool Bool;")




    def test_cpp_typedef_extractor_handles_common_shapes(self):
        """Direct unit test for ``extractCppTypedefDefinitionByName``
        covering the shapes the LLM emits in C++ output, including the
        C++11 ``using`` alias form."""
        probe = SymbolProbe()
        code = (
            "#include <cstddef>\n"
            "\n"
            "using namespace std;\n"  # must never match
            "typedef unsigned long size_t;\n"
            "typedef char (*comparator_t)(void *key1, void *key2);\n"
            "typedef void (*key_destructor_t)(void *key);\n"
            "typedef struct Foo { int x; } Foo;\n"  # must be skipped
            "typedef int IntArr[10];\n"
            "using hash_fn_t = unsigned long (*)(const void *key);\n"
            "using byte_t = unsigned char;\n"
        )
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "size_t"),
            "typedef unsigned long size_t;",
        )
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "comparator_t"),
            "typedef char (*comparator_t)(void *key1, void *key2);",
        )
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "key_destructor_t"),
            "typedef void (*key_destructor_t)(void *key);",
        )
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "IntArr"),
            "typedef int IntArr[10];",
        )
        # typedef struct ... { body } Foo; is handled by the struct
        # extractor, not this one.
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "Foo"),
            "",
        )
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "missing_t"),
            "",
        )
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "hash_fn_t"),
            "using hash_fn_t = unsigned long (*)(const void *key);",
        )
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "byte_t"),
            "using byte_t = unsigned char;",
        )
        # ``using namespace std;`` has no ``=`` and must not be mistaken
        # for an alias declaration.
        self.assertEqual(
            probe.extractCppTypedefDefinitionByName(code, "std"),
            "",
        )

    def test_dependency_dedup_strips_by_name_not_just_exact_text(self):
        probe = PromptProbe()
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF,
            "Char",
            ["typedef char Char;"],
            TranslationMode.TYPEDEF,
            "normal",
        )
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF,
            "Int32",
            ["typedef int Int32;"],
            TranslationMode.TYPEDEF,
            "normal",
        )
        snippet = """use std::ffi::c_char;

type Char = c_char;
type Int32 = i32;

pub struct BitStream {
    pub buffer: Int32,
    pub mode: Char,
}
"""
        cleaned = probe._stripProvidedDependencyDefinitions(
            snippet,
            ["type Char = std::ffi::c_char;", "type Int32 = i32;"],
            [
                FunctionAndDependencies.getTypeNodeByName(TypeKind.TYPEDEF, "Char").key,
                FunctionAndDependencies.getTypeNodeByName(TypeKind.TYPEDEF, "Int32").key,
            ],
        )
        self.assertNotIn("type Char =", cleaned)
        self.assertNotIn("type Int32 =", cleaned)
        self.assertIn("pub struct BitStream", cleaned)

    def test_function_result_dedups_provided_type_dependencies(self):
        probe = PromptProbe()
        int32_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF,
            "Int32",
            ["typedef int Int32;"],
            TranslationMode.TYPEDEF,
            "normal",
        )
        uchar_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF,
            "UChar",
            ["typedef unsigned char UChar;"],
            TranslationMode.TYPEDEF,
            "normal",
        )
        snippet = """type Int32 = i32;
type UChar = u8;

#[no_mangle]
pub unsafe extern "C" fn BZ2_hbCreateDecodeTables(
    limit: *mut Int32,
    length: *mut UChar,
) {
}
"""
        cleaned = probe._sanitizeResultAgainstDependencies(
            snippet,
            ["type Int32 = i32;", "type UChar = u8;"],
            [int32_node.key, uchar_node.key],
        )

        self.assertNotIn("type Int32 =", cleaned)
        self.assertNotIn("type UChar =", cleaned)
        self.assertIn('pub unsafe extern "C" fn BZ2_hbCreateDecodeTables', cleaned)

    def test_sanitize_keeps_function_body_when_dependency_is_forward_declared_struct(self):
        probe = PromptProbe()
        struct_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "csv_parser",
            ["struct csv_parser;"],
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        snippet = """#include <cassert>
#include <cstddef>

struct csv_parser;

int csv_error(const struct csv_parser *p);

int
csv_error(const struct csv_parser *p)
{
    assert(p && "received null csv_parser");
    return p->status;
}
"""
        cleaned = probe._sanitizeResultAgainstDependencies(
            snippet,
            [],
            [struct_node.key],
        )

        self.assertNotIn("struct csv_parser;", cleaned)
        self.assertIn("int csv_error(const struct csv_parser *p);", cleaned)
        self.assertIn('assert(p && "received null csv_parser");', cleaned)
        self.assertIn("return p->status;", cleaned)

    def test_sanitize_keeps_function_body_returning_dependency_enum(self):
        probe = PromptProbe()
        probe.dstLang = "C++"
        enum_code = """enum bmp_error
{
 BMP_FILE_NOT_OPENED = -4,
 BMP_HEADER_NOT_INITIALIZED,
 BMP_INVALID_FILE,
 BMP_ERROR,
 BMP_OK = 0
};"""
        enum_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.ENUM,
            "bmp_error",
            enum_code.splitlines(),
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        enum_node.rustCode = enum_code
        snippet = """#include <cstdio>

enum bmp_error
{
 BMP_FILE_NOT_OPENED = -4,
 BMP_HEADER_NOT_INITIALIZED,
 BMP_INVALID_FILE,
 BMP_ERROR,
 BMP_OK = 0
};

enum bmp_error bmp_img_write(const char *filename);

enum bmp_error
bmp_img_write(const char *filename)
{
    return filename ? BMP_OK : BMP_FILE_NOT_OPENED;
}
"""
        cleaned = probe._sanitizeResultAgainstDependencies(
            snippet,
            [enum_code],
            [enum_node.key],
        )

        self.assertNotIn("BMP_HEADER_NOT_INITIALIZED", cleaned)
        self.assertIn("enum bmp_error bmp_img_write(const char *filename);", cleaned)
        self.assertIn("bmp_img_write(const char *filename)", cleaned)
        self.assertIn("return filename ? BMP_OK : BMP_FILE_NOT_OPENED;", cleaned)

    def test_sanitize_keeps_function_body_returning_dependency_struct(self):
        probe = PromptProbe()
        probe.dstLang = "C++"
        struct_code = """struct result
{
    int value;
};"""
        struct_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "result",
            struct_code.splitlines(),
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        struct_node.rustCode = struct_code
        snippet = """struct result
{
    int value;
};

struct result make_result(void)
{
    struct result out = {1};
    return out;
}
"""
        cleaned = probe._sanitizeResultAgainstDependencies(
            snippet,
            [struct_code],
            [struct_node.key],
        )

        self.assertNotIn("int value;", cleaned)
        self.assertIn("struct result make_result(void)", cleaned)
        self.assertIn("return out;", cleaned)

    def test_sanitize_strips_rust_struct_helper_aliases_with_dependency_struct(self):
        probe = PromptProbe()
        struct_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "csv_parser",
            ["typedef struct csv_parser csv_parser;"],
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        snippet = """use std::os::raw::{c_int, c_uchar};

pub type IsSpaceFn = Option<unsafe extern "C" fn(c_uchar) -> c_int>;
pub type IsTermFn = Option<unsafe extern "C" fn(c_uchar) -> c_int>;

pub struct csv_parser {
    pub is_space: IsSpaceFn,
    pub is_term: IsTermFn,
}

pub fn csv_set_blk_size(_p: &mut csv_parser, _size: usize) {
}
"""
        cleaned = probe._sanitizeResultAgainstDependencies(
            snippet,
            [],
            [struct_node.key],
        )

        self.assertNotIn("pub type IsSpaceFn", cleaned)
        self.assertNotIn("pub type IsTermFn", cleaned)
        self.assertNotIn("pub struct csv_parser", cleaned)
        self.assertIn("pub fn csv_set_blk_size", cleaned)

    def test_sanitize_strips_rust_dependency_function_declarations(self):
        probe = PromptProbe()
        snippet = """extern "C" {
    fn csv_fwrite2(
        fp: *mut FILE,
        src: *const c_void,
        src_size: size_t,
        quote: c_uchar,
    ) -> c_int;
}

#[no_mangle]
pub unsafe extern "C" fn csv_fwrite(
    fp: *mut FILE,
    src: *const c_void,
    src_size: size_t,
) -> c_int {
    csv_fwrite2(fp, src, src_size, 0x22)
}
"""
        cleaned = probe._sanitizeResultAgainstDependencies(
            snippet,
            [],
            [],
            ["csv_fwrite2"],
        )

        self.assertNotIn("fn csv_fwrite2", cleaned)
        self.assertIn('pub unsafe extern "C" fn csv_fwrite', cleaned)
        self.assertIn("csv_fwrite2(fp, src, src_size, 0x22)", cleaned)

    def test_clean_code_dedups_conflicting_raw_imports(self):
        probe = CodeUtilsProbe()
        code = """use std::ffi::{c_char, c_void};
use libc::{FILE, timespec};
use std::os::raw::{c_char, c_int, c_uint, c_void};

pub struct BitStream {
    pub handle: *mut FILE,
    pub buffer: c_int,
    pub flags: c_uint,
    pub scratch: *mut c_void,
    pub mode: c_char,
    pub stamp: timespec,
}
"""
        cleaned = probe.cleanCode(code)

        self.assertIn("use std::ffi::{c_char, c_void};", cleaned)
        self.assertIn("use libc::{FILE, timespec};", cleaned)
        self.assertIn("use std::os::raw::{c_int, c_uint};", cleaned)
        self.assertNotIn("use std::os::raw::{c_char, c_int, c_uint, c_void};", cleaned)

    def test_clean_code_keeps_std_io_trait_imports_used_by_methods(self):
        probe = CodeUtilsProbe()
        code = """use std::fs::File;
use std::io::{Read, Seek, SeekFrom, Write};
use std::mem;

pub fn bmp_header_read(header: &mut BmpHeader, img_file: Option<&mut File>) -> BmpError {
    let img_file = match img_file {
        None => return BmpError::BmpFileNotOpened,
        Some(f) => f,
    };

    let mut magic_bytes = [0u8; 2];
    if img_file.read_exact(&mut magic_bytes).is_err() {
        return BmpError::BmpInvalidFile;
    }

    let header_size = mem::size_of::<BmpHeader>();
    let header_bytes: &mut [u8] = unsafe {
        std::slice::from_raw_parts_mut(header as *mut BmpHeader as *mut u8, header_size)
    };
    if img_file.read_exact(header_bytes).is_err() {
        return BmpError::BmpError;
    }

    if img_file.seek(SeekFrom::Current(0)).is_err() {
        return BmpError::BmpError;
    }

    BmpError::BmpOk
}
"""
        cleaned = probe.cleanCode(code)

        self.assertIn("use std::io::{Read, Seek, SeekFrom};", cleaned)
        self.assertNotIn("Write", cleaned)

    def test_clean_code_keeps_named_typedef_struct_intact_when_deduping(self):
        probe = CodeUtilsProbe()
        code = """typedef struct cJSON
{
    struct cJSON *next;
    int type;
} cJSON;

typedef struct cJSON
{
    struct cJSON *next;
    int type;
} cJSON;

static void cJSON_Delete(cJSON *item)
{
}
"""
        cleaned = probe.cleanCode(code)

        self.assertEqual(cleaned.count("typedef struct cJSON"), 1)
        self.assertEqual(cleaned.count("} cJSON;"), 1)
        self.assertNotIn("typedef  cJSON;", cleaned)
        self.assertIn("static void cJSON_Delete(cJSON *item)", cleaned)

    def test_extract_target_code_ignores_label_only_fenced_blocks(self):
        probe = CodeUtilsProbe()
        response = """Looking at the struct fields...

```cpp
Final result code
```

```cpp
#include <memory>

typedef struct cJSON
{
    std::unique_ptr<cJSON> next;
    cJSON *prev;
} cJSON;
```"""

        extracted = probe.extractTargetCode(response, ["cpp"])

        self.assertIn("#include <memory>", extracted)
        self.assertIn("std::unique_ptr<cJSON> next;", extracted)
        self.assertNotIn("Final result code", extracted)

    def test_extract_target_code_removes_marker_inside_fenced_block(self):
        probe = CodeUtilsProbe()
        response = """```cpp
Final result code is :

#include <memory>

typedef struct cJSON
{
    std::unique_ptr<cJSON> next;
    cJSON *prev;
} cJSON;
```"""

        extracted = probe.extractTargetCode(response, ["cpp"])

        self.assertIn("#include <memory>", extracted)
        self.assertIn("std::unique_ptr<cJSON> next;", extracted)
        self.assertNotIn("Final result code", extracted)

    def test_clean_code_removes_model_markers_from_cpp_snippets(self):
        probe = CodeUtilsProbe()
        code = """#include <memory>

typedef struct cJSON
{
    std::unique_ptr<cJSON> next;
    cJSON *prev;
} cJSON;
Final result code is :

static std::unique_ptr<cJSON> cJSON_New_Item(void)
{
    return std::unique_ptr<cJSON>(new cJSON());
}
"""

        cleaned = probe.cleanCode(code)

        self.assertIn("#include <memory>", cleaned)
        self.assertIn("static std::unique_ptr<cJSON> cJSON_New_Item(void)", cleaned)
        self.assertNotIn("Final result code", cleaned)

    def test_struct_extraction_keeps_referenced_helper_type_aliases(self):
        probe = PromptProbe()
        bz_stream_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "bz_stream",
            [
                "typedef struct {",
                "    void *(*bzalloc)(void *,int,int);",
                "    void (*bzfree)(void *,void *);",
                "} bz_stream;",
            ],
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        result = """use std::os::raw::{c_char, c_int, c_uint, c_void};

pub type BzAllocFunc = Option<unsafe extern "C" fn(*mut c_void, c_int, c_int) -> *mut c_void>;
pub type BzFreeFunc = Option<unsafe extern "C" fn(*mut c_void, *mut c_void)>;

#[repr(C)]
pub struct bz_stream {
    pub next_in: *mut c_char,
    pub avail_in: c_uint,
    pub state: *mut c_void,
    pub bzalloc: BzAllocFunc,
    pub bzfree: BzFreeFunc,
}
"""
        final_code = probe._extractTypeDefinitionFromResult(
            result,
            bz_stream_node,
            probe.extractIncludeBlock(result),
            attachInclude=True,
        )

        self.assertIn("use std::os::raw::{c_char, c_int, c_uint, c_void};", final_code)
        self.assertIn("pub type BzAllocFunc", final_code)
        self.assertIn("pub type BzFreeFunc", final_code)
        self.assertIn("struct bz_stream", final_code)
        self.assertLess(final_code.index("pub type BzAllocFunc"), final_code.index("struct bz_stream"))

    def test_static_extraction_prunes_unused_imports(self):
        probe = PromptProbe()
        file_meta_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STATIC,
            "fileMetaInfo",
            ["static struct stat fileMetaInfo;"],
            TranslationMode.STATIC,
            "normal",
        )
        result = """use std::os::raw::c_int;

#[repr(C)]
#[derive(Copy, Clone)]
struct stat {
    pub __pad0: c_int,
}

static mut fileMetaInfo: stat = stat {
    __pad0: 0,
};
"""
        final_code = probe._extractTypeDefinitionFromResult(
            result,
            file_meta_node,
            probe.extractIncludeBlock(result),
            attachInclude=True,
        )

        self.assertNotIn("use std::os::raw::c_int;", final_code)
        self.assertEqual(
            final_code.strip(),
            """static mut fileMetaInfo: stat = stat {
    __pad0: 0,
};""",
        )

    def test_struct_extraction_keeps_referenced_helper_consts(self):
        probe = PromptProbe()
        estate_node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT,
            "EState",
            [
                "typedef struct {",
                "    UChar selector [(2 + (900000 / 50))];",
                "    UChar selectorMtf[(2 + (900000 / 50))];",
                "} EState;",
            ],
            TranslationMode.PLAIN_STRUCT,
            "normal",
        )
        result = """const SELECTOR_LEN: usize = 2 + (900000 / 50);

#[repr(C)]
pub struct EState {
    pub selector: [u8; SELECTOR_LEN],
    pub selectorMtf: [u8; SELECTOR_LEN],
}
"""
        final_code = probe._extractTypeDefinitionFromResult(
            result,
            estate_node,
            probe.extractIncludeBlock(result),
            attachInclude=True,
        )

        self.assertIn("const SELECTOR_LEN: usize = 2 + (900000 / 50);", final_code)
        self.assertIn("struct EState", final_code)
        self.assertLess(final_code.index("const SELECTOR_LEN"), final_code.index("struct EState"))

    def test_static_extraction_supports_pub_crate_visibility_and_unsafe(self):
        probe = SymbolProbe()
        code = """#[repr(C)]
#[derive(Copy, Clone)]
struct stat {
    pub __pad0: i32,
}

pub(crate) unsafe static mut fileMetaInfo: stat = stat {
    __pad0: 0,
};
"""
        extracted = probe.extractStaticDefinitionByName(code, "fileMetaInfo")
        self.assertEqual(
            extracted,
            """pub(crate) unsafe static mut fileMetaInfo: stat = stat {
    __pad0: 0,
};""",
        )

    def test_static_extraction_does_not_match_initializer_reference(self):
        """A local ``const X = sizeof(STATIC)`` must NOT be picked up as the
        definition of ``STATIC``. The old regex matched any line starting
        with ``const`` / ``static`` that mentioned the target name anywhere
        before a ``;``, which caused ``_stripProvidedDependencyDefinitions``
        to delete the local declaration from the LLM's translation of
        ``url_is_protocol`` (run individual-funcs_claude-sonnet-4-6_2026-05-27_16-22-16).
        Without the local, the loop ``for (unsigned i = 0; i < count; ...)``
        failed all 5 compile retries with ``undeclared identifier 'count'``."""
        probe = SymbolProbe()
        # Only an initializer reference to URL_SCHEMES is present — no
        # real ``static ... URL_SCHEMES`` definition. The extractor must
        # return empty so the strip step is a no-op.
        codeNoDef = """#include <cstring>

bool url_is_protocol(const char* str) {
  const unsigned count = sizeof(URL_SCHEMES) / sizeof(URL_SCHEMES[0]);
  for (unsigned i = 0; i < count; ++i) {
    if (0 == strcmp(URL_SCHEMES[i], str)) { return true; }
  }
  return false;
}
"""
        self.assertEqual(probe.extractStaticDefinitionByName(codeNoDef, "URL_SCHEMES"), "")

        # And the real definition, even when an initializer reference
        # appears further down, still gets picked up correctly.
        codeWithDef = """static const char *URL_SCHEMES[] = {
  "aaa", "aaas", "ftp",
};
bool url_is_protocol(const char* str) {
  const unsigned count = sizeof(URL_SCHEMES) / sizeof(URL_SCHEMES[0]);
  return false;
}
"""
        self.assertEqual(
            probe.extractStaticDefinitionByName(codeWithDef, "URL_SCHEMES"),
            'static const char *URL_SCHEMES[] = {\n  "aaa", "aaas", "ftp",\n};',
        )

    def test_repair_missing_extern_semicolons_does_not_corrupt_following_definition(self):
        source = (
            "typedef int Int32;\n"
            "typedef unsigned char Bool;\n"
            "extern Int32\n"
            "BZ2_indexIntoF ( Int32, Int32* );\n"
            " Int32 BZ2_indexIntoF ( Int32 indx, Int32 *cftab )\n"
            "{\n"
            "   return indx + cftab[0];\n"
            "}\n"
            "static\n"
            "Bool unRLE_obuf_to_output_SMALL ( void )\n"
            "{\n"
            "   Int32 cftab[1] = { 0 };\n"
            "   return (Bool)BZ2_indexIntoF(0, cftab);\n"
            "}\n"
        )
        repaired = repairMissingExternSemicolons(source)

        self.assertIn("BZ2_indexIntoF ( Int32, Int32* );\n", repaired)
        self.assertIn(" Int32 BZ2_indexIntoF ( Int32 indx, Int32 *cftab )\n{\n", repaired)
        self.assertNotIn(" Int32 BZ2_indexIntoF ( Int32 indx, Int32 *cftab );\n{\n", repaired)

        os.environ["PATH"] = (
            "/home/gabe/typedefextractor-target/bin:"
            + os.environ.get("PATH", "")
        )
        extractor = FunctionAndDepsExtractor(DummyLogger())

        with tempfile.TemporaryDirectory() as temp_dir:
            path = os.path.join(temp_dir, "unRLE_obuf_to_output_SMALL.i")
            with open(path, "w") as handle:
                handle.write(repaired)

            func_map = extractor.extractFuncsAndDeps(path, [], None)

        self.assertIn("BZ2_indexIntoF", func_map)
        self.assertIn("unRLE_obuf_to_output_SMALL", func_map)
        self.assertIn("BZ2_indexIntoF", func_map["unRLE_obuf_to_output_SMALL"].dependFunctions)

    def test_repair_missing_extern_semicolons_does_not_corrupt_extern_inline_definition(self):
        source = (
            "typedef struct _IO_FILE FILE;\n"
            "extern int __overflow (FILE *, int);\n"
            "extern  __attribute__ ((__gnu_inline__)) int\n"
            "fputc_unlocked (int __c, FILE *__stream)\n"
            "{\n"
            "  return __overflow (__stream, __c);\n"
            "}\n"
        )

        repaired = repairMissingExternSemicolons(source)

        self.assertIn("fputc_unlocked (int __c, FILE *__stream)\n{\n", repaired)
        self.assertNotIn("fputc_unlocked (int __c, FILE *__stream);\n{\n", repaired)
        self.assertIn("extern int __overflow (FILE *, int);", repaired)


if __name__ == "__main__":
    unittest.main()
