import os
import sys
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from split_tag_declarations import splitTagDefinitionsWithDeclarators as split


class SplitTagDeclarationsTest(unittest.TestCase):
    def test_named_struct_with_a_variable_is_split(self):
        # jccc: struct GenState { ... } GEN_STATE;
        out, n = split("struct GenState {\n    unsigned regs;\n} GEN_STATE;\nvoid f(void) { GEN_STATE.regs = 0; }\n")
        self.assertEqual(n, 1)
        self.assertIn("struct GenState {\n    unsigned regs;\n};\nstruct GenState GEN_STATE;", out)
        self.assertIn("void f(void) { GEN_STATE.regs = 0; }", out)

    def test_storage_class_initializer_and_several_declarators_stay_with_the_variables(self):
        out, n = split("static struct S { int a; } x = {1}, *p = &x;\n")
        self.assertEqual(n, 1)
        self.assertEqual(out, "struct S { int a; };\nstatic struct S x = {1}, *p = &x;\n")

    def test_anonymous_type_gets_a_tag_from_its_first_variable(self):
        # libpsbt-like counters and enums without a tag
        out, n = split("struct { int inputs; } counter;\nenum { A, B } mode;\n")
        self.assertEqual(n, 2)
        self.assertIn("struct __anon_struct_counter { int inputs; };\nstruct __anon_struct_counter counter;", out)
        self.assertIn("enum __anon_enum_mode { A, B };\nenum __anon_enum_mode mode;", out)

    def test_what_has_no_variable_or_is_a_typedef_or_is_local_is_left_alone(self):
        source = ("struct S { int a; };\n"
                  "typedef struct { int b; } T;\n"
                  "__extension__ typedef struct { long q; } lldiv_t;\n"
                  "struct S s;\n"
                  "void f(void) { struct L { int c; } l; const char *t = \"} x;\"; }\n")
        out, n = split(source)
        self.assertEqual(n, 0)
        self.assertEqual(out, source)

    def test_braces_in_strings_do_not_confuse_it(self):
        source = 'const char *open = "{", *close = "}";\nstruct C { int n; } counter;\n'
        out, n = split(source)
        self.assertEqual(n, 1)
        self.assertIn('const char *open = "{", *close = "}";', out)
        self.assertIn("struct C { int n; };\nstruct C counter;", out)


if __name__ == "__main__":
    unittest.main()
