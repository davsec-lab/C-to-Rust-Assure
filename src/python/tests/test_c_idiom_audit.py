import os
import sys
import unittest

sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), "..")))

from gpt_translation.c_idiom_audit import auditTranslation


C_SWITCH_IN_LOOP = """
int f(unsigned char *s, int len)
{
  int pstate = 0;
  int pos = 0;
  while (pos < len) {
    unsigned char c = s[pos++];
    switch (pstate) {
      case 0:
        if (c == 44) {
          break;
        }
        pstate = 2;
        break;
      case 2:
        pstate = 0;
        break;
    }
  }
  return pos;
}
"""


class SwitchBreakMisbinding(unittest.TestCase):
    def test_bare_break_in_match_arm_inside_loop_is_flagged(self):
        rust = """
pub unsafe fn f(s: *mut u8, len: i32) -> i32 {
    let mut pstate: i32 = 0;
    let mut pos: i32 = 0;
    while pos < len {
        let c = *s.add(pos as usize);
        pos += 1;
        match pstate {
            0 => {
                if c == 44 {
                    break;
                }
                pstate = 2;
            }
            2 => { pstate = 0; }
            _ => {}
        }
    }
    pos
}
"""
        findings = auditTranslation("f", C_SWITCH_IN_LOOP, rust)
        self.assertTrue(any(f.startswith("CONTROL FLOW") for f in findings), findings)

    def test_labelled_break_is_not_flagged(self):
        rust = """
pub unsafe fn f(s: *mut u8, len: i32) -> i32 {
    let mut pstate: i32 = 0;
    let mut pos: i32 = 0;
    while pos < len {
        let c = *s.add(pos as usize);
        pos += 1;
        'sw: {
            match pstate {
                0 => {
                    if c == 44 {
                        break 'sw;
                    }
                    pstate = 2;
                }
                2 => { pstate = 0; }
                _ => {}
            }
        }
    }
    pos
}
"""
        self.assertEqual(
            [f for f in auditTranslation("f", C_SWITCH_IN_LOOP, rust) if f.startswith("CONTROL FLOW")],
            [],
        )

    def test_break_of_an_inner_loop_is_not_flagged(self):
        rust = """
pub unsafe fn f(s: *mut u8, len: i32) -> i32 {
    let mut pstate: i32 = 0;
    let mut pos: i32 = 0;
    while pos < len {
        let c = *s.add(pos as usize);
        pos += 1;
        match pstate {
            0 => {
                while pos < len {
                    break;
                }
                pstate = 2;
            }
            2 => { pstate = 0; }
            _ => {}
        }
    }
    pos
}
"""
        self.assertEqual(
            [f for f in auditTranslation("f", C_SWITCH_IN_LOOP, rust) if f.startswith("CONTROL FLOW")],
            [],
        )


class CallAndConstantCounts(unittest.TestCase):
    C_WITH_GUARD = """
int g(int *p, int opts);
int f(int *p, int opts)
{
  if (opts & 2) {
    g(p, opts);
  }
  g(p, opts);
  return 0;
}
"""

    def test_forward_declaration_is_not_counted_as_a_call(self):
        rust = """
pub unsafe fn f(p: *mut i32, opts: i32) -> i32 {
    if opts & 2 != 0 { g(p, opts); }
    g(p, opts);
    0
}
"""
        self.assertEqual(auditTranslation("f", self.C_WITH_GUARD, rust), [])

    def test_dropped_guard_shows_up_as_call_count_and_constant(self):
        rust = """
pub unsafe fn f(p: *mut i32, opts: i32) -> i32 {
    g(p, opts);
    0
}
"""
        findings = auditTranslation("f", self.C_WITH_GUARD, rust)
        self.assertTrue(any(f.startswith("CALL COUNT") for f in findings), findings)
        self.assertTrue(any(f.startswith("CONSTANT") for f in findings), findings)


class AssertScaffolding(unittest.TestCase):
    C_ASSERT = """
int csv_error(const struct csv_parser *p)
{
  ((void) sizeof ((p && "received null csv_parser") ? 1 : 0),  ({ if (p && "received null csv_parser") ; else __assert_fail ("p", "libcsv.c", 129,  __PRETTY_FUNCTION__); }));
  return p->status;
}
"""

    def test_assert_expansion_produces_no_findings(self):
        rust = """
pub unsafe fn csv_error(p: *const csv_parser) -> c_int {
    assert!(!p.is_null(), "received null csv_parser");
    (*p).status
}
"""
        self.assertEqual(auditTranslation("csv_error", self.C_ASSERT, rust), [])


class Degradation(unittest.TestCase):
    def test_unlocatable_target_says_nothing(self):
        self.assertEqual(auditTranslation("nope", C_SWITCH_IN_LOOP, "pub fn other() {}"), [])

    def test_empty_inputs_say_nothing(self):
        self.assertEqual(auditTranslation("f", "", "pub fn f() {}"), [])
        self.assertEqual(auditTranslation("f", C_SWITCH_IN_LOOP, ""), [])


if __name__ == "__main__":
    unittest.main()
