try:
    import tiktoken
except ImportError:
    tiktoken = None


class LLMUtilsMixin:
    def isResponseTruncated(self, completion, funcOrStructName):
        finishReason = completion.incomplete_details
        self.logger.debug("Finish reason for function/struct %s: %s", funcOrStructName, finishReason)
        return completion.status == "incomplete"

    def getFingerPrint(self):
        self.logger.debug("Sending fingerprint request.")
        completion = self.client.chat.completions.create(
            model=self.model,
            messages=[
                {"role": "user", "content": "Hello, my favorite LLM!"}],
            max_tokens=self.maxCompletionTokens,
            temperature=0.0,
            top_p=0.1,
            seed=1000)
        return (completion.model, completion.system_fingerprint)

    def getResponse(self, request):
        self.logger.debug("Sending request: %s", request)
        requestArgs = {
            "model": self.model,
            "input": [
                {"role": "system", "content": self.systemPrompt},
                {"role": "user", "content": request}],
            "max_output_tokens": self.maxCompletionTokens
        }

        if self.model.startswith("gpt-5") or self.model.startswith("o"):
            requestArgs["reasoning"] = {"effort": "low", "summary": "auto"}

        if not self.model.startswith("gpt-5"):
            requestArgs["temperature"] = 0.0
            requestArgs["top_p"] = 0.1

        completion = self.client.responses.create(**requestArgs)
        self.logger.debug("Raw response:")
        self.logger.debug(completion)
        response = completion.output_text
        # See Claude_Opus_Translator.getResponse for rationale.
        self.lastRawResponse = response
        response = self.extractTargetCode(response, [self.dstLang.lower()])
        return (completion, response)

    def logReasoningSummary(self, completion):
        summaries = []

        reasoning = getattr(completion, "reasoning", None)
        if reasoning is not None:
            summary = getattr(reasoning, "summary", None)
            if isinstance(summary, list):
                for item in summary:
                    if isinstance(item, str):
                        summaries.append(item)
                    elif hasattr(item, "text"):
                        summaries.append(item.text)
                    elif isinstance(item, dict) and "text" in item:
                        summaries.append(item["text"])
            elif isinstance(summary, str):
                summaries.append(summary)

        outputItems = getattr(completion, "output", None) or []
        for item in outputItems:
            if getattr(item, "type", None) != "reasoning":
                continue
            itemSummaries = getattr(item, "summary", None) or []
            for summaryItem in itemSummaries:
                if isinstance(summaryItem, str):
                    summaries.append(summaryItem)
                elif hasattr(summaryItem, "text"):
                    summaries.append(summaryItem.text)
                elif isinstance(summaryItem, dict) and "text" in summaryItem:
                    summaries.append(summaryItem["text"])

        if summaries:
            self.logger.debug("Reasoning summary:")
            for idx, summaryText in enumerate(summaries, start=1):
                self.logger.debug("[%d] %s", idx, summaryText)

    def send(self, funcOrStructName, request):
        (completion, response) = self.getResponse(request)
        self._recordTokenUsage(funcOrStructName, completion)
        chainedResponse = response

        while self.isResponseTruncated(completion, funcOrStructName):
            (completion, response) = self.getResponse("continue")
            self._recordTokenUsage(funcOrStructName, completion, isContinuation=True)
            chainedResponse = chainedResponse + response
        return completion, chainedResponse

    def _recordTokenUsage(self, funcOrStructName, completion, isContinuation=False):
        tracker = getattr(self, "tokenTracker", None)
        if tracker is None:
            return
        kind = getattr(self, "currentCallKind", "function") or "function"
        if isContinuation:
            kind = kind + "_continuation"
        stage = getattr(self, "stage", "") or ""
        if hasattr(stage, "name"):
            stage = stage.name
        tracker.record(
            name=funcOrStructName,
            kind=kind,
            stage=str(stage),
            model=getattr(self, "model", "") or "",
            completion=completion,
        )

    def countTokens(self, line):
        if tiktoken is None:
            raise ImportError("tiktoken package is required to count tokens")
        try:
            if self.model.startswith("claude") or self.model.startswith("gemini"):
                tokenizer = tiktoken.get_encoding("cl100k_base")
            elif self.model.startswith("gpt-5") or self.model.startswith("o"):
                tokenizer = tiktoken.get_encoding("o200k_base")
            else:
                tokenizer = tiktoken.get_encoding(tiktoken.encoding_name_for_model(self.model))
        except KeyError:
            fallbackEncoding = (
                "cl100k_base"
                if self.model.startswith("claude") or self.model.startswith("gemini")
                else "o200k_base"
            )
            tokenizer = tiktoken.get_encoding(fallbackEncoding)

        tokens = tokenizer.encode(line)
        return len(tokens)

    def setCallKind(self, kind):
        """Set the label used for token-usage records emitted by the next
        send()/chunkAndSend() calls. Returns a context-manager-style object
        that resets the kind on exit. Safe across exceptions."""
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

    def chunkAndSend(self, funcOrStructName, request):
        totalTokens = self.countTokens(request)
        fullResponse = ""
        numChunks = 1
        if totalTokens > self.requestTokenLimit:
            lines = request.split("\n")
            nextLineIndex = 0
            while nextLineIndex < len(lines):
                numTokensSoFar = 0
                chunk = ""
                nextLineTokenCount = self.countTokens(lines[nextLineIndex])
                while numTokensSoFar + nextLineTokenCount < self.requestTokenLimit and nextLineIndex < len(lines):
                    chunk = chunk + '\n' + lines[nextLineIndex]
                    nextLineIndex = nextLineIndex + 1
                    numTokensSoFar = numTokensSoFar + nextLineTokenCount
                completion, response = self.send(funcOrStructName, chunk)
                fullResponse = fullResponse + response
                numChunks = numChunks + 1
        else:
            completion, fullResponse = self.send(funcOrStructName, request)
        self.logger.info("Sent request in %d chunks", numChunks)
        return fullResponse
