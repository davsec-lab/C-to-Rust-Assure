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

class StaticAnalyzer:
    def __init__(self, srcDir, individualFuncsPath, logger):
        self.srcDir = srcDir
        self.individualFuncsPath = individualFuncsPath
        self.logger = logger

    def getExportedAPI(self):
        findBinCmd = "find " + os.path.expanduser(self.srcDir) + " -name '*.so' "
    
        result = subprocess.run(findBinCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
        if result.returncode != 0:
            self.logger.warning("Failed to extract .so libraries")
            self.logger.warning(result.stderr)
            sys.exit(-1)
    
        libs = []
        for line in result.stdout.split("\n"):
            if len(line) > 0:
                libs.append(line)
    
        exportedAPIs = []
        for lib in libs:
            self.logger.warning(lib)
            cmd = "nm -DP " + lib 
            result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            if result.returncode != 0:
                self.logger.warning("Failed to extract exported API from binary %s. Exiting...", lib)
    
            for line in result.stdout.split("\n"):
                tokens = line.split()
                if len(tokens) > 0:
                    symName = tokens[0]
                    qualifier = tokens[1]
                    if qualifier == "T":
                        exportedAPIs.append(symName)
    
        return exportedAPIs
    
    def linkBitcodes(self):
        findBitcodeCmd = "find " + os.path.expanduser(self.srcDir) + " -name '*.ll' "
        self.logger.debug("Running cmd: %s", findBitcodeCmd)
        result = subprocess.run(findBitcodeCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        if result.returncode != 0:
            self.logger.warning("Failed to find bitcode files to link: %s", result.stderr)
            sys.exit(-1)
    
        bitcodeFiles = []
        for line in result.stdout.split("\n"):
            if "individual-funcs" in line:
                continue
            bitcodeFiles.append(line)
    
        self.logger.info("Bitcode files: %s", bitcodeFiles)
        argStr = ""
        for bitcodeFile in bitcodeFiles:
            argStr = argStr + " " + bitcodeFile
    
        linkCmd = "llvm-link " + argStr + " -o " + self.srcDir + "/" + self.individualFuncsPath + "/linked.ll"
        self.logger.debug("Running cmd: %s", linkCmd)
        result = subprocess.run(linkCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
        if result.returncode != 0:
            self.logger.warning("Failed to link bitcodes: %s", result.stderr)
            sys.exit(-1)
    
        return os.path.join(os.path.expanduser(self.srcDir), self.individualFuncsPath, "linked.ll")

    def parseCallgraph(self):
        callgraphMap = {}
        nodeFuncMap = {}
        with open('callgraph_final.dot', 'r') as file:
            lines = file.readlines()
            for line in lines:
                if "Node" not in line:
                    continue
                tokens = line.strip().split()
                if "label" in line:
                    nodeName = tokens[0]
                    functionName = tokens[3][1:-1]
                    nodeFuncMap[nodeName] = functionName
        with open('callgraph_final.dot', 'r') as file:
            lines = file.readlines()
            for line in lines:
                if "Node" not in line:
                    continue
                tokens = line.strip().split()
                if "->" in line:
                    node1 = tokens[0]
                    node2 = tokens[2]
                    callerFunc = nodeFuncMap[node1]
                    calleeFunc = nodeFuncMap[node2[:-1]]
                    if callerFunc == calleeFunc:
                        continue
                    if callerFunc not in callgraphMap:
                        callgraphMap[callerFunc] = set()
                    callgraphMap[callerFunc].add(calleeFunc)
        return callgraphMap

    def getCallgraph(self):
        linkedBitcodeFile = self.linkBitcodes()
        callgraphCmd = "wpa -dump-callgraph -ander -cxt " + linkedBitcodeFile
        result = subprocess.run(callgraphCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
        if result.returncode != 0:
            self.logger.warning("Failed to generate callgraph: %s", callgraphCmd)
            sys.exit(-1)
    
        callgraphMap = self.parseCallgraph()
        return callgraphMap

if __name__ == "__main__":
    loggerFileName = "./util_tester.log"
    logger = getLogger(loggerFileName)
    staticAnalyzer = StaticAnalyzer("/home/tpalit/rustify/src/python/inputs-complex/libcsv/", "individual-funcs_gpt-4o_2024-09-14_10-33-41/", logger)
    callgraphMap = staticAnalyzer.getCallgraph()
    logger.info(callgraphMap)
