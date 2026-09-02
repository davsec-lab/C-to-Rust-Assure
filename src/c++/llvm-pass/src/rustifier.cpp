#include "SVF-FE/LLVMUtil.h"
#include "RustifyPass.h"
#include "C2CPointerAnalysis.h"

using namespace Rustify;
using namespace SVF;
using namespace llvm;
using namespace std;

static llvm::cl::opt<std::string> InputFileName(cl::Positional, llvm::cl::desc("input bitcode"), 
                            llvm::cl::init("-"));

static llvm::cl::opt<bool> EnablePTA("enable-pta", llvm::cl::desc("Rustify - Enable or disable pointer analysis"),
                            llvm::cl::init(false));

int main(int argc, char **argv) {
    int arg_num = 0;
    char **arg_value = new char*[argc];
    std::vector<std::string> moduleNameVec;
    SVFUtil::processArguments(argc, argv, arg_num, arg_value, moduleNameVec);
    cl::ParseCommandLineOptions(arg_num, arg_value,
                                "Rustify\n");

    SVFModule* svfModule = LLVMModuleSet::getLLVMModuleSet()->buildSVFModule(moduleNameVec);

    if ( EnablePTA ){
        C2CPointerAnalysis *c2cPta = new C2CPointerAnalysis(svfModule);
        c2cPta->run();
    }

    RustifyPass* rustifyPass = new RustifyPass();
    rustifyPass->runOnModule(svfModule);
    outs() << "Finished rustify pass\n";

    return 0;
}
