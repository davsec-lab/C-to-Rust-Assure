"""Unit tests for ``gpt_translation.byte_buffer_classifier``.

The classifier exists to catch the cjson_new Stage_3 failure described in
the module docstring: ``cJSON.valuestring`` was left as ``char *``
because the LLM read the per-field usage block as "text-like" (null
checks + cursor read + free) and ignored the lone smoking-gun line
``item->valuestring = (char*)output``. Stage_3 then converted the local
``output`` in ``parse_string`` to ``std::vector<unsigned char>`` and
aliased its ``.data()`` into the still-``char*`` field, producing a
double-free at the next ``cJSON_Delete``.

These tests assert that the static analyzer:

  * fires exactly on the cjson_new ``parse_string`` shape (the bug case);
  * leaves every other shape unchanged — the "control influence" the
    user asked for is narrow on purpose, and that narrowness is the
    main thing that can regress;
  * honors the ``char *``-only field filter (no annotation on ``int``,
    ``struct *``, ``char **``, ``char[]``, etc.);
  * resists trivial false positives from terminator writes / single
    ``*p = '\\0';`` lines / non-cursor pointer arithmetic;
  * follows alias chains across ``output_pointer = output;``-style
    assignments (without which the cjson case would not match).
"""

import os
import sys
import textwrap
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(
    0,
    os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"),
)

from gpt_translation.byte_buffer_classifier import (
    BYTE_BUFFER_TAG,
    _alias_closure,
    _cursor_write_counts,
    classify_use_site,
    is_byte_cursor_build,
    is_char_star_field,
    propagate_byte_buffer_tags,
)


# ----------------------------------------------------------------------------
# Shared fixtures — pulled (lightly trimmed) from the actual cjson_new
# parse_string.i so the tests reflect the real-world bug case the
# classifier was written to catch.
# ----------------------------------------------------------------------------

CJSON_STRUCT_C = """
typedef struct cJSON
{
    struct cJSON *next;
    struct cJSON *prev;
    struct cJSON *child;
    int type;
    char *valuestring;
    int valueint;
    double valuedouble;
    char *string;
} cJSON;
"""

PARSE_STRING_BODY = textwrap.dedent("""
    static cJSON_bool parse_string(cJSON * const item, parse_buffer * const input_buffer)
    {
        const unsigned char *input_pointer = ((input_buffer)->content + (input_buffer)->offset) + 1;
        const unsigned char *input_end = ((input_buffer)->content + (input_buffer)->offset) + 1;
        unsigned char *output_pointer = ((void*)0);
        unsigned char *output = ((void*)0);
        if (((input_buffer)->content + (input_buffer)->offset)[0] != '"')
        {
            goto fail;
        }
        {
            size_t allocation_length = 0;
            size_t skipped_bytes = 0;
            output = (unsigned char*)input_buffer->hooks.allocate(allocation_length + sizeof(""));
            if (output == ((void*)0))
            {
                goto fail;
            }
            output_pointer = output;
            while (input_pointer < input_end)
            {
                if (*input_pointer != '\\\\')
                {
                    *output_pointer++ = *input_pointer++;
                }
                else
                {
                    unsigned char sequence_length = 2;
                    switch (input_pointer[1])
                    {
                        case 'b':
                            *output_pointer++ = '\\b';
                            break;
                        case 'f':
                            *output_pointer++ = '\\f';
                            break;
                        case 'n':
                            *output_pointer++ = '\\n';
                            break;
                        case 'r':
                            *output_pointer++ = '\\r';
                            break;
                        case 't':
                            *output_pointer++ = '\\t';
                            break;
                        case '"':
                        case '\\\\':
                        case '/':
                            *output_pointer++ = input_pointer[1];
                            break;
                    }
                    input_pointer += sequence_length;
                }
            }
            *output_pointer = '\\0';
            item->type = (1 << 4);
            item->valuestring = (char*)output;
            input_buffer->offset = (size_t)(input_pointer - input_buffer->content);
            input_buffer->offset++;
            return 1;
        }
    fail:
        return 0;
    }
""").lstrip()


# ============================================================================
# is_char_star_field — the field-type filter (gate 1)
# ============================================================================
class IsCharStarFieldTests(unittest.TestCase):
    """Verifies the field-type filter. This is the gate that keeps the
    analyzer's blast radius scoped to ``char *`` fields per the user's
    explicit scope request."""

    def test_accepts_bare_char_star(self):
        self.assertTrue(is_char_star_field(CJSON_STRUCT_C, "valuestring"))
        self.assertTrue(is_char_star_field(CJSON_STRUCT_C, "string"))

    def test_accepts_const_char_star(self):
        body = "struct S { const char *msg; };"
        self.assertTrue(is_char_star_field(body, "msg"))

    def test_accepts_unsigned_char_star(self):
        body = "struct S { unsigned char *bytes; };"
        self.assertTrue(is_char_star_field(body, "bytes"))

    def test_accepts_signed_char_star(self):
        body = "struct S { signed char *sbytes; };"
        self.assertTrue(is_char_star_field(body, "sbytes"))

    def test_accepts_const_volatile_char_star(self):
        body = "struct S { const volatile char *mixed; };"
        self.assertTrue(is_char_star_field(body, "mixed"))

    def test_rejects_int_field(self):
        self.assertFalse(is_char_star_field(CJSON_STRUCT_C, "valueint"))
        self.assertFalse(is_char_star_field(CJSON_STRUCT_C, "type"))

    def test_rejects_double_field(self):
        self.assertFalse(is_char_star_field(CJSON_STRUCT_C, "valuedouble"))

    def test_rejects_struct_pointer_field(self):
        """Linked-list pointers (``struct cJSON *next``) are not char*."""
        self.assertFalse(is_char_star_field(CJSON_STRUCT_C, "next"))
        self.assertFalse(is_char_star_field(CJSON_STRUCT_C, "prev"))
        self.assertFalse(is_char_star_field(CJSON_STRUCT_C, "child"))

    def test_rejects_char_double_pointer(self):
        """``char **`` has different ownership semantics — exclude."""
        body = "struct S { char **argv; };"
        self.assertFalse(is_char_star_field(body, "argv"))

    def test_rejects_char_double_pointer_with_const(self):
        body = "struct S { const char **argv; };"
        self.assertFalse(is_char_star_field(body, "argv"))

    def test_rejects_char_array(self):
        """``char[]`` is not a pointer — different ownership story."""
        body = "struct S { char name[64]; };"
        self.assertFalse(is_char_star_field(body, "name"))

    def test_rejects_unknown_field(self):
        self.assertFalse(is_char_star_field(CJSON_STRUCT_C, "nonexistent"))

    def test_handles_empty_inputs(self):
        self.assertFalse(is_char_star_field("", "valuestring"))
        self.assertFalse(is_char_star_field(CJSON_STRUCT_C, ""))
        self.assertFalse(is_char_star_field(None, "x"))
        self.assertFalse(is_char_star_field("struct {};", None))

    def test_does_not_match_substring(self):
        """``valuestring`` should not match a field named ``string`` (or
        the other way around) just because one name is a suffix of the
        other."""
        body = "struct S { char *string; int valuestring_count; };"
        self.assertTrue(is_char_star_field(body, "string"))
        self.assertFalse(is_char_star_field(body, "valuestring_count"))

    def test_strips_block_comments_before_matching(self):
        """A field commented out should not match — block comment
        stripping prevents that false positive."""
        body = "struct S { /* char *commented; */ int real; };"
        self.assertFalse(is_char_star_field(body, "commented"))
        self.assertFalse(is_char_star_field(body, "real"))  # real is int

    def test_handles_multi_declarator_line(self):
        """``char *a, *b;`` — both ``a`` and ``b`` are char*."""
        body = "struct S { char *a, *b; };"
        self.assertTrue(is_char_star_field(body, "a"))
        self.assertTrue(is_char_star_field(body, "b"))


# ============================================================================
# _cursor_write_counts — the byte-cursor write site detector
# ============================================================================
class CursorWriteCountsTests(unittest.TestCase):

    def test_counts_basic_cursor_writes(self):
        body = "*p++ = 'a'; *p++ = 'b'; *p++ = 'c';"
        self.assertEqual(_cursor_write_counts(body), {"p": 3})

    def test_counts_per_pointer(self):
        body = "*p++ = 1; *q++ = 2; *p++ = 3;"
        self.assertEqual(_cursor_write_counts(body), {"p": 2, "q": 1})

    def test_ignores_compare_not_assign(self):
        """``*p++ == 'x'`` is a comparison, not a cursor write."""
        body = "while (*p++ == 'x') { }"
        self.assertEqual(_cursor_write_counts(body), {})

    def test_handles_whitespace_variations(self):
        body = "* p ++  =  'x' ;\n*q++='y';"
        counts = _cursor_write_counts(body)
        self.assertEqual(counts.get("p"), 1)
        self.assertEqual(counts.get("q"), 1)

    def test_strips_block_comments(self):
        body = "/* *p++ = 'x'; */ *q++ = 'y';"
        self.assertEqual(_cursor_write_counts(body), {"q": 1})

    def test_handles_byte_copy_rhs(self):
        body = "while (n--) { *dst++ = *src++; }"
        self.assertEqual(_cursor_write_counts(body), {"dst": 1})

    def test_handles_masked_byte_rhs(self):
        body = "*out++ = (codepoint | 0x80) & 0xBF;"
        self.assertEqual(_cursor_write_counts(body), {"out": 1})

    def test_handles_empty_body(self):
        self.assertEqual(_cursor_write_counts(""), {})


# ============================================================================
# _alias_closure — propagate seed across `lhs = rhs;` chains
# ============================================================================
class AliasClosureTests(unittest.TestCase):
    """Without alias propagation the cjson case does not match: the cast
    RHS is ``output`` but the cursor writes are through ``output_pointer``
    (aliased via ``output_pointer = output;``)."""

    def test_seed_is_in_closure(self):
        self.assertEqual(_alias_closure("int x = 1;", "x"), {"x"})

    def test_propagates_forward_alias(self):
        body = "char *output; char *output_pointer; output_pointer = output;"
        aliases = _alias_closure(body, "output")
        self.assertIn("output", aliases)
        self.assertIn("output_pointer", aliases)

    def test_propagates_backward_alias(self):
        """Either side may be the seed — alias is symmetric."""
        body = "output_pointer = output;"
        aliases = _alias_closure(body, "output_pointer")
        self.assertIn("output_pointer", aliases)
        self.assertIn("output", aliases)

    def test_propagates_transitively(self):
        body = """
            a = b;
            b = c;
            c = d;
        """
        aliases = _alias_closure(body, "a")
        self.assertEqual(aliases, {"a", "b", "c", "d"})

    def test_does_not_propagate_through_expression_rhs(self):
        """``cursor = base + 1;`` is not a pure alias — it points one byte
        past, so writes through it tell us nothing about ``base``."""
        body = "char *cursor; cursor = base + 1;"
        aliases = _alias_closure(body, "base")
        self.assertEqual(aliases, {"base"})  # cursor NOT included

    def test_does_not_propagate_through_cast_rhs(self):
        """``output = (unsigned char*)malloc(n);`` — the seed is the
        cast result, not malloc itself; we deliberately do not chase
        through casts here."""
        body = "output = (unsigned char*)malloc(n);"
        aliases = _alias_closure(body, "output")
        self.assertEqual(aliases, {"output"})

    def test_terminates_on_unrelated_assignments(self):
        body = """
            x = y;
            unrelated_a = unrelated_b;
            other = stranger;
        """
        aliases = _alias_closure(body, "x")
        self.assertEqual(aliases, {"x", "y"})


# ============================================================================
# is_byte_cursor_build — the integrator (cast site + alias + cursor count)
# ============================================================================
class IsByteCursorBuildTests(unittest.TestCase):

    def test_matches_cjson_parse_string(self):
        """The actual bug case: cast assignment to ``output`` whose
        alias ``output_pointer`` receives 8 cursor writes."""
        use_line = "item->valuestring = (char*)output"
        self.assertTrue(is_byte_cursor_build(use_line, PARSE_STRING_BODY))

    def test_matches_when_cast_id_is_the_cursor_directly(self):
        """No alias chain needed when the cast RHS itself is what gets
        ``*++`` writes."""
        body = """
            char *p = buf;
            *p++ = 'a';
            *p++ = 'b';
            *p++ = 'c';
        """
        self.assertTrue(is_byte_cursor_build("field = (char*)p", body))

    def test_rejects_non_cast_use_lines(self):
        """Reads / null-checks / frees never trigger."""
        self.assertFalse(is_byte_cursor_build(
            "if (item->valuestring != ((void*)0))", PARSE_STRING_BODY,
        ))
        self.assertFalse(is_byte_cursor_build(
            "free(item->valuestring)", PARSE_STRING_BODY,
        ))
        self.assertFalse(is_byte_cursor_build(
            "const char *p = item->valuestring", PARSE_STRING_BODY,
        ))

    def test_rejects_cast_assignment_in_non_cursor_function(self):
        """A function that takes the result of strdup / a function call
        and stores it via ``(char*)`` cast is NOT a cursor build."""
        body = """
            char *buf = strdup(source);
            item->field = (char*)buf;
        """
        self.assertFalse(is_byte_cursor_build("item->field = (char*)buf", body))

    def test_rejects_single_terminator_write(self):
        """``*p = '\\0';`` alone is below the threshold; we don't want
        lone terminator writes in otherwise-text code to trigger."""
        body = """
            char *p = strdup(source);
            *p++ = 0;
            item->field = (char*)p;
        """
        self.assertFalse(is_byte_cursor_build("item->field = (char*)p", body))

    def test_accepts_lower_threshold_for_single_write(self):
        """Sanity: opt-in to minimum_cursor_writes=1 for callers that
        want maximum sensitivity."""
        body = """
            char *p = buf;
            *p++ = 'x';
            item->field = (char*)p;
        """
        self.assertTrue(is_byte_cursor_build(
            "item->field = (char*)p", body, minimum_cursor_writes=1,
        ))
        self.assertFalse(is_byte_cursor_build(
            "item->field = (char*)p", body, minimum_cursor_writes=2,
        ))

    def test_unsigned_char_star_cast_also_matches(self):
        body = """
            unsigned char *p = buf;
            *p++ = 'a';
            *p++ = 'b';
        """
        self.assertTrue(is_byte_cursor_build(
            "field = (unsigned char*)p", body,
        ))

    def test_empty_inputs_yield_false(self):
        self.assertFalse(is_byte_cursor_build("", "anything"))
        self.assertFalse(is_byte_cursor_build("x = (char*)y", ""))
        self.assertFalse(is_byte_cursor_build(None, None))


# ============================================================================
# classify_use_site — the public top-level API used by the extractor
# ============================================================================
class ClassifyUseSiteTests(unittest.TestCase):
    """End-to-end gating: char*-field filter + cast-assignment shape +
    verified cursor build. All three must hold for a tag to come back."""

    def test_emits_tag_for_cjson_valuestring(self):
        """The headline case: cjson_new's parse_string bug. The
        annotation MUST appear so the Stage_3 prompt's trust-the-tag
        rule has something to trust."""
        suffix = classify_use_site(
            "item->valuestring = (char*)output",
            PARSE_STRING_BODY,
            CJSON_STRUCT_C,
            "valuestring",
        )
        self.assertEqual(suffix, BYTE_BUFFER_TAG)

    def test_no_tag_for_int_field_even_with_cursor_producer(self):
        """Field filter wins over use-site shape — an int field with the
        identical use line gets nothing. This is the "control influence"
        request: scope is char* only."""
        suffix = classify_use_site(
            "item->valueint = (char*)output",  # synthetic — but the filter must reject
            PARSE_STRING_BODY,
            CJSON_STRUCT_C,
            "valueint",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_for_struct_pointer_field(self):
        suffix = classify_use_site(
            "item->next = (char*)output",
            PARSE_STRING_BODY,
            CJSON_STRUCT_C,
            "next",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_for_char_double_pointer_field(self):
        struct = "struct S { char **argv; };"
        suffix = classify_use_site(
            "obj->argv = (char**)output",
            PARSE_STRING_BODY,
            struct,
            "argv",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_for_null_check_use_line(self):
        suffix = classify_use_site(
            "if (item->valuestring != ((void*)0))",
            PARSE_STRING_BODY,
            CJSON_STRUCT_C,
            "valuestring",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_for_free_use_line(self):
        suffix = classify_use_site(
            "free(item->valuestring)",
            PARSE_STRING_BODY,
            CJSON_STRUCT_C,
            "valuestring",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_for_cursor_read_use_line(self):
        suffix = classify_use_site(
            "const char *p = item->valuestring",
            PARSE_STRING_BODY,
            CJSON_STRUCT_C,
            "valuestring",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_for_field_to_field_pointer_move(self):
        """``current_item->string = current_item->valuestring;`` is
        pointer aliasing between two char* fields, NOT a cursor build —
        whatever was on the right has to be classified separately."""
        suffix = classify_use_site(
            "current_item->string = current_item->valuestring",
            PARSE_STRING_BODY,
            CJSON_STRUCT_C,
            "string",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_for_cast_from_strdup_result(self):
        """The cast is there, but the producer is single-shot strdup, not
        cursor build. Must NOT tag."""
        body = """
            char *buf = strdup(source);
            item->field = (char*)buf;
        """
        struct = "struct S { char *field; };"
        suffix = classify_use_site(
            "item->field = (char*)buf", body, struct, "field",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_when_struct_code_missing(self):
        """Defensive — if the registry has no cCode for the struct, the
        field filter can't run; default to no annotation rather than
        guessing."""
        suffix = classify_use_site(
            "item->valuestring = (char*)output",
            PARSE_STRING_BODY,
            "",
            "valuestring",
        )
        self.assertEqual(suffix, "")

    def test_no_tag_when_producer_body_missing(self):
        """If the producer .i file is unreadable / empty, gate 3 cannot
        verify cursor build; default to no annotation."""
        suffix = classify_use_site(
            "item->valuestring = (char*)output",
            "",
            CJSON_STRUCT_C,
            "valuestring",
        )
        self.assertEqual(suffix, "")

    def test_tag_is_idempotent_when_applied_to_already_annotated(self):
        """If the use line already carries the tag (defense-in-depth
        against double-wiring), classify still returns the tag — caller
        is responsible for de-duplicating via merge_usage_list_entry's
        set-like behavior on the final string. This test just pins down
        the public contract: classify_use_site is a pure function of
        the inputs; it doesn't inspect prior annotations."""
        already = "item->valuestring = (char*)output" + BYTE_BUFFER_TAG
        # Note: the cast regex still matches the (char*)output substring,
        # so we expect the tag to be returned again. De-dup is upstream.
        suffix = classify_use_site(
            already,
            PARSE_STRING_BODY,
            CJSON_STRUCT_C,
            "valuestring",
        )
        self.assertEqual(suffix, BYTE_BUFFER_TAG)


# ============================================================================
# Cross-cutting: the exact line set the cjson_new bug produced
# ============================================================================
class CjsonNewBugRepro(unittest.TestCase):
    """Mirrors the actual usage-example block sent to the Stage_3 LLM
    for ``cJSON.valuestring`` in the 2026-05-17 run that SIGABRT'd. For
    each line we assert whether the classifier tags it — the ONLY line
    that should be tagged is the cast assignment. All siblings (which
    are text-like in shape) must pass through unchanged so the prompt
    contract stays narrow."""

    USAGE_LINES = [
        "current_item->string = current_item->valuestring",
        "current_item->valuestring = ((void*)0)",
        "if (item->valuestring != ((void*)0))",
        "const char *p = item->valuestring",
        "if (!(item->type & 256) && (item->valuestring != ((void*)0)))",
        "global_hooks.deallocate(item->valuestring)",
        "item->valuestring = ((void*)0)",
        "item->valuestring = (char*)output",  # ★ the only one that should tag
    ]

    def test_only_cast_assignment_gets_tagged(self):
        tagged = []
        untagged = []
        for line in self.USAGE_LINES:
            suffix = classify_use_site(
                line, PARSE_STRING_BODY, CJSON_STRUCT_C, "valuestring",
            )
            (tagged if suffix else untagged).append(line)

        self.assertEqual(
            tagged,
            ["item->valuestring = (char*)output"],
            "exactly the smoking-gun line must be tagged, no others",
        )
        self.assertEqual(
            len(untagged), len(self.USAGE_LINES) - 1,
            "every other line must pass through unchanged",
        )


# ============================================================================
# propagate_byte_buffer_tags — the second-pass transitive propagator
# ============================================================================
class PropagateByteBufferTagsTests(unittest.TestCase):
    """The propagation pass closes the cjson_new ``cJSON.string ←
    cJSON.valuestring`` hand-off case that the per-use-line classifier
    cannot see by itself. These tests cover the canonical case, the
    edge cases that decide whether propagation is safe, and the
    gating rules that keep the second pass as narrow as the first."""

    def test_propagates_via_field_to_field_move_in_cjson(self):
        """The cjson_new bug case verbatim: ``valuestring`` is tagged
        by the direct pass, and ``current_item->string =
        current_item->valuestring`` propagates the tag to ``string``."""
        usage = {
            "valuestring": [
                "item->valuestring = (char*)output" + BYTE_BUFFER_TAG,
            ],
            "string": [
                "current_item->string = current_item->valuestring",
                "if (item->string != ((void*)0))",
                "free(item->string)",
            ],
        }
        newly = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        self.assertEqual(newly, {"string"})
        # The move-site use line in string's list should now carry the tag.
        tagged_lines = [u for u in usage["string"] if BYTE_BUFFER_TAG in u]
        self.assertEqual(
            tagged_lines,
            ["current_item->string = current_item->valuestring" + BYTE_BUFFER_TAG],
            "exactly the move-site line in string's list must be tagged",
        )

    def test_propagation_is_one_directional(self):
        """``string = valuestring`` propagates from valuestring → string.
        It must NOT propagate the other way (e.g. tagging valuestring
        as a side-effect of tagging string), which would be unsound:
        you can assign a non-byte source into a byte field, but not
        the reverse without that being the trigger."""
        # Same setup, but seed the tag on string instead of valuestring.
        usage = {
            "valuestring": [
                "item->valuestring = (char*)output",
            ],
            "string": [
                "current_item->string = current_item->valuestring"
                + BYTE_BUFFER_TAG,
            ],
        }
        newly = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        self.assertEqual(
            newly, set(),
            "tag on LHS field must NOT propagate to RHS — unsound direction",
        )
        # valuestring's list must remain pristine.
        self.assertFalse(any(BYTE_BUFFER_TAG in u for u in usage["valuestring"]))

    def test_propagates_through_chain(self):
        """Multi-hop chain ``a ← b ← c``: tagging c should reach both
        b and a via two propagation rounds."""
        struct = "struct S { char *a; char *b; char *c; };"
        usage = {
            "a": ["x->a = x->b"],
            "b": ["x->b = x->c", "x->a = x->b"],
            "c": ["x->c = (char*)cursor" + BYTE_BUFFER_TAG],
        }
        newly = propagate_byte_buffer_tags(usage, struct)
        self.assertEqual(newly, {"a", "b"})
        # Each newly-tagged field gets the tag on its evidence line.
        self.assertTrue(any(BYTE_BUFFER_TAG in u for u in usage["a"]))
        self.assertTrue(any(BYTE_BUFFER_TAG in u for u in usage["b"]))

    def test_respects_char_star_filter(self):
        """Propagation gate matches the direct pass: even when the
        move-site exists, an int / struct* / char** LHS field is NOT
        tagged. This pins the user's scope-limiting requirement on
        the second pass too."""
        # `cJSON.valueint` is int — propagation must not tag it even
        # when the (hypothetical) use line matches the pattern.
        usage = {
            "valuestring": [
                "item->valuestring = (char*)output" + BYTE_BUFFER_TAG,
            ],
            "valueint": [
                # synthetic — what a buggy clang-tool emission might look like
                "item->valueint = item->valuestring",
            ],
        }
        newly = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        self.assertEqual(newly, set())
        self.assertFalse(any(BYTE_BUFFER_TAG in u for u in usage["valueint"]))

    def test_no_op_when_no_direct_tags(self):
        """If the direct pass found nothing, propagation has nothing
        to do — return immediately without scanning edges."""
        usage = {
            "valuestring": ["if (item->valuestring != ((void*)0))"],
            "string": [
                "current_item->string = current_item->valuestring",
                "free(item->string)",
            ],
        }
        newly = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        self.assertEqual(newly, set())
        # Nothing got tagged.
        for uses in usage.values():
            self.assertFalse(any(BYTE_BUFFER_TAG in u for u in uses))

    def test_no_op_when_no_field_to_field_edges(self):
        """A direct tag exists but no move-site references it — no
        propagation should happen."""
        usage = {
            "valuestring": [
                "item->valuestring = (char*)output" + BYTE_BUFFER_TAG,
            ],
            "string": [
                "if (item->string != ((void*)0))",
                "free(item->string)",
            ],
        }
        newly = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        self.assertEqual(newly, set())

    def test_skips_self_loop(self):
        """A use line like ``x->valuestring = x->valuestring`` (rare
        but syntactically possible) is not a propagation edge."""
        usage = {
            "valuestring": [
                "x->valuestring = x->valuestring" + BYTE_BUFFER_TAG,
            ],
        }
        newly = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        self.assertEqual(newly, set())

    def test_skips_edges_to_unknown_fields(self):
        """If the RHS or LHS in a move site references a field that is
        not in this struct's usage list (cross-struct or stale entry),
        ignore the edge — we cannot reason about ownership across
        structs from this surface."""
        usage = {
            "valuestring": [
                "item->valuestring = (char*)output" + BYTE_BUFFER_TAG,
            ],
            "string": [
                "current_item->string = other_struct->buf",
            ],
        }
        # other_struct.buf is not in this struct's keys; propagation
        # must not happen.
        newly = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        self.assertEqual(newly, set())

    def test_idempotent_under_repeat(self):
        """Running the propagator twice must produce the same final
        state — no tag should be applied a second time."""
        usage = {
            "valuestring": [
                "item->valuestring = (char*)output" + BYTE_BUFFER_TAG,
            ],
            "string": [
                "current_item->string = current_item->valuestring",
                "free(item->string)",
            ],
        }
        newly_first = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        snapshot = {k: list(v) for k, v in usage.items()}
        newly_second = propagate_byte_buffer_tags(usage, CJSON_STRUCT_C)
        self.assertEqual(newly_first, {"string"})
        self.assertEqual(
            newly_second, set(),
            "second pass must find nothing new — tags already in place",
        )
        self.assertEqual(usage, snapshot,
                         "second pass must not mutate the use lists")

    def test_only_first_evidence_line_gets_tag(self):
        """When multiple move-site lines reference the same tagged RHS,
        we tag only ONE of them in the LHS's list — repeated tags on
        the same field would be noisy and would inflate the prompt
        without adding signal."""
        struct = "struct S { char *a; char *b; };"
        usage = {
            "a": ["x->a = (char*)buf" + BYTE_BUFFER_TAG],
            "b": [
                "x->b = x->a",  # first move site
                "y->b = y->a",  # second move site (e.g. another caller)
            ],
        }
        propagate_byte_buffer_tags(usage, struct)
        tagged = [u for u in usage["b"] if BYTE_BUFFER_TAG in u]
        self.assertEqual(len(tagged), 1, "tag at most once per field")

    def test_handles_empty_usage_list(self):
        self.assertEqual(propagate_byte_buffer_tags({}, "struct S {};"), set())
        self.assertEqual(propagate_byte_buffer_tags(None, "struct S {};"), set())


# ============================================================================
# Stage_3 prompt ↔ classifier tag literal consistency
# ============================================================================


if __name__ == "__main__":
    unittest.main()
