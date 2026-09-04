"""Mechanical C-vs-Rust divergence checks for one translated function.

Everything here is a *count or a shape read off the two sources* — no model
opinion, no scoreboard. The point is to stop paying for a review round on the
20 functions that are fine and spend one on the function that measurably is
not.

Each check was written against a divergence observed in the iteration-1 libcsv
rounds, on a translation that compiled on the first attempt and was accepted
without anything ever asking whether it still did what the C did:

* ``switch`` / ``break``.  csv_parse's C body is a ``switch`` inside a
  ``while``; a ``break`` in a C ``switch`` arm leaves the *switch* and keeps
  looping.  Three of the four rounds translated it to a bare ``break;`` inside
  a ``match`` arm, which in Rust leaves the *loop*.  The Rust parser therefore
  returned at the first delimiter: KLEE completed 159 paths against the C's
  759, the deep buffer-write trees never appeared, and
  ``*(arg_value_0.field_3)`` and ``arg_value_5`` scored the 1000 sentinel.
  The one round that got it right reached 553.

* Dropped call site.  The same arm's C reads
  ``if (pstate == 1) { <field> <row> } else { if (options & 2) { <row> } }``
  where ``<row>`` is a macro whose body calls ``cb2``.  The Rust hoisted the
  ``cb2`` call below the ``if`` so it ran unconditionally and the
  ``options & 2`` guard disappeared entirely.

* Vanished constant.  Same bug seen from the other side: the literal ``2``
  occurs five times in the C body and four in the Rust.

The checks are deliberately one-sided and conservative.  They report only what
they can count on both sides, they never rewrite anything themselves, and a
finding is a *question* for the model, not a verdict.
"""

import re


_RUST_KEYWORDS = {
    "if", "else", "while", "for", "loop", "match", "fn", "let", "return",
    "unsafe", "as", "in", "mut", "ref", "move", "impl", "struct", "enum",
    "break", "continue", "Some", "None", "Ok", "Err",
}

_C_KEYWORDS = {
    "if", "else", "while", "for", "do", "switch", "case", "default", "return",
    "sizeof", "break", "continue", "goto", "struct", "union", "enum", "typedef",
    "static", "const", "unsigned", "signed", "void", "char", "int", "long",
    "short", "float", "double", "register", "volatile", "extern", "inline",
}


def _strip_c(src):
    """Comments and string/char literals out; everything else keeps its
    offsets-ish shape.  Good enough for token counting."""
    src = re.sub(r"/\*.*?\*/", " ", src, flags=re.S)
    src = re.sub(r"//[^\n]*", " ", src)
    src = re.sub(r'"(?:\\.|[^"\\])*"', '""', src)
    src = re.sub(r"'(?:\\.|[^'\\])*'", "''", src)
    return src


def _strip_rust(src):
    src = re.sub(r"/\*.*?\*/", " ", src, flags=re.S)
    src = re.sub(r"//[^\n]*", " ", src)
    src = re.sub(r'b?"(?:\\.|[^"\\])*"', '""', src)
    src = re.sub(r"b?'(?:\\.|[^'\\])*'(?!\w)", "''", src)
    return src


def _balanced_body(src, openIdx):
    """Text between the brace at/after ``openIdx`` and its match, or ""."""
    i = src.find("{", openIdx)
    if i < 0:
        return ""
    depth, j, n = 0, i, len(src)
    while j < n:
        if src[j] == "{":
            depth += 1
        elif src[j] == "}":
            depth -= 1
            if depth == 0:
                return src[i + 1:j]
        j += 1
    return ""


def _c_body(src, funcName):
    """The target C function's body only.

    Counting over the whole ``.i`` counts forward declarations as call sites —
    ``csv_fwrite.i`` declares ``csv_fwrite2`` twice before calling it once, and
    the naive count read 3 against the Rust's 1."""
    for m in re.finditer(r"\b" + re.escape(funcName) + r"\s*\(", src):
        # A definition is `name(...)` followed by `{`; a declaration by `;`.
        rest = src[m.end():]
        depth, k = 1, 0
        while k < len(rest) and depth:
            if rest[k] == "(":
                depth += 1
            elif rest[k] == ")":
                depth -= 1
            k += 1
        tail = rest[k:].lstrip()
        if tail.startswith("{"):
            return _balanced_body(src, m.end() + k)
    return ""


def _rust_body(src, funcName):
    m = re.search(r"\bfn\s+" + re.escape(funcName) + r"\b", src)
    if not m:
        return ""
    return _balanced_body(src, m.end())


# glibc's assert expands to `((void) sizeof ((cond) ? 1 : 0), ({ if (cond) ;
# else __assert_fail("cond", "file.c", <line>, __PRETTY_FUNCTION__); }))`.
# Neither the source line number nor the `__assert_fail` call itself has a
# faithful Rust form — `assert!` is the right answer and carries neither — so
# the whole expansion is deleted before counting. Left in, it produced a
# finding on every asserting function in libcsv (the literals 129/269/278/368
# and a "dropped call to __assert_fail" on csv_error, csv_get_delim,
# csv_get_quote and csv_parse in all four measured rounds).
_ASSERT_CALL_RE = re.compile(r"__assert_fail\s*\(")


def _strip_assert_scaffolding(body):
    out, i = [], 0
    while True:
        m = _ASSERT_CALL_RE.search(body, i)
        if not m:
            out.append(body[i:])
            break
        out.append(body[i:m.start()])
        depth, j = 1, m.end()
        while j < len(body) and depth:
            if body[j] == "(":
                depth += 1
            elif body[j] == ")":
                depth -= 1
            j += 1
        out.append(" ")
        i = j
    return "".join(out)


def _call_counts(src):
    """``name`` -> number of ``name(`` call sites, keywords excluded."""
    counts = {}
    for m in re.finditer(r"\b([A-Za-z_]\w*)\s*\(", src):
        name = m.group(1)
        if name in _C_KEYWORDS or name in _RUST_KEYWORDS:
            continue
        counts[name] = counts.get(name, 0) + 1
    return counts


def _token_counts(src):
    counts = {}
    for m in re.finditer(r"\b([A-Za-z_]\w*)\b", src):
        counts[m.group(1)] = counts.get(m.group(1), 0) + 1
    return counts


def _literal_counts(src):
    """Numeric literal multiset keyed by *value*, so 0x22 and 34 collapse.

    0 and 1 are excluded: the preprocessed C is full of ``((void*)0)`` and of
    ``(void) sizeof ((cond) ? 1 : 0)`` assert scaffolding, which the Rust
    legitimately spells with ``null_mut()`` / ``assert!``.  Every other
    constant in a C body is load-bearing."""
    counts = {}
    for m in re.finditer(r"\b(0[xX][0-9a-fA-F]+|\d+)\b", src):
        try:
            value = int(m.group(1), 0)
        except ValueError:
            continue
        if value in (0, 1):
            continue
        counts[value] = counts.get(value, 0) + 1
    return counts


def _find_misbound_breaks(rustSrc):
    """Line numbers of unlabeled ``break``s that sit inside a ``match`` arm
    which is itself inside a loop, with no loop in between.

    In C such a ``break`` (inside ``switch`` inside a loop) leaves the switch;
    the Rust one leaves the loop.  A brace-depth walk is enough: track a stack
    of ``('match'|'loop', depth)`` frames and, at each bare ``break``, look at
    the innermost frame."""
    src = _strip_rust(rustSrc)
    stack = []          # list of (kind, brace_depth_at_open)
    depth = 0
    findings = []
    pendingKind = None  # a construct whose `{` we have not reached yet
    line = 1
    i = 0
    n = len(src)
    while i < n:
        ch = src[i]
        if ch == "\n":
            line += 1
            i += 1
            continue
        if ch == "{":
            depth += 1
            if pendingKind:
                stack.append((pendingKind, depth))
                pendingKind = None
            i += 1
            continue
        if ch == "}":
            while stack and stack[-1][1] >= depth:
                stack.pop()
            depth -= 1
            i += 1
            continue
        word = re.match(r"[A-Za-z_]\w*", src[i:])
        if not word:
            i += 1
            continue
        token = word.group(0)
        i += len(token)
        if token in ("loop", "while", "for"):
            pendingKind = "loop"
        elif token == "match":
            pendingKind = "match"
        elif token == "break":
            rest = src[i:i + 24].lstrip()
            if rest.startswith("'"):        # labelled break — already correct
                continue
            innermost = stack[-1][0] if stack else None
            if innermost == "match" and any(k == "loop" for k, _ in stack):
                findings.append(line)
    return findings


def auditTranslation(funcName, cSource, rustSource):
    """Return a list of human-readable findings; empty means nothing tripped."""
    if not cSource or not rustSource:
        return []
    cAll = _strip_c(cSource)
    rAll = _strip_rust(rustSource)
    c = _strip_assert_scaffolding(_c_body(cAll, funcName))
    r = _rust_body(rAll, funcName)
    if not c or not r:
        # Could not isolate the target on one side (an SCC block, a renamed
        # function, a shape the scanner does not model). Counting whole files
        # against each other is what produced the false positives this
        # extraction exists to remove, so say nothing rather than guess.
        return []
    findings = []

    # 1. C `switch` + `break` mistranslated as Rust `match` + `break`.
    if re.search(r"\bswitch\s*\(", c) and re.search(r"\b(while|for|do)\b", c):
        for lineNo in _find_misbound_breaks(rustSource):
            findings.append(
                "CONTROL FLOW: your Rust has a bare `break;` around line %d, inside a "
                "`match` arm that is inside a loop. The C body is a `switch` inside a "
                "loop, and `break` in a C `switch` arm ends the SWITCH and keeps "
                "looping; in Rust the same `break` ends the LOOP and the function "
                "returns early. If this `break` came from a C `switch` arm, express it "
                "as a labelled block (`'sw: { match .. { .. break 'sw; } }`) or "
                "restructure so the loop keeps running." % lineNo
            )

    # 2. Named callees present on both sides but called a different number of
    #    times: a call was dropped, duplicated, or hoisted out of its guard.
    cCalls, rCalls = _call_counts(c), _call_counts(r)
    for name, cCount in sorted(cCalls.items()):
        if name == funcName or name not in rCalls:
            continue
        if rCalls[name] != cCount:
            findings.append(
                "CALL COUNT: the C body calls `%s` %d time(s); your Rust calls it "
                "%d time(s). Either a call site was dropped or added, or one was "
                "hoisted out of the branch that guarded it." % (name, cCount, rCalls[name])
            )

    # 3. A call through a function pointer that disappeared outright. Counting
    #    mentions is useless here — the C names the pointer twice per site
    #    (`if (cb1) cb1(..)`) and idiomatic Rust names it once for a whole
    #    `if let Some(f) = cb1 { .. }` — so only total absence is reported.
    rTokens = _token_counts(r)
    for name, cCount in sorted(cCalls.items()):
        if name == funcName or name in rCalls:
            continue
        if name not in rTokens:
            findings.append(
                "DROPPED CALL: the C body calls through `%s` %d time(s); your Rust "
                "never mentions `%s` at all." % (name, cCount, name)
            )

    # 4. A constant that lost occurrences — usually a guard that vanished.
    cLits, rLits = _literal_counts(c), _literal_counts(r)
    for value, cCount in sorted(cLits.items()):
        rCount = rLits.get(value, 0)
        if rCount < cCount:
            findings.append(
                "CONSTANT: the literal %d occurs %d time(s) in the C body and %d "
                "time(s) in your Rust. Check that no test, mask or bound using it "
                "was dropped." % (value, cCount, rCount)
            )

    return findings
