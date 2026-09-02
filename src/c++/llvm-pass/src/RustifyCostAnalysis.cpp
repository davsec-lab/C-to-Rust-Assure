#include "Graphs/ICFG.h"
#include "Util/ExtAPI.h"
#include "llvm/IR/InstIterator.h"
#include "RustifyCostAnalysis.h"
#include "ApiCostAnalysis.h"
#include "CveCostAnalysis.h"
#include "HeapInitFunction.h"
#include "RustifyUtils.h"
#include "RustifyLog.h"

#include <sys/time.h>
#include <ctime>
#include <chrono>

using namespace llvm;
using namespace SVF;
using namespace Rustify;

static llvm::cl::opt<bool> PrintEasyFuncs("print-easy-funcs", llvm::cl::desc("Rustify - Print easy funcs with score less than value"),
                            llvm::cl::init(false));

static llvm::cl::opt<bool> PrintArgTypeStrs("print-arg-type-strs", llvm::cl::desc("Rustify - Print argument type strings"),
                            llvm::cl::init(false));

static llvm::cl::opt<bool> ApiBasedAnalysis("enable-api-based", llvm::cl::desc("Rustify - Enable api-based analysis"),
                            llvm::cl::init(false));

static llvm::cl::opt<bool> FuncBasedAnalysis("enable-func-based", llvm::cl::desc("Rustify - Enable func-based analysis"),
                            llvm::cl::init(false));

static llvm::cl::opt<std::string> ApiListFile("export-func-list",
                            llvm::cl::desc("Rustify - functions which are exported by the library - listed in a file"),
                            llvm::cl::init(""));

static llvm::cl::opt<std::string> SimpleApiListFile("simple-apis",
                            llvm::cl::desc("Rustify - path to store names of simple APIs"),
                            llvm::cl::init(""));

static llvm::cl::opt<std::string> ComplexApiListFile("complex-apis",
                            llvm::cl::desc("Rustify - path to store names of complex APIs"),
                            llvm::cl::init(""));

static llvm::cl::opt<bool> PrintEasyApis("print-easy-apis", llvm::cl::desc("Rustify - Print easy APIs"),
                            llvm::cl::init(false));



void RustifyCostAnalysis::run(void) {
    runFuncBasedAnalysis();
    if ( ApiBasedAnalysis )
        runApiBasedAnalysis();
}

void RustifyCostAnalysis::runApiBasedAnalysis(void) {
    int totalApis = 0, complexApiCount = 0;
    std::set<std::string> exportedFuncs;
    std::set<const Function*> easyApis, complexApis;

    if ( ApiListFile != "" )
        populateStrSetFromFile(ApiListFile, exportedFuncs);
    else
        ApiCostAnalysis::extractExportedFuncs(exportedFuncs);
    if ( exportedFuncs.size() == 0 ) {
        MyLogger(logERROR) << "ApiBasedAnalysis enabled, but no APIs identified, returning...\n";
        return;
    }

    for ( auto exportedFunc : exportedFuncs ) {
        const SVFFunction *func = findFunctionByName(svfModule, exportedFunc);
        if ( !func || func->isDeclaration() ) {
            MyLogger(logWARNING) << "Could not find function specified as exported func!\n";
            continue;
        }
        ApiCostAnalysis* apiCostObj = new ApiCostAnalysis(func->getLLVMFun(), funcCostMap, preProcessor);
        apiCostObj->analyze();
        totalApis++;
        if ( apiCostObj->isComplex() ) {
            complexApis.insert(func->getLLVMFun());
            complexApiCount++;
        } else {
            easyApis.insert(func->getLLVMFun());
        }
    }
    MyLogger(logDEBUG) << "Total APIs: " << totalApis
                    << " Complex APIs: " << complexApiCount << "\n";
    if ( SimpleApiListFile != "" ) {
        writeFuncNamesToFile(SimpleApiListFile, easyApis);
    }
    if ( ComplexApiListFile != "" ) {
        writeFuncNamesToFile(ComplexApiListFile, complexApis);
    }

    if ( PrintEasyApis ) {
        MyLogger(logINFO) << "Printing APIs which are not complex:\n";
        for ( auto func : easyApis ) {
            MyLogger(logINFO) << "API name: " << func->getName().str() << "\n";
        }
    }

}

void RustifyCostAnalysis::runFuncBasedAnalysis(void) {
    std::set<llvm::Function*>& allModuleFuncs = PreProcessor::getModuleFuncs();
    std::unordered_set<llvm::Function*> rustifiedFuncs;
    std::set<llvm::Function*> easyFuncs;
    int prevSize;
    int threshold = 16;

    int stringFuncs = 0, complexFuncs = 0, totalFuncs = 0;
    do { 
        prevSize = rustifiedFuncs.size();
        std::map<int, std::unordered_set<FunctionCostAnalysis*>> scoreToFuncs;
        std::map<int, int> scoreToCves;
        for ( auto func : allModuleFuncs ) {
            FunctionCostAnalysis* funcCostAnalysis = 
                    new FunctionCostAnalysis(func, preProcessor);
            funcCostAnalysis->analyze(rustifiedFuncs);
            if ( funcCostAnalysis->isComplex() )
                complexFuncs++;
            if ( funcCostAnalysis->isStringRelated() ) {
                MyLogger(logDEBUG) << "Function: " << funcCostAnalysis->getFuncName()
                                    << " is String related\n";
                stringFuncs++;
            }
            totalFuncs++;

            funcCostAnalysis->calculateScore();
            addToMap(funcCostAnalysis);
            int score = funcCostAnalysis->getScore();
            if ( !(score & (INDCALL|INTCALL|LIBCALL|STRUCT))  )
                rustifiedFuncs.insert(func);
            scoreToFuncs[score].insert(funcCostAnalysis);
            scoreToCves[score] += funcCostAnalysis->getCveCount();
            if ( score < threshold )
                easyFuncs.insert(func);
            funcCostMap[func] = funcCostAnalysis;
            //MyLogger(logDEBUG) << funcCostAnalysis->toString();
        }


        int lessThan16 = 0;
        int lessThan32 = 0;
        int moreThan32 = 0;
        int lessThan16Cves = 0;
        int lessThan32Cves = 0;
        int moreThan32Cves = 0;
        for ( auto const& item : scoreToFuncs ) {
            float funcCountToTotal = 
                    (float)item.second.size()/(float)allModuleFuncs.size();
            if ( item.first < 16 ) {
                lessThan16 += item.second.size();
                lessThan16Cves += scoreToCves[item.first];
            } else if ( item.first < 32 ) {
                lessThan32 += item.second.size();
                lessThan32Cves += scoreToCves[item.first];
            } else {
                moreThan32 += item.second.size();
                moreThan32Cves += scoreToCves[item.first];
            }
            //MyLogger(logINFO) << "Score: " << item.first 
            //                  << ", Cve Count: " 
            //                  << scoreToCves[item.first] 
            //                  << ", Function Count: " 
            //                  << item.second.size() 
            //                  << ", Function %: " << funcCountToTotal*100 << "\n";
        }
        //MyLogger(logINFO) << lessThan16 << "," << lessThan32 << "," << moreThan32 << "\n";
        //MyLogger(logINFO) << lessThan16Cves << "," << lessThan32Cves << "," << moreThan32Cves << "\n";
    } while ( false ); // prevSize != rustifiedFuncs.size() ); TODO

    if ( PrintArgTypeStrs )
        printAllArgTypeStrs();

    if ( PrintEasyFuncs ) {
        MyLogger(logINFO) << "Printing functions with score less than " << threshold << "\n";
        for ( auto func : easyFuncs )
            MyLogger(logINFO) << func->getName().str() << " (cveCount:" 
                  << CveCostAnalysis::getCveCount(func->getName().str()) << "\n";
    }

    MyLogger(logINFO) << "Total Funcs: " << totalFuncs 
                        << " Complex Funcs: " << complexFuncs 
                        << " (String Funcs: " << stringFuncs << ")\n";

    // printStFieldComplexity();
}

void RustifyCostAnalysis::addToMap(FunctionCostAnalysis* funcCostAnalysis) {
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& mutMap = 
                                        funcCostAnalysis->getMutableStFields();
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& usedMap = 
                                        funcCostAnalysis->getUsedStFields();
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& stFieldIndCallMap = 
                                        funcCostAnalysis->getIndCallStFields();
    std::map<StructType*, std::unordered_set<llvm::Function*>>& stIndCallMap = 
                                        funcCostAnalysis->getIndCallStructs();

    std::unordered_set<Function*>& mutStFuncs = funcCostAnalysis->getFuncsWithMutStructs();
    std::unordered_set<Function*>& useStFuncs = funcCostAnalysis->getFuncsWithStructs();

    std::unordered_set<Type*> argTypes = funcCostAnalysis->getArgTypes();

    for ( auto it: mutMap ) {
        stFieldMutFuncs[it.first].insert(it.second.begin(), it.second.end());
    }
    for ( auto it: usedMap ) {
        stFieldUsedFuncs[it.first].insert(it.second.begin(), it.second.end());
    }
    for ( auto it: stFieldIndCallMap ) {
        stFieldToIndCall[it.first].insert(it.second.begin(), it.second.end());
    }
    for ( auto it: stIndCallMap ) {
        stToIndCall[it.first].insert(it.second.begin(), it.second.end());
    }

    for ( auto it: mutStFuncs ) {
        allMutStFuncs.insert(it);
    }
    for ( auto it: useStFuncs ) {
        allUseStFuncs.insert(it);
    }

    for ( auto it : argTypes ) {
        allArgTypes.insert(it);
        allArgTypeStrs.insert(getTypeString(it));
    }
}

void RustifyCostAnalysis::printAllArgTypeStrs(void) {
    MyLogger(logDEBUG) << "Printing all arg type strings:\n";
    for ( auto argTypeStr : allArgTypeStrs ) {
        MyLogger(logDEBUG) << argTypeStr << "\n";
    }
    MyLogger(logDEBUG) << "Finished printing all arg type strings\n";
}

void RustifyCostAnalysis::printStFieldComplexity(void) {
    MyLogger(logINFO) << "Printing st field complexities\n";
    for ( auto it: stFieldMutFuncs ) {
        const TypeIntPair& stField = it.first;
        StructType* stType = (StructType*)stField.first;
        if ( stType )
            MyLogger(logINFO) << stType->getName();
        else
            MyLogger(logINFO) << getTypeString(stField.first);
        MyLogger(logINFO) << ".field[" 
                            << stField.second << "]: MutableFuncs.size(): " 
                            << it.second.size() << " UsedFuncs.size(): " 
                            << stFieldUsedFuncs[stField].size();
        if ( stType ) {
            MyLogger(logINFO) << " structPassedToIndCall.size(): " 
                              << stToIndCall[stType].size();
        }
        MyLogger(logINFO) <<  " stFieldPassedToIndCall.size(): "
                            << stFieldToIndCall[stField].size() << "\n";
        if ( stType ) { //&& stType->getName().str() == "struct.ngx_stream_upstream_peer_t" ) {
            for ( auto *func: it.second )
                MyLogger(logINFO) << "\tMutableFuncs:" << func->getName() << "\n";
            for ( auto *func: stFieldUsedFuncs[stField] )
                MyLogger(logINFO) << "\tUsedFuncs:" << func->getName() << "\n";
            
        }
    }

    std::unordered_set<Function*> uniqueUseFuncs;
    for ( auto func: allUseStFuncs ) {
        if ( allMutStFuncs.find(func) == allMutStFuncs.end() )
            uniqueUseFuncs.insert(func);
    }
    MyLogger(logINFO) << "useFuncs.size(): "
                        << allUseStFuncs.size() 
                        << " uniqueUseFuncs.size(): "
                        << uniqueUseFuncs.size() << "\n";
}
