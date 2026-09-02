import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback
import tiktoken

from enum import Enum

from loggerFactory import getLogger

def replaceStructDef(logger, cSourceCode, structDef):
    pass

def _parse_ctags_entry(line):
    tokens = line.split('\t')
    if len(tokens) < 4:
        return None

    entry = {
        "name": tokens[0],
        "kind": tokens[3],
    }

    for token in tokens[4:]:
        if ":" not in token:
            continue
        key, value = token.split(":", 1)
        entry[key] = value

    return entry

def _find_typedef_start_line(lines, start_line):
    candidate = start_line
    cursor = start_line - 2

    while cursor >= 0 and lines[cursor].strip() == "":
        cursor -= 1

    if cursor >= 0 and re.match(r'^\s*typedef\b', lines[cursor]):
        candidate = cursor + 1

    return candidate

def _find_statement_end_line(lines, start_line):
    for idx in range(max(start_line - 1, 0), len(lines)):
        if ";" in lines[idx]:
            return idx + 1
    return len(lines)

def extractStructDefRange(logger, cFileName, structName):
    # Get the start and end line numbers for all structs. For typedef'd
    # anonymous structs, ctags records the alias as kind `t` and the
    # underlying anonymous struct as kind `s`, so we need to stitch them.
    findStructCmd = "ctags --fields=+ne --c-kinds=st -o - --language-force=C " + cFileName
    result = subprocess.run(findStructCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
    with open(cFileName, 'r') as file:
        lines = [line.rstrip() for line in file.readlines()]

    entries = []
    for line in result.stdout.split('\n'):
        entry = _parse_ctags_entry(line)
        if entry:
            entries.append(entry)

    # Result is typically:
    # csv_parser      csv_get_buffer_size.i   /^struct csv_parser {$/;"       s       line:13 file:   end:30
    for entry in entries:
        if structName != entry["name"]:
            continue

        if entry["kind"] == "s":
            if "end" not in entry:
                continue
            start = int(entry["line"])
            end = int(entry["end"])
            return (_find_typedef_start_line(lines, start), end)

        if entry["kind"] != "t":
            continue

        typeref = entry.get("typeref", "")
        if not typeref.startswith("struct:"):
            continue

        aliased_struct_name = typeref.split(":", 1)[1]
        alias_line = int(entry["line"])

        for struct_entry in entries:
            if struct_entry["name"] != aliased_struct_name or struct_entry["kind"] != "s":
                continue
            if "end" not in struct_entry:
                continue
            struct_start = int(struct_entry["line"])
            return (_find_typedef_start_line(lines, struct_start), alias_line)

    logger.warning("Could not extract struct definition range for %s from file %s. Exiting", structName, cFileName)
    return None


def extractStructDefinition(logger, cFileName, structName):
    result = extractStructDefRange(logger, cFileName, structName)
    if not result:
        return None
    (start, end) = result
    with open(cFileName, 'r') as file:
        lines = file.readlines()
        for i in range(len(lines)):
            lines[i] = lines[i].rstrip() # Remove the newline char
        extractedDefinition = lines[start-1:end] # ctags index is 1-based
        return (start-1, end, extractedDefinition) # ctags index is 1-based

def extractTypedefDefRange(logger, cFileName, typedefName):
    findTypedefCmd = "ctags --fields=+ne --c-kinds=t -o - --language-force=C " + cFileName
    result = subprocess.run(findTypedefCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
    with open(cFileName, 'r') as file:
        lines = [line.rstrip() for line in file.readlines()]

    for line in result.stdout.split('\n'):
        entry = _parse_ctags_entry(line)
        if not entry or entry["name"] != typedefName or entry["kind"] != "t":
            continue

        start = int(entry["line"])
        currentLine = lines[start - 1].strip() if 0 < start <= len(lines) else ""
        if not re.match(r'^(?:__extension__\s+)?typedef\b', currentLine):
            start = _find_typedef_start_line(lines, start)
        end = int(entry["end"]) if "end" in entry else _find_statement_end_line(lines, start)
        return (start, end)

    logger.warning("Could not extract typedef definition range for %s from file %s", typedefName, cFileName)
    return None

def extractTypedefDefinition(logger, cFileName, typedefName):
    result = extractTypedefDefRange(logger, cFileName, typedefName)
    if not result:
        return None
    (start, end) = result
    with open(cFileName, 'r') as file:
        lines = file.readlines()
        for i in range(len(lines)):
            lines[i] = lines[i].rstrip()
        extractedDefinition = lines[start-1:end]
        return (start-1, end, extractedDefinition)

def extractEnumDefRange(logger, cFileName, enumName):
    findEnumCmd = "ctags --fields=+ne --c-kinds=g -o - --language-force=C++ " + cFileName
    result = subprocess.run(findEnumCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
    for line in result.stdout.split('\n'):
        tokens = line.split('\t')
        if len(tokens) < 5 or enumName != tokens[0]:
            continue
        start = int(tokens[4].split(":")[1])
        if "end:" not in tokens[-1]:
            continue
        end = int(tokens[-1].split(":")[1])
        return (start, end)
    logger.warning("Could not extract enum definition range for %s from file %s", enumName, cFileName)
    return None


def extractEnumDefinition(logger, cFileName, enumName):
    result = extractEnumDefRange(logger, cFileName, enumName)
    if not result:
        return None
    (start, end) = result
    with open(cFileName, 'r') as file:
        lines = file.readlines()
        for i in range(len(lines)):
            lines[i] = lines[i].rstrip() # Remove the newline char
        extractedDefinition = lines[start-1:end] # ctags index is 1-based
        return (start-1, end, extractedDefinition) # ctags index is 1-based
    

if __name__ == "__main__":
    loggerFileName = "./util_tester.log"
    logger = getLogger(loggerFileName)
    # extractStructDefinition(logger, "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-3.5-turbo_2024-09-12_21-44-58__complete/csv_get_buffer_size.i", "csv_parser")
    apis = getExportedAPI(logger, "/home/tpalit/rustify/src/python/inputs-complex/libcsv/")
    logger.info(apis)
