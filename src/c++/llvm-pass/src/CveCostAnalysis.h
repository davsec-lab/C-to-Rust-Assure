#ifndef CveCostAnalysis_H_
#define CveCostAnalysis_H_

#include "Graphs/SVFG.h"
#include "WPA/Andersen.h"
#include "SVF-FE/PAGBuilder.h"
#include "PreProcessor.h"
#include "RustifyUtils.h"

namespace Rustify
{

class CveCostAnalysis
{

public:
    /// Constructor
    CveCostAnalysis(SVF::SVFModule* svfModule_,
                            PreProcessor* preProcessor_):
                          svfModule(svfModule_),
                          preProcessor(preProcessor_) {
    }

    /// Destructor
    virtual ~CveCostAnalysis()
    {
        destroy();
    }

    void destroy(){
        // TODO
    }

    /// parse entire CVE to function mapping CSV
    void parse(void);

    /// retrieve number of CVEs related to this function
    static int getCveCount(std::string funcName) {
        if ( funcToCveMap.find(funcName) == funcToCveMap.end() )
            return 0;
        return funcToCveMap[funcName].size();
    }

private:

    /// the module we are running our analysis against
    SVF::SVFModule *svfModule;

    ///// we only need this for generating a constant i1 int for bool-based cond branches
    //llvm::Module *module =
    //        SVF::LLVMModuleSet::getLLVMModuleSet()->getMainLLVMModule();

    /// we need access to the information processed by the preprocessor
    PreProcessor *preProcessor;

    /// parse each line of the cve-to-func line CVEID,FuncName
    void parseCveLine(std::string);

    /// keep map func -> set of CVEs
    /// we will use this when prioritizing the functions to be transformed to Rust
    static std::map<std::string, std::set<std::string>> funcToCveMap;

};

}

#endif
