#include "Graphs/ICFG.h"
#include "Util/ExtAPI.h"
#include "llvm/IR/InstIterator.h"
#include "C2CPointerAnalysis.h"
#include "FunctionCostAnalysis.h"
#include "CveCostAnalysis.h"
#include "RustifyUtils.h"
#include "RustifyLog.h"

using namespace llvm;
using namespace SVF;
using namespace Rustify;

int Rustify::INTCALL = 1 << 1;  // 2
int Rustify::LIBCCALL = 1 << 2; // 4
int Rustify::LIBCALL = 1 << 3;  // 8
int Rustify::INDCALL = 1 << 4;  // 16
int Rustify::STRUCT = 1 << 5;   // 32


void FunctionCostAnalysis::analyze(std::unordered_set<llvm::Function*>& rustifiedFuncs) {
    //MyLogger(logDEBUG) << "Analyzing func: " << function->getName() << "\n";

    if ( function->hasName() )
        cveCount = CveCostAnalysis::getCveCount(function->getName().str());

    /*
     some complex characteristics are specified by the function arguments
        1) void* or char*
        2) collection-related struct type
    */
    analyzeArgs();
    isLeaf = true;
    for ( inst_iterator I = inst_begin(function), E = inst_end(function);
                                I != E; ++I ){
        Instruction* inst = &*I;
        analyzeInst(inst, rustifiedFuncs);
    }

    C2CPointerAnalysis::getCallGraph()->getReachableFunctions(
                                    SVFUtil::getDefFunForMultipleModule(function),
                                    reachableFuncs);

    isComplex_ = isCollectionRelated | 
                    isStringRelated_ | 
                    hasCollectionStruct_ | 
                    hasMultiOwnerStruct_ | 
                    hasUnion_ | 
                    hasCharPtrArg |
                    hasVoidPtrArg |
                    hasGlobalVar |
        		    hasDoublePointer |
		            !isLeaf |
		            (structComplexityMax >= 2) |
        		    hasNonSimpleType |
        		    hasNonSimplePointer;
    MyLogger(logDEBUG) << "Func: " << function->getName() << " isComplex: " << isComplex_ << "\n";
    cout << "Func: " << function->getName().str() << " isComplex: " << isComplex_ << " isLeaf: " << isLeaf << " hasDoublePointer: " << hasDoublePointer << " structComplexityMax: " << structComplexityMax << " hasNonSimpleType: " << hasNonSimpleType << " hasNonSimplePointer: " << hasNonSimplePointer <<"\n";
}

/*
 * analyzeInst
 * Our current implementation analyze the instructions of a function to find the following patterns:
 *  - is this a leaf function? (does it a have a callInst?)
 *  - does this function access a global variable?
 *  - does it perform any ptr arithmetics?
 */
void FunctionCostAnalysis::analyzeInst(Instruction *inst, std::unordered_set<llvm::Function*>& rustifiedFuncs) {
    std::unordered_set<Value*> instValues;

    /// for some cases (e.g. addr taken, global var) we need to analyze 
    /// a value being accessed by the instruction, for these cases we extract
    /// the value and analyze it separately
    getInstValues(inst, instValues);
    for ( auto value : instValues ) {
        ValueCostAnalysis *valueCost = getValue(value, inst);
        hasAddrTaken = valueCost->isAddrTaken();
        hasGlobalVar = valueCost->isGlobalVar();
    }

    /// there are some special cases where we need to analyze the instruction in its entirety
    /// callInst -> what is the callee? indirect call? libc function call? internal call?
    if ( SVFUtil::isa<CallInst>(inst) )
    {
        isLeaf = false;
        analyzeCall(SVFUtil::dyn_cast<CallInst>(inst), rustifiedFuncs);
    }

    /// gepInst -> can be used to identify ptr arithmetics on strings
    if ( SVFUtil::isa<GetElementPtrInst>(inst) )
        analyzeGepInst(SVFUtil::dyn_cast<GetElementPtrInst>(inst));
}

void FunctionCostAnalysis::getInstValues(Instruction *inst, 
                                        std::unordered_set<Value*>& values) {
    if ( SVFUtil::isa<StoreInst>(inst) ) {
        StoreInst *stInst = SVFUtil::dyn_cast<StoreInst>(inst);
        values.insert(stInst->getValueOperand());
    } else if ( SVFUtil::isa<CallInst>(inst) ) {
        CallInst *callInst = SVFUtil::dyn_cast<CallInst>(inst);
        for ( int i = 0; i < callInst->arg_size(); i++ )
            values.insert(callInst->getArgOperand(i));
    } else if ( SVFUtil::isa<ReturnInst>(inst) ) {
        ReturnInst *retInst = SVFUtil::dyn_cast<ReturnInst>(inst);
        if ( retInst->getReturnValue() )
            values.insert(retInst->getReturnValue());
    }
}

void FunctionCostAnalysis::analyzeGepInst(GetElementPtrInst *gepInst) {
    Type *gepPtrType = gepInst->getPointerOperand()->getType();
    /// TODO how to identify char*, bitcode seems the same as void*
    if ( !isCharPtrType(gepPtrType) && !isVoidPtrType(gepPtrType) )
        return;
    int gepIndex = getGepIndex(gepInst);
    if ( gepIndex == -1 )   /// non-constant gep index
        isStringRelated_ = true;
}

void FunctionCostAnalysis::analyzePtrArith(Instruction* inst) {

}

/*
 * analyzeCall
 * Each call instruction is analyzed to identify the complexity of this function
 * 
 * Indirect call -> complex
 * Call to another function -> 
 * Call to another library ->
 * Call to another libc ->
*/
void FunctionCostAnalysis::analyzeCall(CallInst* callInst, 
                            std::unordered_set<llvm::Function*>& rustifiedFuncs) {
    if ( callInst->isIndirectCall() ) {
        indCallInsts.insert(callInst);
        return;
    }
    Function* callee = getDirectCallee(callInst);
    if ( !callee ) {
        //MyLogger(logDEBUG) << "direct callee isn't valid: " << getValueString(callInst) << "\n";
        return;
    }

    if ( !callee->isDeclaration() ) {
        if ( !isInUnorderedSet(rustifiedFuncs, callee) ) 
            internalCallInsts.insert(callInst);
        return;
    }

    // TODO how to identify libc functions??? hardcoded list?
    if ( !PreProcessor::isLibcFunction(callee) )
        libraryCallInsts.insert(callInst);
    else
        libcCallInsts.insert(callInst);

}

/*
 * analyzeArgs
 * Analyze argument types of this function to identify argument types
 *
 * 
*/
void FunctionCostAnalysis::analyzeArgs(void) {
    for ( int i = 0; i < function->arg_size(); ++i ) {
        Argument* arg = function->getArg(i);
        Type* origArgType = arg->getType();
        argTypes.insert(origArgType);

        /// collecting information about argument type -> no complex/simple decisions
        Type* argType = getBaseType(arg->getType());
        if ( argType->isStructTy() ) {
            if ( PreProcessor::isCollectionStruct(argType) )
                hasCollectionStruct_ = true;
            if ( PreProcessor::isMultiOwnerStruct(argType) )
                hasMultiOwnerStruct_ = true;
            if ( isUnion(argType) ) {
                MyLogger(logDEBUG) << "isUnion is true for: " << getTypeString(argType) << "\n";
                hasUnion_ = true;
            }
            hasStructArg = true;
            argIsStType[arg] = true;
            findReadAndWrites(arg);
        } else if ( origArgType->isPointerTy() && 
                    argType->isIntegerTy() ) {    // is void*
            findReadAndWrites(arg);
        } else
            argIsStType[arg] = false;

	    /// Dylan testing for simple struct
        /// Using our argument-based specifier to determine whether this is a complex function -> look at GDoc for patterns
        if (origArgType->isPointerTy()) {
            PointerType* pointerType = SVFUtil::dyn_cast<PointerType>(origArgType);
            /// TODO is ptr accessed as an array in this function? 
            ///         if YES -> complex, if NO -> not complex
            ///         for NOW: both these cases are complex!
            if ((pointerType->getPointerElementType())->isPointerTy()) {
                hasDoublePointer = true;    /// probably an array of elements -> considering complex for now
            } else if (pointerType->getPointerElementType()->isStructTy()) {
                if (structComplexityMax < t_hasptr)
                    structComplexityMax = t_hasptr;
                int out = isStructSimple(SVFUtil::dyn_cast<StructType>(pointerType->getPointerElementType()));  /// TODO: simplify
                if (out > structComplexityMax)
                    structComplexityMax = out;
            } else if ( isCharPtrType(origArgType) ) { /// does the function have a char* arg type?
                hasCharPtrArg = true;       /// these aren't necessarily complex
            } else if ( isVoidPtrType(origArgType) ) { /// does the function have a void* arg type?
                hasVoidPtrArg = true;       /// these aren't necessarily complex
            } else if (!isIntType(arg) || isCharType(arg) || isFloatType(arg) || isDoubleType(arg)) {
                hasNonSimpleType = true;
            } else {
                hasNonSimplePointer = true;
            }
        } else if (origArgType->isStructTy()) {
            int out = isStructSimple(SVFUtil::dyn_cast<StructType>(origArgType));
            if (out > structComplexityMax)
                structComplexityMax = out;
        } else {    /// is Int, Char, Float, Double -> primitive data type
            hasNonSimpleType = false;
        }
        /// end Dylan's code

    }
}

ValueCostAnalysis* FunctionCostAnalysis::getValue(Value *value, Instruction *inst) {
    if ( valueCosts.find(value) == valueCosts.end() ) {
        ValueCostAnalysis *valueCost = 
            new ValueCostAnalysis(value, inst, function, preProcessor);
        valueCosts[value] = valueCost;
        return valueCost;
    }
    return valueCosts[value];
}

void FunctionCostAnalysis::addAddrTakenValue(Value *addrTakenVal, Value *addrTakenPlace) {
    // TODO do we need this?
}


/*
 * everything in this class is intra-procedural, focusing only on a single function
 * except for the following function which follows struct writes in another function
 * as well
*/
void FunctionCostAnalysis::findReadAndWrites(Argument* arg) {
    std::vector<std::string> externalWriteFunctions;
    externalWriteFunctions.push_back("llvm.memcpy.p0i8.p0i8.i32");
    externalWriteFunctions.push_back("llvm.memcpy.p0i8.p0i8.i64");
    externalWriteFunctions.push_back("strcpy");
    externalWriteFunctions.push_back("memcpy");
    externalWriteFunctions.push_back("apr_palloc");     //added by Hamed


    // The current Value and its parent, and the gep if any it originates from
    std::stack<std::tuple<Value*, Value*, GetElementPtrInst*>> workStack; 

    std::vector<Value*> added;
    std::vector<Value*> visitedList;
    Value* argOnStack = findInitialArgOnStack(arg, visitedList);

    if ( argOnStack )
        workStack.push(std::make_tuple(argOnStack, nullptr, nullptr));

    while ( !workStack.empty() ) {
        Value* work = std::get<0>(workStack.top());

        Value* parent = std::get<1>(workStack.top());
        GetElementPtrInst* parentGep = std::get<2>(workStack.top());

        if (parent) {
            if (SVFUtil::isa<GetElementPtrInst>(parent)) {
                GetElementPtrInst* tempGep =
                            SVFUtil::dyn_cast<GetElementPtrInst>(parent);
                if (getBaseType(tempGep->getSourceElementType())->isStructTy()) {
                    parentGep = tempGep;
                }
            }
        }

        workStack.pop();

        visitedList.push_back(work);

        // which gep is this?
        if (CallInst* CI = SVFUtil::dyn_cast<CallInst>(work)) {
           if (Function* f = CI->getCalledFunction()) {
               if (f->hasName() &&
                       (f->getName().startswith("llvm.var.annot")
                        || f->getName().startswith("llvm.ptr.annot"))) {
                   continue;
               }
               if (std::find(externalWriteFunctions.begin(), externalWriteFunctions.end(),
                           f->getName()) != externalWriteFunctions.end()) {
                   if (parentGep) {
                        stFieldMutFuncs[getTupleFromGep(parentGep)].insert(CI->getParent()->getParent());
                        mutStFuncs.insert(CI->getParent()->getParent());
                       //configStoreList.push_back(CI);
                       //storeToGepMap[CI] = parentGep;
                   }
               }
               // TODO: handle interprocedural stuff
               if (f->isDeclaration()) {
                   continue;
               }
               // Do interprocedural 
               // if VarArg, then just assume that this is written and move on
               if (f->isVarArg()) {
                   if (parentGep) {
                        stFieldMutFuncs[getTupleFromGep(parentGep)].insert(CI->getParent()->getParent());
                        mutStFuncs.insert(CI->getParent()->getParent());
                       //configStoreList.push_back(CI);
                       //storeToGepMap[CI] = parentGep;
                       // TODO: ideally, *all* objects under this should be
                       // marked as "written to"
                       // TODO: or maybe handle var-arg correctly
                   }
               } else {
                   Value* argOnStack = findArgOnStack(parent, CI, visitedList);
                   if (argOnStack && std::find(visitedList.begin(), visitedList.end(), argOnStack) == visitedList.end()) {
                       workStack.push(std::make_tuple(argOnStack, work, parentGep));
                   }
               }
           } else {
                int argCount = CI->getNumArgOperands();
                for ( int i = 0; i < argCount; i++ ){
                    Value *arg = CI->getArgOperand(i);
                    if ( arg == parent ){
                        ///if the current arg is the reason we're considering this call inst

                        //errs() << "arg which caused callinst to be config-related: " 
                        //<< getValueString(arg) << "\n";
                        if ( getBaseType(arg->getType())->isStructTy() && parentGep )
                            stFieldToIndCall[getTupleFromGep(parentGep)].insert(CI->getParent()->getParent());
                        else if ( getBaseType(arg->getType())->isStructTy() )
                            stToIndCall[getBaseStType(
                                         SVFUtil::dyn_cast<StructType>(getBaseType(arg->getType())),
                                         PreProcessor::getStructEqMap())].insert(
                                                            CI->getParent()->getParent());
                    }
                }
           }
        } else if (StoreInst* SI = SVFUtil::dyn_cast<StoreInst>(work)) {
            // We care about conf.b = 10 and not ret = conf.b
            // store 10, conf.b <-- pointerOperand
            if (parentGep && SI->getPointerOperand() == parent) {
                stFieldMutFuncs[getTupleFromGep(parentGep)].insert(SI->getParent()->getParent());
                mutStFuncs.insert(SI->getParent()->getParent());
                //configStoreList.push_back(SI);
                //storeToGepMap[SI] = parentGep;
            }else if ( SI->getValueOperand() == parent )
                workStack.push(std::make_tuple(SI->getPointerOperand(), nullptr, nullptr));
            // Store is a sink, no need to push to workStack
        } else {
            // Still need to follow casts or whatevers
            if ( SVFUtil::isa<LoadInst>(work) && parentGep ) { 
                LoadInst *loadInst = SVFUtil::dyn_cast<LoadInst>(work);
                if ( loadInst->getPointerOperand() == parent ||
                        loadInst->getPointerOperand() == parentGep ) { 
                    stFieldUsedFuncs[getTupleFromGep(parentGep)].insert(loadInst->getParent()->getParent());
                    useStFuncs.insert(loadInst->getParent()->getParent());
                }
                //configStoreList.push_back(SI);
                //storeToGepMap[SI] = parentGep;
            }
            for (User* u: work->users()) {
                if (Instruction* inst = SVFUtil::dyn_cast<Instruction>(u)) {
                    if (std::find(visitedList.begin(), visitedList.end(), inst) ==
                                                             visitedList.end()) {
                        workStack.push(std::make_tuple(inst, work, parentGep));
                    }
                }
            }
        }
    }

}

TypeIntPair FunctionCostAnalysis::getTupleFromGep(GetElementPtrInst* gepInst) {
    TypeIntPair stField;
    bool result = convertGepToStructField(stField, gepInst, PreProcessor::getStructEqMap());
    assert(result && "gep is not from struct type!");
    return stField;
}

Value* FunctionCostAnalysis::findInitialArgOnStack(Argument* arg, 
                                            std::vector<Value*>& visitedList) {
    std::vector<Value*> argStoreWorkList;
    argStoreWorkList.push_back(arg);
    StoreInst* stInst = nullptr;

    bool found = false;

    while (!argStoreWorkList.empty() && !found) {
        Value* work = argStoreWorkList.back();
        argStoreWorkList.pop_back();
        for (User* user: work->users()) {
            if (StoreInst* si = SVFUtil::dyn_cast<StoreInst>(user)) {
                if (si->getValueOperand() == work) {
                    stInst = si;
                    found = true;
                    break;
                }
            } else if (CastInst* cast = SVFUtil::dyn_cast<CastInst>(user)) {
                argStoreWorkList.push_back(cast);
            }
        }
    }

    if ( stInst == nullptr )
        return NULL;

    assert(stInst && "Argument not stored on stack?!");
    visitedList.push_back(stInst);

    return stInst->getPointerOperand();
}

Value* FunctionCostAnalysis::findArgOnStack(Value* operand, CallInst* CI, std::vector<Value*>& visitedList) {
    int pos = -1;

    for (int i = 0; i < CI->getNumArgOperands(); i++) {
        Value* valOp = CI->getArgOperand(i);
        if (valOp == operand) {
            pos = i;
            break;
        }
    }
    assert(pos > -1 && "Can't find match for operand in callinst");
    Function* calledFunction = CI->getCalledFunction();
    assert(calledFunction && "Should be a direct call");
    FunctionType* functionTy = calledFunction->getFunctionType();
    assert(functionTy->getNumParams() >= pos && "Invalid position of arg");
    // We're in -O0, so the argument must be stored on the stack
    int k = 0;
    Argument* arg = nullptr;
    for (Argument& a: calledFunction->args()) {
        if (k == pos) {
            arg = &a;
            break;
        }
        k++;
    }
    assert(arg && "Arg can't be null");

    // Find the store on the stack
    std::vector<Value*> argStoreWorkList;
    argStoreWorkList.push_back(arg);
    StoreInst* stInst = nullptr;

    bool found = false;

    while (!argStoreWorkList.empty() && !found) {
        Value* work = argStoreWorkList.back();
        argStoreWorkList.pop_back();
        for (User* user: work->users()) {
            if (StoreInst* si = SVFUtil::dyn_cast<StoreInst>(user)) {
                if (si->getValueOperand() == work) {
                    stInst = si;
                    found = true;
                    break;
                }
            } else if (CastInst* cast = SVFUtil::dyn_cast<CastInst>(user)) {
                argStoreWorkList.push_back(cast);
            }
        }
    }


    //hack by Hamed
    //if ( stInst == nullptr )
    //    return NULL;
    //finished hack

    assert(stInst && "Argument not stored anywhere?");
    visitedList.push_back(stInst);

    Value* stackObj = stInst->getPointerOperand();

    /*
    if (AllocaInst* stackObj = SVFUtil::dyn_cast<AllocaInst>(ptrOperand)) {
        return stackObj;
    }
    */
    return stackObj;
}

void FunctionCostAnalysis::calculateScore(void) {
    if ( hasStructArg )
        rustifyScore |= STRUCT;
    if ( internalCallInsts.size() != 0 )
        rustifyScore |= INTCALL;
    if ( libcCallInsts.size() != 0 )
        rustifyScore |= LIBCCALL;
    if ( libraryCallInsts.size() != 0 )
        rustifyScore |= LIBCALL;
    if ( indCallInsts.size() != 0 )
        rustifyScore |= INDCALL;
}

std::string FunctionCostAnalysis::toString(void) const{
    std::string str = function->getName().str() + ":\n\t";
    str += "hasStructArg: " + to_string(hasStructArg) + "\n\t";
    str += "libcCallInsts.size(): " + to_string(libcCallInsts.size()) + "\n\t";
    str += "libraryCallInsts.size(): " + to_string(libraryCallInsts.size()) + "\n\t";
    str += "internalCallInsts.size(): " + to_string(internalCallInsts.size()) + "\n\t";
    str += "indCallInsts.size(): " + to_string(indCallInsts.size()) + "\n";
    //if ( configType == SCALAR ){
    //    str += "type: Scalar, ";
    //    str += "global var: " + getValueString(globalVar);
    //}else if ( configType == STRUCTFIELD ){
    //    str += "type: StructField, ";
    //    str += "structType: " + getStructType()->getStructName().str() + ", ";
    //    str += "fieldIndex: " + to_string(getStructField());
    //}

    return str;
}


