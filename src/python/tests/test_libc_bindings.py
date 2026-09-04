import os
import sys
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

from gpt_translation.libc_bindings import libcBindingContract, referencedLibcSymbols


CSV_INIT_I = """
typedef long unsigned int size_t;
struct csv_parser {
  size_t blk_size;
  void *(*malloc_func)(size_t);
  void *(*realloc_func)(void *, size_t);
  void (*free_func)(void *);
};
int
csv_init(struct csv_parser *p, unsigned char options)
{
  p->blk_size = 128;
  p->malloc_func = ((void*)0);
  p->realloc_func = realloc;
  p->free_func = free;
  return 0;
}
"""

CSV_ERROR_I = """
int
csv_error(const struct csv_parser *p)
{
  ((void) sizeof ((p && "received null csv_parser") ? 1 : 0),  ({ if (p && "received null csv_parser") ; else __assert_fail ("p", "libcsv.c", 129,  __PRETTY_FUNCTION__); }));
  return p->status;
}
"""

CSV_SET_DELIM_I = """
void
csv_set_delim(struct csv_parser *p, unsigned char c)
{
  if (p) p->delim_char = c;
}
"""


class SymbolDetection(unittest.TestCase):
    def test_bare_reference_to_a_stripped_symbol_is_found(self):
        self.assertEqual(sorted(referencedLibcSymbols(CSV_INIT_I)), ["free", "realloc"])

    def test_field_name_containing_a_symbol_is_not_a_reference(self):
        src = "struct s { void (*free_func)(void *); size_t mallocated; };"
        self.assertEqual(referencedLibcSymbols(src), [])

    def test_symbol_inside_a_string_literal_is_not_a_reference(self):
        self.assertEqual(referencedLibcSymbols('char *m = "call malloc here";'), [])


class ContractText(unittest.TestCase):
    def test_signatures_and_the_use_line_are_given(self):
        text = libcBindingContract(CSV_INIT_I)
        self.assertIn("libc::realloc(p: *mut c_void, size: size_t) -> *mut c_void", text)
        self.assertIn("libc::free(p: *mut c_void)", text)
        self.assertIn("use libc::{realloc, free};", text)
        self.assertIn("std::alloc", text)          # named as the thing not to do

    def test_assert_expansion_gets_its_own_instruction(self):
        text = libcBindingContract(CSV_ERROR_I)
        self.assertIn("assert!(cond);", text)
        self.assertNotIn("The `libc` crate is available", text)

    def test_a_function_needing_nothing_gets_nothing(self):
        self.assertEqual(libcBindingContract(CSV_SET_DELIM_I), "")

    def test_empty_source_is_safe(self):
        self.assertEqual(libcBindingContract(""), "")
        self.assertEqual(libcBindingContract(None), "")


if __name__ == "__main__":
    unittest.main()
