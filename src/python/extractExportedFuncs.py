"""
Extract the syscalls for each process

"""
import logging
import os
import sys
import json

sys.path.insert(0, './python-utils/')

import util
import binaryAnalysis

import re
import optparse

def isValidOpts(opts):
    """
    Check if the required options are sane to be accepted
        - Check if the provided files exist
        - Check if two sections (additional data) exist
        - Read all target libraries to be debloated from the provided list
    :param opts:
    :return:
    """
    if not options.inputpath or not options.outputpath:
        parser.error("All options --inputpath, --outputpath should be provided.")
        return False

    return True

def setLogPath(logPath):
    """
    Set the property of the logger: path, config, and format
    :param logPath:
    :return:
    """
    if os.path.exists(logPath):
        os.remove(logPath)

    rootLogger = logging.getLogger("coverage")
    if options.debug:
        logging.basicConfig(filename=logPath, level=logging.DEBUG)
        rootLogger.setLevel(logging.DEBUG)
    else:
        logging.basicConfig(filename=logPath, level=logging.INFO)
        rootLogger.setLevel(logging.INFO)

#    ch = logging.StreamHandler(sys.stdout)
    consoleHandler = logging.StreamHandler()
    rootLogger.addHandler(consoleHandler)
    return rootLogger
#    rootLogger.addHandler(ch)

if __name__ == "__main__":

    """
    Extract exported functions of given binary.
    """
    usage = "Usage: %prog -i <Target binary> -o <File to store exported function list>"

    parser = optparse.OptionParser(usage=usage, version="1")

    parser.add_option("-i", "--inputpath", dest="inputpath", default=None, nargs=1,
                      help="Path to binary")

    parser.add_option("-o", "--outputpath", dest="outputpath", default=None, nargs=1,
                      help="Path to output folder")

    parser.add_option("-d", "--debug", dest="debug", action="store_true", default=False,
                      help="Debug enabled/disabled")

    (options, args) = parser.parse_args()
    if isValidOpts(options):
        rootLogger = setLogPath("extractexportedfuncs.log")

        exportedLibFuncs = util.extractExportedFunctionsWithNm(options.inputpath, rootLogger)
        outputFile = open(options.outputpath, 'w')
        for func in exportedLibFuncs:
            func = func.strip()
            outputFile.write(func + "\n")
            outputFile.flush()
        outputFile.close()
