#ifndef RustifyPASS_H_
#define RustifyPASS_H_

#include "Util/SVFModule.h" 

namespace Rustify 
{

class RustifyPass : public SVF::ModulePass
{

public:
    /// Pass ID
    static char ID;

    RustifyPass() : ModulePass(ID){

    }

                                                                                
    /// Run aero ptr optimizations on SVFModule                                       
    virtual void runOnModule(SVF::SVFModule* svfModule);
                                                                                
    /// Run aero ptr optimizations on LLVM module                                     
    virtual bool runOnModule(SVF::Module& module);

    virtual inline SVF::StringRef getPassName() const{
        return "RustifyPass";
    }
};

}

#endif
