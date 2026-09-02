#include "Util/SVFModule.h"
#include "SVF-FE/LLVMUtil.h"
#include "Graphs/SVFG.h"
#include "WPA/Andersen.h"
#include "WPA/AndersenSFR.h"
#include "WPA/Steensgaard.h"
#include "WPA/FlowSensitiveTBHC.h"
#include "WPA/TypeAnalysis.h"
#include "MemoryModel/PointerAnalysis.h"
#include "SABER/LeakChecker.h"
#include "SVF-FE/PAGBuilder.h"
#include "RustifyPass.h"
#include "RustifyCostAnalysis.h"
#include "CveCostAnalysis.h"
#include "PreProcessor.h"
#include "RustifyLog.h"
#include "C2CPointerAnalysis.h"

using namespace Rustify;
using namespace SVF;
using namespace llvm;
using namespace std;

char RustifyPass::ID = 0;

static llvm::RegisterPass<RustifyPass> ANALYSIS("rustify",
        "Rustifying C code Cost Analysis");

static llvm::cl::opt<bool> DebugMode("enable-debugging", 
                            llvm::cl::desc("Rustify - print debugging messages (very verbose)"),
                            llvm::cl::init(false)); 


static llvm::cl::opt<bool> EnablePAG("enable-pag", llvm::cl::desc("Rustify - Enable or disable building PAG"), 
                            llvm::cl::init(true)); 

static llvm::cl::opt<bool> EnableStats("enable-stats", llvm::cl::desc("Rustify - Enable or disable generating stats"), 
                            llvm::cl::init(false)); 

static llvm::cl::opt<bool> EnableCve("enable-cve", llvm::cl::desc("Rustify - Enable or disable analyzing CVEs"), 
                            llvm::cl::init(false)); 

static llvm::cl::opt<bool> EnablePTARustify("rustify-enable-pta", 
                        llvm::cl::desc("Rustify - Enable or disable pointer analysis"), 
                            llvm::cl::init(false)); 

LogLevel Rustify::logLevel = logINFO;

/*!
 * runOnModule
 * We start from here if called through opt
 */
bool RustifyPass::runOnModule(Module& module)
{
    SVFModule* svfModule = 
                LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(module);
    runOnModule(svfModule);
    return false;
}

/*
 * runOnModule
 * Our pass starts here
*/
void RustifyPass::runOnModule(SVFModule* svfModule){

    if ( DebugMode )
        Rustify::logLevel = logDEBUG;

    if ( EnablePTARustify ){
        C2CPointerAnalysis *c2cPta = new C2CPointerAnalysis(svfModule);
        c2cPta->run();
    }


    /// the preprocessor keeps information about:
    ///     - libc functions: we want to identify libc function calls (something which DEFINITELY won't be Rust)
    ///     - collection struct types: we want to identify struct types which represent vectors, stacks, lists,...
    PreProcessor *preProcessor = new PreProcessor(svfModule);
    preProcessor->run();
    preProcessor->init();

    /// analyze CVEs for this program if available
    if ( EnableCve ) {
        CveCostAnalysis *cveAnalysis = new CveCostAnalysis(svfModule, preProcessor);
        cveAnalysis->parse();
    }

    /// the rustifyCostAnalysis class is the main class for extracting the cost related
    /// to translating functions to Rust
    RustifyCostAnalysis *rustifyCostAnalysis = 
                                    new RustifyCostAnalysis(svfModule,
                                                          preProcessor);

    rustifyCostAnalysis->run();

    //if ( EnableStats ) {
    //    Statistics *stats = new Statistics(svfModule, configDepAnalysis);
    //    stats->generateStats();
    //}
}
