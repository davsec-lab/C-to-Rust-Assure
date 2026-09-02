#!/bin/python3
import tiktoken
import sys
import math

GPT3_MODEL="gpt-3.5-turbo"
GPT3_CTX_WINDOW_LEN=16*1024
GPT3_MAX_COMPLETION_TOKENS=4096 # This is the max value you can put for max_tokens: the max size of a response, https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4 and search for output tokens

GPT4_MODEL="gpt-4-turbo"
GPT4_CTX_WINDOW_LEN=128*1024
GPT4_MAX_COMPLETION_TOKENS=4096 

COMPILATION_RETRIES=10


if __name__ == "__main__":
    file_name = sys.argv[1]
    with open(file_name) as f:
        content = f.readlines()
        content = "".join(content)
        tokenizer_gpt3 = tiktoken.get_encoding(tiktoken.encoding_name_for_model(GPT3_MODEL))
        num_tokens_gpt3 = len(tokenizer_gpt3.encode(content))
        print("GPT3: Num. tokens = " + str(num_tokens_gpt3) + ", needs Num. requests = " + str(num_tokens_gpt3/GPT3_CTX_WINDOW_LEN))
        tokenizer_gpt4 = tiktoken.get_encoding(tiktoken.encoding_name_for_model(GPT4_MODEL))
        num_tokens_gpt4 = len(tokenizer_gpt4.encode(content))
        print("GPT4: Num. tokens = " + str(num_tokens_gpt4) + ", needs Num. requests = " + str(num_tokens_gpt4/GPT4_CTX_WINDOW_LEN))




