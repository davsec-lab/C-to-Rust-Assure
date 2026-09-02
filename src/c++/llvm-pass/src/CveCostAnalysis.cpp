#include "Graphs/ICFG.h"
#include "Util/ExtAPI.h"
#include "llvm/IR/InstIterator.h"
#include "CveCostAnalysis.h"
#include "RustifyUtils.h"
#include "RustifyLog.h"

#include <iostream>
#include <fstream>
#include <string>

using namespace llvm;
using namespace SVF;
using namespace Rustify;

static llvm::cl::opt<std::string> CveMapFileName("cve-map-file", 
                                llvm::cl::desc("cve2func map"),
                                llvm::cl::init(""));

std::map<std::string, std::set<std::string>> CveCostAnalysis::funcToCveMap;

void CveCostAnalysis::parse(void) {
    std::ifstream cveFile(CveMapFileName);
    if (!cveFile.is_open()) {
        MyLogger(logERROR) << "Could not open the file - '"
             << CveMapFileName << "'\n";
        return;
    }

    std::string inputLine;
    while ( getline(cveFile, inputLine) ){
        parseCveLine(inputLine);
    }

    cveFile.close();
}

void CveCostAnalysis::parseCveLine(std::string input) {     /// cve line: CVE-ID,FuncName
    std::vector<std::string> splittedInput;
    splitString(input, splittedInput, ',');
    if ( splittedInput.size() < 2 ) {
        MyLogger(logWARNING) << "skipping line, could not parse CVE line: "
                            << input << "\n";
        return;
    }
    std::string cveId = splittedInput[0];
    std::string funcName = splittedInput[1];
    funcToCveMap[funcName].insert(cveId);
    MyLogger(logDEBUG) << "parsedLine, cveId: " << cveId
                        << ", funcName: " << funcName << "\n";
}
