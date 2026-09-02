"""Module-level helper for the token-tracker `currentCallKind` label.

`setCallKind` is defined on LLMUtilsMixin (which is needed for token tracking
to work at all), but several call sites live in other mixins that may be
exercised by test probes that don't pull LLMUtilsMixin in. This helper
provides a defensive context manager that's safe to use from any class.
"""


class _NoopCm:
    def __enter__(self):
        return self
    def __exit__(self, *exc):
        return False


def callKindContext(host, kind):
    """Return a context manager that sets host.currentCallKind on entry and
    restores it on exit. If the host doesn't support call-kind labeling
    (e.g. a partial test probe), returns a no-op context manager."""
    setter = getattr(host, "setCallKind", None)
    if callable(setter):
        return setter(kind)
    return _NoopCm()
