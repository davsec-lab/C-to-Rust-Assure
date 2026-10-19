"""The agent's ``./check``: compile rust/context.rs + rust/out.rs of a workspace
with the same cleanCode + cargo check the pipeline applies to an accepted
result.

    python3 agent_check.py <workspace>

Prints ``OK`` (exit 0) or the rustc errors (exit 1).
"""
import logging
import os
import re
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from gpt_translation.code_utils_mixin import CodeUtilsMixin

_ERROR_LINES = 150


class _Checker(CodeUtilsMixin):
    dstLang = "Rust"
    injectLibcPrelude = False
    srcLang = "C"
    model = ""

    def __init__(self):
        self.logger = logging.getLogger("agent_check")
        self.logger.addHandler(logging.NullHandler())
        self.logger.propagate = False


def _read(path):
    if not os.path.isfile(path):
        return ""
    with open(path, errors="replace") as f:
        return f.read()


def main(argv):
    if len(argv) != 2:
        print(__doc__)
        return 2
    out = _read(os.path.join(argv[1], "rust", "out.rs"))
    if not out.strip():
        print("rust/out.rs is missing or empty.")
        return 1
    checker = _Checker()
    code = checker.cleanCode(_read(os.path.join(argv[1], "rust", "context.rs")) + "\n" + out)
    (successFlag, err) = checker.compile(code)
    if successFlag:
        print("OK")
        return 0
    print(firstLines(errorsOnly(err), _ERROR_LINES))
    return 1


def errorsOnly(err):
    """rustc's output without its warnings. Each diagnostic is a block that
    ends at a blank line; the errors are the blocks that start with
    ``error``. Kept with the warnings, the first error and a screen of
    `non_camel_case_types` warnings filled the lines shown, and agents spent
    whole sessions (one: 787 runs of ./check) trying to see the rest.
    Text that is not rustc's comes back as it is."""
    blocks = re.split(r"\n[ \t]*\n", err or "")
    errors = [block for block in blocks if block.lstrip().startswith("error")]
    return "\n\n".join(errors) if errors else err


def firstLines(text, count):
    lines = (text or "").split("\n")
    if len(lines) <= count:
        return text
    return "\n".join(lines[:count]) + "\n... %d more lines" % (len(lines) - count)


if __name__ == "__main__":
    sys.exit(main(sys.argv))
