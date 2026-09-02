import os
import logging
import sys
import re
import glob
import subprocess
import traceback
try:
    import tiktoken
except ImportError:
    tiktoken = None
import math


try:
    from tabulate import tabulate
except ImportError:
    def tabulate(data, headers, tablefmt=None):
        rows = ["\t".join(headers)]
        rows.extend("\t".join(str(cell) for cell in row) for row in data)
        return "\n".join(rows)

GPT3_MODEL="gpt-3.5-turbo"
GPT3_CTX_WINDOW_LEN=16*1000
GPT3_MAX_COMPLETION_TOKENS=4096 # This is the max value you can put for max_tokens: the max size of a response, https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4 and search for output tokens

GPT4_MODEL="gpt-4-turbo"
GPT4_CTX_WINDOW_LEN=128*1000
GPT4_MAX_COMPLETION_TOKENS=4096 

CLAUDE3_CTX_WINDOW_LEN=200*1000

def count_tokens(source_dir):
    if tiktoken is None:
        raise ImportError("tiktoken package is required to count tokens")

    file_contents = []
    for file in glob.glob(os.path.join(source_dir, '**', '*.[ch]'), recursive=True):
        if file.endswith('.c') or file.endswith('.h'):
            with open(os.path.join(source_dir, file), 'r') as f:
                file_contents.append(f.read())
    file_string = "\n".join(file_contents)
    tokenizer = tiktoken.get_encoding(tiktoken.encoding_name_for_model(GPT3_MODEL))

    # print(file_string)
    tokens = tokenizer.encode(file_string)
    return len(tokens)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 test_fit_context_window.py <DIR>")
        sys.exit(-1)
    dirs = [f.path for f in os.scandir(sys.argv[1]) if f.is_dir()]
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/coreutils")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/klib")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/libcsv")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/lighttpd-1.4.76")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/mbedtls/library")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/minutils")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/uthash")
#    dirs.append("/home/tpalit/rustify/src/python/inputs-complex/zlib-1.3.1")
    print("Assuming the request occupies 100% of the context window (As the response is populated, the request context is lost")
    headers = ["Directory", "Total Tokens (K)", "Num. Requests (GPT3)", "Num. Requests (GPT4)", "Num. Requests (CLAUDE)"]
    data = []
    for directory in dirs:
        token_count = count_tokens(directory)
        data.append([os.path.basename(directory), "{:.2f}".format(token_count/1000), str(math.ceil(token_count/GPT3_CTX_WINDOW_LEN)), str(math.ceil(token_count/GPT4_CTX_WINDOW_LEN)), str(math.ceil(token_count/CLAUDE3_CTX_WINDOW_LEN))])
    print(tabulate(data, headers=headers, tablefmt="latex"))

    print("Assuming the request occupies 50% of the context window (As the response is populated, the hope is that the request and response use 50% of the context window.)")
    headers = ["Directory", "Total Tokens (K)", "Num. Requests (GPT3)", "Num. Requests (GPT4)", "Num. Requests (CLAUDE)"]
    data = []
    for directory in dirs:
        token_count = count_tokens(directory)
        data.append([os.path.basename(directory), "{:.2f}".format(token_count/1000), str(math.ceil(token_count/GPT3_CTX_WINDOW_LEN*2)), str(math.ceil(token_count/GPT4_CTX_WINDOW_LEN*2)), str(math.ceil(token_count/CLAUDE3_CTX_WINDOW_LEN*2))])
    print(tabulate(data, headers=headers, tablefmt="latex"))
