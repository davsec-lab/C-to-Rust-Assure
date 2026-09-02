import openaitranslator

def TranslatorFactory(logger, 
                        apikey, modelEngine, srcLang, 
                        dstLang, trainStr,
                        translatorTool = "openai"):
    tools = {
            "openai": openaitranslator.OpenAiTranslator,
            }
    return tools[translatorTool](logger, apikey, modelEngine, srcLang, dstLang, trainStr)
