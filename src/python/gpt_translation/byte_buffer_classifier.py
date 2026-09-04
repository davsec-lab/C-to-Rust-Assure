"""Static analysis to classify struct ``char *`` fields whose use sites
look like text but whose producers are manual byte-cursor builds.

Background — why this exists:

cJSON's ``parse_string`` ends with ``item->valuestring = (char*)output;``
after filling ``output`` byte-by-byte through an alias cursor
``output_pointer``::

    output_pointer = output;
    ...
    *output_pointer++ = '\\b';      // 8 such writes for escape chars
    *output_pointer++ = '\\f';
    ...
    item->valuestring = (char*)output;

When an earlier pass of the C++ refactor asked the LLM "is ``valuestring`` a text
string or a byte buffer?", the per-field usage block surfaced the
cast-assignment line but the LLM defaulted to "JSON value → text" and
left the field as ``char *``. an earlier pass then converted the local ``output``
into ``std::vector<unsigned char>`` while leaving the field as raw
pointer, producing ``item->valuestring = (char*)output.data();`` — a
dangling pointer into a stack-local vector whose destructor freed the
storage, and ``cJSON_Delete`` then ``free()``d it again. SIGABRT on the
first perf run.

The bug was a misclassification, not a missing rule. The an earlier pass prompt
already says "byte buffers go to std::vector<unsigned char>" — what was
missing was a way for the LLM to *verify* "this field's producer is a
byte cursor build" from the one-line usage evidence it was given.

This module closes the gap by doing that verification in code:

  1. Scope: only ``char *`` fields are considered. Other field types
     (``int``, ``struct cJSON *``, ``char **``, etc.) are out of scope
     and get no annotation. This keeps the blast radius small per the
     user's request.

  2. Trigger: the use line must be a cast-to-char* assignment of the
     form ``<field> = (char*)<id>`` (with optional ``unsigned``/``signed``
     and ``const`` qualifiers on the cast). Plain reads, null-checks,
     and frees do not trigger.

  3. Verification: ``<id>`` (or any name simply aliased to it within the
     producing function) must be the target of at least two
     ``*ptr++ = ...`` cursor writes. The two-write threshold filters
     out lone terminator writes like ``*p = '\\0';`` that appear in
     otherwise non-byte code.

When all three hold, the use line is annotated with::

    [BYTE BUFFER: cursor build verified - must become std::vector<unsigned char>]

The an earlier pass prompt then has a hard rule to trust this tag and classify
unconditionally, no LLM heuristic needed.
"""

from __future__ import annotations

import re
from typing import Dict, Set


BYTE_BUFFER_TAG = (
    "  [BYTE BUFFER: cursor build verified - "
    "must become std::vector<unsigned char>]"
)

# The substring used to detect "is this line already tagged?". We match
# on the bracketed core only (not the leading whitespace) so that any
# storage / rendering pass that strips or normalizes leading whitespace
# doesn't make the detection lose track.
_TAG_CORE = "[BYTE BUFFER: cursor build verified - must become std::vector<unsigned char>]"


# Field-to-field pointer-move pattern: matches
#   <obj>.B = <obj>.A    or    <obj>->B = <obj>->A
# where <obj> can itself be a chain (e.g. ``current_item``). Both sides
# accept either ``.`` or ``->`` separators independently — cjson uses
# ``current_item->string = current_item->valuestring`` but mixed
# ``foo.bar->baz = foo.bar.quux`` is also tolerated.
#
# This regex is used by the transitive propagation pass: when the RHS
# field is already tagged as a byte buffer, the LHS field must also be
# (it receives the same bytes; raw-pointer aliasing across the boundary
# is the cjson_new ``cJSON.string ← cJSON.valuestring`` double-free
# trap).
_FIELD_TO_FIELD_MOVE_RE = re.compile(
    r"""
    (?P<lhs_obj>  [A-Za-z_]\w* (?: \s*(?: ->|\.) \s* [A-Za-z_]\w* )* )
    \s* (?: -> | \. ) \s*
    (?P<lhs_field> [A-Za-z_]\w* )
    \s* = \s*
    (?P<rhs_obj>  [A-Za-z_]\w* (?: \s*(?: ->|\.) \s* [A-Za-z_]\w* )* )
    \s* (?: -> | \. ) \s*
    (?P<rhs_field> [A-Za-z_]\w* )
    (?! [A-Za-z0-9_.\[(] | -> )
    """,
    re.VERBOSE,
)


# Cast-to-char* assignment site: matches `... = (char*)<id>` with or
# without an explicit terminator. ``struct-field-use-printer`` emits
# use lines like ``item->valuestring = (char*)output`` (no trailing
# ``;``), so the tail anchor allows ``;``, ``,``, ``)``, whitespace, or
# end-of-string. Importantly we DO forbid identifier-continuations and
# member-access (``.``, ``->``, ``[``, ``(``) — when the RHS is
# ``output.data()`` or ``output->field`` it is not the same kind of
# alias we want to trace, and the conservative answer is "no match".
_CAST_TO_CHARSTAR_RHS = re.compile(
    r"""
    \(                                  # opening paren of the cast
    \s*
    (?: const \s+ | volatile \s+ )*     # optional cv-qualifiers
    (?: unsigned \s+ | signed \s+ )?    # optional sign qualifier
    char
    \s* \* \s*                          # exactly one `*` — `char**` is not a byte buffer
    \)
    \s*
    ( [A-Za-z_]\w* )                    # the RHS identifier (capture)
    (?! [A-Za-z0-9_.\[(] | -> )         # forbid id-continuation / member access
    """,
    re.VERBOSE,
)


# `*<id>++ = ...` — manual byte cursor write. The captured group is the
# pointer name being advanced. We do not constrain the RHS shape: byte
# copy (`*p++ = *q++`), char literal (`*p++ = '\n'`), masked byte
# (`*p++ = x | 0x80`), and call results all qualify.
_CURSOR_WRITE = re.compile(
    r"""
    \*
    \s*
    ( [A-Za-z_]\w* )                    # pointer being advanced (capture)
    \s* \+\+ \s*
    =                                   # write (assignment, not == compare)
    (?! = )                             # negative lookahead: not `==`
    """,
    re.VERBOSE,
)


# Simple `lhs = rhs;` assignment used for alias propagation. We only
# follow identifier-to-identifier aliasing here; this is intentionally
# conservative — `lhs = rhs + 1`, `lhs = (T*)rhs`, etc. do not propagate.
# The cjson parse_string pattern (`output_pointer = output;`) is the
# canonical case this catches.
_SIMPLE_ASSIGN = re.compile(
    r"""
    \b
    ( [A-Za-z_]\w* )                    # LHS name
    \s* = \s*
    ( [A-Za-z_]\w* )                    # RHS name
    \s* ;
    """,
    re.VERBOSE,
)


def _strip_block_comments(text: str) -> str:
    """Remove /* ... */ blocks so they cannot contribute spurious matches.
    Line comments (//) are kept — they rarely contain the patterns we
    look for and stripping them risks merging adjacent statements."""
    return re.sub(r"/\*.*?\*/", " ", text, flags=re.DOTALL)


def is_char_star_field(struct_c_code: str, field_name: str) -> bool:
    """Return True iff ``field_name`` is declared as ``char *`` (allowing
    ``const`` / ``volatile`` / ``unsigned`` / ``signed`` qualifiers but
    requiring exactly one ``*``) in ``struct_c_code``.

    Excluded by design: ``char **`` (different ownership semantics),
    ``char []`` arrays (not a pointer), and fields whose underlying type
    is anything other than the character family.

    Handles multi-declarator lines (``char *a, *b;``) by allowing the
    declarator ``*<name>`` to live anywhere within a ``char ... ;``
    statement, as long as no statement boundary intervenes.
    """
    if not struct_c_code or not field_name:
        return False
    body = _strip_block_comments(struct_c_code)

    # Reject `char **<name>` first so the single-star regex below can
    # match liberally without worrying about the double-star ambiguity.
    # The `[^;{}]*?` is lazy and bounded by statement / scope edges, so
    # we cannot accidentally cross into an unrelated declaration.
    double_star_re = re.compile(
        r"\bchar\b[^;{}]*?\*\s*\*\s*(?:const\s+|volatile\s+)*"
        + re.escape(field_name)
        + r"\b"
    )
    if double_star_re.search(body):
        return False

    # Accept any declaration where the keyword ``char`` and the
    # declarator ``*<name>`` share a single statement. Lazy
    # ``[^;{}]*?`` keeps us inside one declaration — it cannot cross
    # ``;``, ``{``, or ``}``. The match below covers:
    #   char *valuestring;                  (single-declarator)
    #   const char *msg;                    (cv-qualified)
    #   unsigned char *bytes;               (signed/unsigned variant)
    #   char *a, *b;                        (multi-declarator)
    single_star_re = re.compile(
        r"""
        \b char \b
        [^;{}]*?
        \* \s*
        (?: const \s+ | volatile \s+ )*
        \b """ + re.escape(field_name) + r""" \b
        \s* [;,]
        """,
        re.VERBOSE,
    )
    return bool(single_star_re.search(body))


def _alias_closure(function_body: str, seed: str) -> Set[str]:
    """Expand ``seed`` to the set of names provably aliased to it via
    simple ``lhs = rhs;`` assignments inside ``function_body``.

    Walks both directions (lhs↔rhs) because intent can flow either way:
    ``output_pointer = output;`` aliases output_pointer to output, and
    if we seeded with ``output`` we want output_pointer in the set.

    Iteration is bounded (20 rounds) to defend against pathological
    inputs; cjson-scale functions converge in 1-2 rounds.
    """
    body = _strip_block_comments(function_body)
    aliases: Set[str] = {seed}
    assignments = [(m.group(1), m.group(2)) for m in _SIMPLE_ASSIGN.finditer(body)]
    for _ in range(20):
        before = len(aliases)
        for lhs, rhs in assignments:
            if lhs in aliases:
                aliases.add(rhs)
            if rhs in aliases:
                aliases.add(lhs)
        if len(aliases) == before:
            break
    return aliases


def _cursor_write_counts(function_body: str) -> Dict[str, int]:
    """Return a dict mapping pointer-name to the number of
    ``*name++ = ...`` writes seen in ``function_body``."""
    body = _strip_block_comments(function_body)
    counts: Dict[str, int] = {}
    for match in _CURSOR_WRITE.finditer(body):
        ident = match.group(1)
        counts[ident] = counts.get(ident, 0) + 1
    return counts


def is_byte_cursor_build(
    use_line: str,
    function_body: str,
    minimum_cursor_writes: int = 2,
) -> bool:
    """Return True iff ``use_line`` is a cast-to-char* assignment whose
    RHS identifier (or any name aliased to it via simple ``=``) is the
    target of at least ``minimum_cursor_writes`` ``*ptr++ = ...`` writes
    inside ``function_body``.

    The default threshold of 2 rejects lone terminator writes like
    ``*p = '\\0';`` while still catching very short cursor-build loops.
    Lower it to 1 if you want maximum sensitivity at the cost of more
    false positives.
    """
    if not use_line or not function_body:
        return False
    cast_match = _CAST_TO_CHARSTAR_RHS.search(use_line)
    if not cast_match:
        return False
    seed = cast_match.group(1)
    cursor_counts = _cursor_write_counts(function_body)
    if not cursor_counts:
        return False
    aliases = _alias_closure(function_body, seed)
    total_writes = sum(cursor_counts.get(name, 0) for name in aliases)
    return total_writes >= minimum_cursor_writes


def classify_use_site(
    use_line: str,
    function_body: str,
    struct_c_code: str,
    field_name: str,
) -> str:
    """Return the annotation suffix to append to ``use_line``, or ``""``
    when no annotation applies.

    Three gates must ALL pass:

      1. ``field_name`` is declared as ``char *`` in ``struct_c_code``.
         Filters out int / struct* / char** / char[] fields per the
         scope-limit request.
      2. ``use_line`` is a cast-to-char* assignment (``= (char*)<id>``
         or signed/unsigned/const variants).
      3. ``<id>`` (or any simple alias of it inside ``function_body``)
         receives ≥ 2 ``*ptr++ = ...`` cursor writes.

    Any gate failing returns ``""`` — the original use line is shown
    unchanged. This keeps the blast radius minimal: we add information
    only when we have proof, and we never alter the user's view of the
    code outside the narrow ``char *`` field class.
    """
    if not is_char_star_field(struct_c_code, field_name):
        return ""
    if not is_byte_cursor_build(use_line, function_body):
        return ""
    return BYTE_BUFFER_TAG


def propagate_byte_buffer_tags(usage_list, struct_c_code):
    """Second-pass propagation: spread the BYTE BUFFER tag across
    field-to-field pointer-move use sites.

    Background — why this pass exists:

    The first-pass ``classify_use_site`` only fires on DIRECT evidence
    (cast-from-cursor in the producing function). cjson_new ships a
    second pattern that the direct pass cannot see: the parser writes
    bytes into ``cJSON.valuestring`` (caught), then the object parser
    immediately moves the pointer over to ``cJSON.string`` with::

        current_item->string = current_item->valuestring;
        current_item->valuestring = ((void*)0);

    The producer of THIS use line is ``parse_object``, which contains
    no cursor writes of its own; the bytes were built in ``parse_string``
    and handed off here. Without transitive propagation, ``string``
    stays ``char *`` while ``valuestring`` becomes
    ``std::vector<unsigned char>``, and the LLM is stuck bridging the
    type mismatch with ``string = (char*)valuestring.data();`` —
    re-introducing exactly the same dangling-pointer / double-free
    failure mode (now on a different field).

    The rule this pass adds:

      If field A is tagged AND any use line matches
      ``<expr>(.|->)B = <expr>(.|->)A`` (a pure field-to-field pointer
      move with no cast), then field B is also a byte buffer — both
      fields share a single ownership token by C semantics, and they
      must share a single C++ type by an earlier pass semantics.

    Gating preserved from the direct pass:

      * B must itself be a ``char *`` field (per the user's scope
        restriction). int / struct* / ``char **`` / ``char[]`` fields
        are excluded.
      * Propagation is forward only (A tagged → B tagged). The reverse
        is not implied: ``X = strdup(s)`` would otherwise wrongly tag
        ``s``.

    Args:
        usage_list: dict mapping ``field_name`` to its list of use
            lines. Modified IN PLACE — newly-tagged fields receive
            the suffix appended to one representative use line (the
            move site that established their byte-buffer-ness).
        struct_c_code: the struct's C definition. Used to gate
            propagation to ``char *`` fields only.

    Returns:
        A set of field names that this pass newly tagged. Empty when
        the pass found nothing to propagate (no direct tags, no
        field-to-field moves, or all move targets were non-char*).
    """
    if not usage_list:
        return set()

    # Initial tag set: every field whose use list already carries the
    # tag from the direct pass.
    tagged = {
        field_name
        for field_name, uses in usage_list.items()
        if any(_TAG_CORE in u for u in uses)
    }
    if not tagged:
        return set()

    # Collect every field-to-field move edge as a triple
    # ``(lhs_field, rhs_field, use_line)``. Each edge says "if rhs is
    # tagged, lhs should be too, and ``use_line`` is the evidence we
    # would attach the tag to." Walk every field's use list so we
    # observe each edge regardless of which side the clang tool
    # emitted it under.
    edges = []
    for uses in usage_list.values():
        for line in uses:
            for match in _FIELD_TO_FIELD_MOVE_RE.finditer(line):
                lhs_field = match.group("lhs_field")
                rhs_field = match.group("rhs_field")
                if lhs_field == rhs_field:
                    continue
                if lhs_field not in usage_list or rhs_field not in usage_list:
                    continue
                edges.append((lhs_field, rhs_field, line))

    if not edges:
        return set()

    # Fixed-point propagation. Bounded to ``len(usage_list)`` rounds
    # (a tag chain cannot be longer than the number of fields).
    newly_tagged = set()
    for _ in range(len(usage_list) + 1):
        changed = False
        for lhs_field, rhs_field, _line in edges:
            if rhs_field in tagged and lhs_field not in tagged:
                if not is_char_star_field(struct_c_code, lhs_field):
                    continue
                tagged.add(lhs_field)
                newly_tagged.add(lhs_field)
                changed = True
        if not changed:
            break

    # Attach a tag to one evidence line per newly-tagged field. We pick
    # the FIRST matching move-site line found in the field's own list
    # — that mirrors what the direct pass does for cursor evidence and
    # keeps the prompt minimal (one tag per field is enough; multiple
    # tags on the same field would be redundant noise).
    for field_name in newly_tagged:
        uses = usage_list.get(field_name, [])
        for index, line in enumerate(uses):
            if _TAG_CORE in line:
                # Already tagged elsewhere — stop, don't double-tag.
                break
            match = _FIELD_TO_FIELD_MOVE_RE.search(line)
            if match is None:
                continue
            if (match.group("lhs_field") == field_name
                    and match.group("rhs_field") in tagged):
                uses[index] = line + BYTE_BUFFER_TAG
                break

    return newly_tagged
