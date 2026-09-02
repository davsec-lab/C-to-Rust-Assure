import os
import logging
import sys
import re
import glob
from openai import OpenAI
import traceback
import tiktoken
import argparse
import shutil
import subprocess

from datetime import datetime

from loggerFactory import getLogger

class Uncollider:
    def __init__(self, logger, source_code_path, file_list, include_dirs):
        self.logger = logger
        self.root = os.path.expanduser(source_code_path)
        self.include_dirs = []
        self.file_list = file_list
        for include_dir in include_dirs.split(","):
            self.include_dirs.append(os.path.join(self.root, include_dir))
        self.combined_c_code = ""
        self.usedSymSet = set()
        self.count = 0 # The current number of C files cleaned
        
    def run_filter(self, c_file):
        cmd = "static-and-struct-def " + c_file 
        cmd = cmd + " -- "
        for include_dir in self.include_dirs:
            cmd = cmd + " -I"+include_dir
        
        self.logger.debug("Find rename targets command = %s", cmd)

        result = subprocess.run(cmd, shell = True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        if result.returncode != 0:
            self.logger.warn("Failed to extract struct definitions and static variables from file %s", c_file)
            self.logger.info(result.stderr)
            sys.exit(0)
        
        stdout_lines = result.stdout.split("\n")
        per_file_renamed_syms = set()
        for i in range(len(stdout_lines)):
            output_line = stdout_lines[i]
            if len(output_line) > 0 and len(output_line.split()) > 1:
                sym = output_line.split()[1]

                # If we haven't used in symbol anywhere else, just continue after recording it as used
                if sym not in self.usedSymSet:
                    self.usedSymSet.add(sym)
                    continue

                # Must rename
                # Try incrementing until you find a non-used sym
                index = 0
                new_sym = sym + str(index)
                while new_sym in self.usedSymSet:
                    new_sym = new_sym + str(index)
                    index = index + 1
                
                # self.logger.info("Using symbol %s as index = %d", new_sym, index)
                per_file_renamed_syms.add(new_sym)

                self.logger.debug("In file %s, to be renamed : %s", os.path.basename(c_file), sym)
                rename_cmd = "clang-rename -qualified-name=" + sym + " -new-name=" + new_sym + str(index) + " " + c_file
                rename_cmd = rename_cmd + " -- "
                for include_dir in self.include_dirs:
                    rename_cmd = rename_cmd + " -I"+include_dir

                self.logger.debug("Rename command: %s", rename_cmd)
                rename_result = subprocess.run(rename_cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                if rename_result.returncode != 0:
                    self.logger.warn("Failed to rename struct %s in file %s", sym, c_file)
                    sys.exit(-1)
                with open(c_file, 'w') as file:
                    file.write(rename_result.stdout)

        for renamed_sym in per_file_renamed_syms:
            self.usedSymSet.add(renamed_sym)

    def uncollide(self):
        all_c_files = glob.iglob(os.path.join(self.root, "**/*.c"), recursive=True)

        struct_name_map = {} # The map for 
        for c_file in all_c_files:
            if len(self.file_list) > 0:
                # If we have provided a list of c_files, then
                # only translate those
                if os.path.basename(c_file) in self.file_list:
                    self.count = self.count + 1
                    self.run_filter(c_file)
            else:
                self.run_filter(c_file)

        if (len(self.file_list) != 0 and self.count != len(self.file_list)):
            self.logger.critical("Number of C files processed not same as file list. Bailing.")
            sys.exit(-1)


def uncollidify_codebase(codebase_path, file_list_file, include_headers):

    logger_file_name = "./" + os.path.basename(codebase_path) + "_validator.log"
    logger = getLogger(logger_file_name)

    file_list = []
    logger.warn("%s", file_list_file)
    if len(file_list_file) > 0:
        try:
            with open(file_list_file, 'r') as file:
                for line in file.readlines():
                    file_list.append(line.strip())
        except:
            logger.critical("Failed to load list of files. Bailing..")
            sys.exit(-1)

    # We combine all the C files into 1 file, then we preprocess it using any include paths provided
    # in the command line
    # Note that we cannot combine all .i files __after__ the preprocessing phase because then
    # all the struct definitions etc are repeated causing compiler errors.

    uncollider = Uncollider(logger, codebase_path, file_list, include_headers)
    uncollider.uncollide()

if __name__ == "__main__":
    uncollidify_codebase("~/rustify/src/python/inputs-complex/mbedtls/library", "./mbedtls_ssl_lib_files.txt", "../include,./")
