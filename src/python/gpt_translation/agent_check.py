"""The agent's ``./check``: compile rust/context.rs + rust/out.rs of a workspace
with the same cleanCode + cargo check the pipeline applies to an accepted
result.

    python3 agent_check.py <workspace>

Prints ``OK`` (exit 0) or the rustc errors (exit 1).
"""
import logging
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from gpt_translation.code_utils_mixin import CodeUtilsMixin

_ERROR_LINES = 60


class _Checker(CodeUtilsMixin):
    dstLang = "Rust"
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
    print("\n".join(err.split("\n")[:_ERROR_LINES]))
    return 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
