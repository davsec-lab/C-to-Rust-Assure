try:
    import tiktoken
except ImportError:
    tiktoken = None


class LLMUtilsMixin:
    def countTokens(self, line):
        """An estimate for the preanalysis fit report: the model is an
        OpenCode model id, which tiktoken has no encoding for."""
        if tiktoken is None:
            raise ImportError("tiktoken package is required to count tokens")
        return len(tiktoken.get_encoding("o200k_base").encode(line))

    def setCallKind(self, kind):
        """Set the label used for token-usage records emitted by the next
        agent requests. Returns a context-manager-style object that resets
        the kind on exit. Safe across exceptions."""
        previousKind = getattr(self, "currentCallKind", "function")
        self.currentCallKind = kind or "function"

        class _Resetter:
            def __init__(_self, owner, prev):
                _self.owner = owner
                _self.prev = prev
            def __enter__(_self):
                return _self
            def __exit__(_self, *exc):
                _self.owner.currentCallKind = _self.prev
                return False
        return _Resetter(self, previousKind)
