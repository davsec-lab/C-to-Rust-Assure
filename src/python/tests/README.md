# tests/

All Python unit tests for the perfassure translation pipeline live here.

## Running

From `src/python/` (one level above this directory):

```bash
# All tests (recommended for regression):
python3 -m unittest discover -s tests -p "test*.py"

# A single test file:
python3 -m unittest tests.test_stage_exclusivity -v

# A single test class or method:
python3 -m unittest tests.test_stage_exclusivity.StageExclusionsCoverage
python3 -m unittest tests.test_stage_exclusivity.StageExclusionsCoverage.test_every_stage_lists_every_other_stage
```

Current count: **378 tests, 2 skipped, 0 failures**.

## Writing a new test

Place the file under `tests/` with one of these name patterns so unittest
discovery picks it up:

- `test_<topic>.py` — preferred for new tests (snake_case)
- `test<Topic>.py` — legacy convention, still supported

### Module-import path setup

Every test that imports project modules needs this snippet near the top
(after stdlib imports, before any project imports):

```python
import os
import sys

# Tests live in src/python/tests/; project modules live in src/python/.
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(
    0,
    os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"),
)
```

If your test references fixture files (e.g. `inputs-simple/example/...`),
use the same `os.path.dirname(os.path.dirname(os.path.abspath(__file__)))`
to walk up to `src/python/` before joining the fixture path. Do NOT use
`os.path.dirname(__file__)` directly — that resolves to `tests/`, not
`src/python/`.

### Third-party module stubs

Many test files stub out optional dependencies (`openai`, `tiktoken`,
`sympy`) so they import cleanly in environments without those packages.
Look at any of the recently-added tests
(`test_stage_exclusivity.py`, `test_type_snapshot_baseline_fallback.py`,
`test_perf_retry_attempt_archive.py`, etc.) for the standard stub block.

### Probes (test-only subclasses of pipeline mixins)

When you need to exercise a mixin method without standing up the whole
`Translator` graph, define a small probe class that inherits the
relevant mixin(s) and stubs anything else:

```python
class _PipelineProbe(CodeUtilsMixin, TranslationPipelineMixin):
    def __init__(self):
        self.logger = _Logger()
        self.dstLang = "C++"
        self.translatorMode = TranslatorModes.NEW_MODE
```

`CodeUtilsMixin` is required whenever the code path you exercise calls
`_isEmptyOrCommentOnly`, `stringifyCodeBlock`, or `cleanCode` —
which is most of them in 2026-onward code.

## What each test file locks

See [`../PROMPTS.md`](../PROMPTS.md#tests-that-lock-these-prompt-rules)
for the canonical "test file → invariant it locks" table.
