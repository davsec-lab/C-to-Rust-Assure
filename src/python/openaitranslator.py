import logging
from codetranslator import CodeTranslatorTool
import openai

class OpenAiTranslator(CodeTranslatorTool):
    """
    This class can be used to translate code using the OpenAI backend
    """
    def __init__(self, logger, apikey, engine, srclang, dstlang, train):
        self.logger = logger
        self.apikey = apikey
        self.engine = engine
        self.srclang = srclang
        self.dstlang = dstlang
        self.train = train

    def translate(self, srcStr):
        self.logger.debug("Trying to translate (printing 75 chars): %s\n\tfrom lang: %s to lang: %s",
                            srcStr[:75], self.srclang, self.dstlang)
        srcStr = srcStr + "\nconvert to " + self.dstlang + "\n"
        openai.api_key = self.apikey

        response = openai.Completion.create(
          engine=self.engine,
          prompt=srcStr,
          temperature=0.5,
          max_tokens=2048,
          top_p=1.0,
          frequency_penalty=0.0,
          presence_penalty=0.0
        )

        self.logger.debug("response: %s", response)
        result = response['choices'][0]['text']
        self.logger.debug("result: %s", result)
        return result
