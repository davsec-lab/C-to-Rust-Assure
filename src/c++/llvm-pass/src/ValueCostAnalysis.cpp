#include "Graphs/ICFG.h"
#include "Util/ExtAPI.h"
#include "llvm/IR/InstIterator.h"
#include "ValueCostAnalysis.h"
#include "RustifyUtils.h"
#include "RustifyLog.h"

using namespace llvm;
using namespace SVF;
using namespace Rustify;

void ValueCostAnalysis::analyze(void) {
}

/*
 * isAddrTaken
 * A generic function which takes a value and decides whether it's showing
 * that an address of a variable is being passed or not
*/
bool ValueCostAnalysis::isAddrTaken(Value *myvalue) {
    isAddrTaken_ = true;
    if ( !getBaseType(myvalue->getType())->isStructTy() )
        isAddrTaken_ = false;
    if ( !myvalue->getType()->isPointerTy() )
        isAddrTaken_ = false;
    if ( SVFUtil::isa<LoadInst>(myvalue) )
        isAddrTaken_ = false;
    if ( SVFUtil::isa<Argument>(myvalue) )
        isAddrTaken_ = false;
    if ( SVFUtil::isa<BitCastInst>(myvalue) )
        isAddrTaken_ = isAddrTaken(SVFUtil::dyn_cast<BitCastInst>(myvalue)->getOperand(0));
    if ( SVFUtil::isa<CallInst>(myvalue) )
        isAddrTaken_ = false;
    if ( SVFUtil::isa<ConstantPointerNull>(myvalue) )
        isAddrTaken_ = false;
    return isAddrTaken_;
}

bool ValueCostAnalysis::isAddrTaken(void) {
    if ( SVFUtil::isa<BitCastInst>(value) )
        return isAddrTaken(SVFUtil::dyn_cast<BitCastInst>(value)->getOperand(0));
    else
        return isAddrTaken(value);
}

bool ValueCostAnalysis::isGlobalVar(void) {
    if ( SVFUtil::isa<GlobalVariable>(value) )
        isGlobalVar_ = true;
    return isGlobalVar_;
}
