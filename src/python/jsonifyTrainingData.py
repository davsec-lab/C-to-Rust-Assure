import os
import logging
import sys
import re
import glob
import subprocess
import traceback
import tiktoken
import argparse
import shutil
import json

from datetime import datetime
from openai import OpenAI

import validateFineTuningData as validator

trainingData = []

def createJson(trainingDir, outputFile):
    trainingFilePattern = os.path.join(trainingDir, "*")
    jsonStrings = []
    for filename in glob.iglob(trainingFilePattern):
        cLines = []
        rustLines = []
        parsingCLines = False
        parsingRustLines = False
        with open(filename) as f:
            for line in f:
                if "C code input:" in line:
                    parsingCLines = True
                    parsingRustLines = False
                elif "Translated to Rust:" in line:
                    parsingRustLines = True
                    parsingCLines = False
                else:
                    if parsingCLines:
                        cLines.append(line)
                    elif parsingRustLines:
                        rustLines.append(line)

        cCode = "".join(cLines)
        rustCode = "".join(rustLines)

        messages = []
        systemMessage = {}
        systemMessage["role"] = "system"
        systemMessage["content"] = "You are an expert at translating C code to Rust"
        messages.append(systemMessage)

        userMessage = {}
        userMessage["role"] = "user"
        userMessage["content"] = "Please translate this function to Rust\n" + cCode
        messages.append(userMessage)

        assistantMessage = {}
        assistantMessage["role"] = "assistant"
        assistantMessage["content"] = rustCode
        messages.append(assistantMessage)


        record = {"messages": messages}

        jsonString = json.dumps(record)
        jsonStrings.append(jsonString)
    
    trainingFileContents = "\n".join(jsonStrings)
    with open(outputFile, "w") as f:
        f.write(trainingFileContents)

    if validator.validate(outputFile): 
        client = OpenAI(api_key=os.environ.get('OPENAI_KEY'))
        trainingFile = client.files.create(file=open(outputFile, "rb"), purpose="fine-tune")
        print("Training file = ")
        print(trainingFile)
        result = client.fine_tuning.jobs.create(
                    training_file=trainingFile.id,
                    model="gpt-3.5-turbo")
        print(result)




if __name__ == "__main__":
    outputFile = "fine-tuning.json"
    createJson("./training", outputFile)

