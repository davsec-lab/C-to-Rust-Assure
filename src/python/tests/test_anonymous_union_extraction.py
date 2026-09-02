import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)

tiktoken_stub = types.ModuleType("tiktoken")
tiktoken_stub.encoding_name_for_model = lambda *_args, **_kwargs: "stub"
tiktoken_stub.get_encoding = lambda *_args, **_kwargs: types.SimpleNamespace(
    encode=lambda text: (text or "").split()
)
sys.modules.setdefault("tiktoken", tiktoken_stub)

sympy_mod = types.ModuleType("sympy")
codegen_mod = types.ModuleType("sympy.codegen")
cnodes_mod = types.ModuleType("sympy.codegen.cnodes")
cnodes_mod.struct = object()
sys.modules.setdefault("sympy", sympy_mod)
sys.modules.setdefault("sympy.codegen", codegen_mod)
sys.modules.setdefault("sympy.codegen.cnodes", cnodes_mod)

from functionAndDeps import FunctionAndDependencies
from functionAndDepsExtractor import FunctionAndDepsExtractor
from type_registry import TypeKind, TranslationMode


NSVG_PAINT_DEFINITION = [
    "typedef struct NSVGpaint {",
    "    signed char type;",
    "    union {",
    "        unsigned int color;",
    "        NSVGgradient* gradient;",
    "    };",
    "} NSVGpaint;",
]

NESTED_NAMED_FIELD_DEFINITION = [
    "struct WithNamedField {",
    "    int kind;",
    "    union {",
    "        int a;",
    "        char b;",
    "    } variant;",
    "};",
]

NO_UNION_DEFINITION = [
    "typedef struct Plain {",
    "    int x;",
    "    float y;",
    "} Plain;",
]

NAMED_UNION_DEFINITION = [
    "typedef struct WithNamedUnion {",
    "    int kind;",
    "    union AlreadyNamed {",
    "        int a;",
    "        char b;",
    "    } u;",
    "} WithNamedUnion;",
]


class _StubLogger:
    def info(self, *_args, **_kwargs):
        pass

    def warning(self, *_args, **_kwargs):
        pass

    def debug(self, *_args, **_kwargs):
        pass

    def error(self, *_args, **_kwargs):
        pass

    def critical(self, *_args, **_kwargs):
        pass


def _makeExtractor():
    extractor = FunctionAndDepsExtractor.__new__(FunctionAndDepsExtractor)
    extractor.logger = _StubLogger()
    extractor._file_lines_cache = {}
    return extractor


class TypeKindHasUnion(unittest.TestCase):
    def test_union_kind_present(self):
        self.assertEqual(TypeKind.UNION.value, "union")

    def test_translation_mode_union_present(self):
        self.assertEqual(TranslationMode.UNION.value, "union")


class LiftAnonymousUnions(unittest.TestCase):
    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()
        self.extractor = _makeExtractor()

    def test_lifts_anonymous_union_in_typedef_struct(self):
        modified, synthetics = self.extractor._lift_anonymous_unions(
            "NSVGpaint", NSVG_PAINT_DEFINITION,
        )

        self.assertEqual(len(synthetics), 1)
        unionName, unionBody = synthetics[0]
        self.assertEqual(unionName, "NSVGpaintUnion")
        self.assertIn("union NSVGpaintUnion {", unionBody)
        self.assertIn("unsigned int color", unionBody)
        self.assertIn("NSVGgradient* gradient", unionBody)
        self.assertTrue(unionBody.rstrip().endswith(";"))

        modifiedText = "\n".join(modified)
        self.assertIn("NSVGpaintUnion u;", modifiedText)
        self.assertNotIn("union {", modifiedText)

    def test_preserves_existing_field_name(self):
        modified, synthetics = self.extractor._lift_anonymous_unions(
            "WithNamedField", NESTED_NAMED_FIELD_DEFINITION,
        )
        self.assertEqual(len(synthetics), 1)
        unionName, _ = synthetics[0]
        self.assertEqual(unionName, "WithNamedFieldUnion")
        self.assertIn("WithNamedFieldUnion variant;", "\n".join(modified))

    def test_no_union_present_is_noop(self):
        modified, synthetics = self.extractor._lift_anonymous_unions(
            "Plain", NO_UNION_DEFINITION,
        )
        self.assertEqual(synthetics, [])
        self.assertEqual(modified, NO_UNION_DEFINITION)

    def test_already_named_union_is_left_alone(self):
        modified, synthetics = self.extractor._lift_anonymous_unions(
            "WithNamedUnion", NAMED_UNION_DEFINITION,
        )
        self.assertEqual(synthetics, [])
        self.assertEqual(modified, NAMED_UNION_DEFINITION)

    def test_multiple_anonymous_unions_get_indexed(self):
        twoUnions = [
            "struct TwoUnions {",
            "    union { int a; char b; };",
            "    union { float x; double y; };",
            "};",
        ]
        modified, synthetics = self.extractor._lift_anonymous_unions(
            "TwoUnions", twoUnions,
        )
        self.assertEqual(len(synthetics), 2)
        self.assertEqual(synthetics[0][0], "TwoUnionsUnion")
        self.assertEqual(synthetics[1][0], "TwoUnionsUnion2")
        modifiedText = "\n".join(modified)
        self.assertIn("TwoUnionsUnion u;", modifiedText)
        self.assertIn("TwoUnionsUnion2 u;", modifiedText)


class UnionRoutingThroughTypeRegistry(unittest.TestCase):
    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()

    def test_upsert_union_node_visible_in_legacy_maps(self):
        FunctionAndDependencies.upsertTypeNode(
            kind=TypeKind.UNION,
            name="MyUnion",
            c_code="union MyUnion { int a; char b; };",
            translation_mode=TranslationMode.UNION,
        )
        self.assertIn("MyUnion", FunctionAndDependencies.unionsWithUsageInfoMap)
        # Backward-compat: anything iterating struct map should see it too
        self.assertIn("MyUnion", FunctionAndDependencies.structsWithUsageInfoMap)

    def test_register_type_reference_records_union(self):
        node = FunctionAndDependencies.upsertTypeNode(
            kind=TypeKind.UNION,
            name="RegU",
            c_code="union RegU { int a; };",
            translation_mode=TranslationMode.UNION,
        )
        deps = FunctionAndDependencies("dummyFunc")
        deps.registerTypeReference(node.key, 1, 5)
        self.assertIn("RegU", deps.unionsWithUsageInfo)
        self.assertIn("RegU", deps.structsWithUsageInfo)


class UnionIdentifierExtraction(unittest.TestCase):
    def test_named_union_identifiers(self):
        extractor = _makeExtractor()
        ids = extractor._extract_union_identifiers(
            "NSVGpaintUnion", "union NSVGpaintUnion { int a; char b; };",
        )
        self.assertIn("NSVGpaintUnion", ids)

    def test_typedef_union_identifiers(self):
        extractor = _makeExtractor()
        ids = extractor._extract_union_identifiers(
            "AliasedU", "typedef union { int a; } AliasedU;",
        )
        self.assertIn("AliasedU", ids)


if __name__ == "__main__":
    unittest.main()
