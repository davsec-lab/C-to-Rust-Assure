#include "Graphs/ICFG.h"
#include "Util/ExtAPI.h"
#include "llvm/IR/InstIterator.h"
#include "FunctionCostAnalysis.h"
#include "ApiCostAnalysis.h"
#include "RustifyUtils.h"
#include "RustifyLog.h"

using namespace llvm;
using namespace SVF;
using namespace Rustify;

void ApiCostAnalysis::analyze(void) {
    if ( funcCostMap.find(function) == funcCostMap.end() ) {
        MyLogger(logERROR) << "API function: " << function->getName() << " doesn't have cost object\n";
        assert(false && "API function without cost object reached, this shouldn't happen!\n");
    }

    FunctionCostAnalysis* apiFuncCostObj = funcCostMap[function];   /// get cost of api function itself
    isComplex_ |= apiFuncCostObj->isComplex();
    std::unordered_set<Function*>& reachableFuncs = apiFuncCostObj->getReachableFuncs();

    /// get cost of all reachable funcs
    for ( auto reachableFunc : reachableFuncs ) {
        if ( funcCostMap.find(reachableFunc) == funcCostMap.end() ) 
            assert(false && "reachable function without cost object reached, this shouldn't happen!\n");
        FunctionCostAnalysis *funcCostObj = funcCostMap[reachableFunc];
        isComplex_ |= funcCostObj->isComplex();
    }
}

//void FunctionCostAnalysis::analyzeCall(CallInst* callInst, 
//                            std::unordered_set<llvm::Function*>& rustifiedFuncs) {
//    if ( callInst->isIndirectCall() ) {
//        indCallInsts.insert(callInst);
//        return;
//    }
//    Function* callee = getDirectCallee(callInst);
//    if ( !callee ) {
//        MyLogger(logDEBUG) << "direct callee isn't valid: " << getValueString(callInst) << "\n";
//        return;
//    }
//
//    if ( !callee->isDeclaration() ) {
//        if ( !isInUnorderedSet(rustifiedFuncs, callee) ) 
//            internalCallInsts.insert(callInst);
//        return;
//    }
//
//    // TODO how to identify libc functions??? hardcoded list?
//    if ( !PreProcessor::isLibcFunction(callee) )
//        libraryCallInsts.insert(callInst);
//    else
//        libcCallInsts.insert(callInst);
//
//}
//
//void FunctionCostAnalysis::analyzeArgs(void) {
//    for ( int i = 0; i < function->arg_size(); ++i ) {
//        Argument* arg = function->getArg(i);
//        Type* origArgType = arg->getType();
//        Type* argType = getBaseType(arg->getType());
//        if ( argType->isStructTy() ) {
//            hasStructArg = true;
//            argIsStType[arg] = true;
//            findReadAndWrites(arg);
//        } else if ( origArgType->isPointerTy() && 
//                    argType->isIntegerTy() ) {    // is void*
//            findReadAndWrites(arg);
//        } else
//            argIsStType[arg] = false;
//    }
//}
//
///*
// * everything in this class is intra-procedural, focusing only on a single function
// * except for the following function which follows struct writes in another function
// * as well
//*/
//void FunctionCostAnalysis::findReadAndWrites(Argument* arg) {
//    std::vector<std::string> externalWriteFunctions;
//    externalWriteFunctions.push_back("llvm.memcpy.p0i8.p0i8.i32");
//    externalWriteFunctions.push_back("llvm.memcpy.p0i8.p0i8.i64");
//    externalWriteFunctions.push_back("strcpy");
//    externalWriteFunctions.push_back("memcpy");
//    externalWriteFunctions.push_back("apr_palloc");     //added by Hamed
//
//
//    // The current Value and its parent, and the gep if any it originates from
//    std::stack<std::tuple<Value*, Value*, GetElementPtrInst*>> workStack; 
//
//    std::vector<Value*> added;
//    std::vector<Value*> visitedList;
//    Value* argOnStack = findInitialArgOnStack(arg, visitedList);
//
//    workStack.push(std::make_tuple(argOnStack, nullptr, nullptr));
//
//    while ( !workStack.empty() ) {
//        Value* work = std::get<0>(workStack.top());
//
//        Value* parent = std::get<1>(workStack.top());
//        GetElementPtrInst* parentGep = std::get<2>(workStack.top());
//
//        if (parent) {
//            if (SVFUtil::isa<GetElementPtrInst>(parent)) {
//                GetElementPtrInst* tempGep =
//                            SVFUtil::dyn_cast<GetElementPtrInst>(parent);
//                if (getBaseType(tempGep->getSourceElementType())->isStructTy()) {
//                    parentGep = tempGep;
//                }
//            }
//        }
//
//        workStack.pop();
//
//        visitedList.push_back(work);
//
//        // which gep is this?
//        if (CallInst* CI = SVFUtil::dyn_cast<CallInst>(work)) {
//           if (Function* f = CI->getCalledFunction()) {
//               if (f->hasName() &&
//                       (f->getName().startswith("llvm.var.annot")
//                        || f->getName().startswith("llvm.ptr.annot"))) {
//                   continue;
//               }
//               if (std::find(externalWriteFunctions.begin(), externalWriteFunctions.end(),
//                           f->getName()) != externalWriteFunctions.end()) {
//                   if (parentGep) {
//                        stFieldMutFuncs[getTupleFromGep(parentGep)].insert(CI->getParent()->getParent());
//                        mutStFuncs.insert(CI->getParent()->getParent());
//                       //configStoreList.push_back(CI);
//                       //storeToGepMap[CI] = parentGep;
//                   }
//               }
//               // TODO: handle interprocedural stuff
//               if (f->isDeclaration()) {
//                   continue;
//               }
//               // Do interprocedural 
//               // if VarArg, then just assume that this is written and move on
//               if (f->isVarArg()) {
//                   if (parentGep) {
//                        stFieldMutFuncs[getTupleFromGep(parentGep)].insert(CI->getParent()->getParent());
//                        mutStFuncs.insert(CI->getParent()->getParent());
//                       //configStoreList.push_back(CI);
//                       //storeToGepMap[CI] = parentGep;
//                       // TODO: ideally, *all* objects under this should be
//                       // marked as "written to"
//                       // TODO: or maybe handle var-arg correctly
//                   }
//               } else {
//                   Value* argOnStack = findArgOnStack(parent, CI, visitedList);
//
//                   if (std::find(visitedList.begin(), visitedList.end(), argOnStack) == visitedList.end()) {
//                       workStack.push(std::make_tuple(argOnStack, work, parentGep));
//                   }
//               }
//           } else {
//                int argCount = CI->getNumArgOperands();
//                for ( int i = 0; i < argCount; i++ ){
//                    Value *arg = CI->getArgOperand(i);
//                    if ( arg == parent ){
//                        ///if the current arg is the reason we're considering this call inst
//
//                        //errs() << "arg which caused callinst to be config-related: " 
//                        //<< getValueString(arg) << "\n";
//                        if ( getBaseType(arg->getType())->isStructTy() && parentGep )
//                            stFieldToIndCall[getTupleFromGep(parentGep)].insert(CI->getParent()->getParent());
//                        else if ( getBaseType(arg->getType())->isStructTy() )
//                            stToIndCall[getBaseStType(
//                                         SVFUtil::dyn_cast<StructType>(getBaseType(arg->getType())),
//                                         PreProcessor::getStructEqMap())].insert(
//                                                            CI->getParent()->getParent());
//                    }
//                }
//           }
//        } else if (StoreInst* SI = SVFUtil::dyn_cast<StoreInst>(work)) {
//            // We care about conf.b = 10 and not ret = conf.b
//            // store 10, conf.b <-- pointerOperand
//            if (parentGep && SI->getPointerOperand() == parent) {
//                stFieldMutFuncs[getTupleFromGep(parentGep)].insert(SI->getParent()->getParent());
//                mutStFuncs.insert(SI->getParent()->getParent());
//                //configStoreList.push_back(SI);
//                //storeToGepMap[SI] = parentGep;
//            }else if ( SI->getValueOperand() == parent )
//                workStack.push(std::make_tuple(SI->getPointerOperand(), nullptr, nullptr));
//            // Store is a sink, no need to push to workStack
//        } else {
//            // Still need to follow casts or whatevers
//            if ( SVFUtil::isa<LoadInst>(work) && parentGep ) { 
//                LoadInst *loadInst = SVFUtil::dyn_cast<LoadInst>(work);
//                if ( loadInst->getPointerOperand() == parent ||
//                        loadInst->getPointerOperand() == parentGep ) { 
//                    stFieldUsedFuncs[getTupleFromGep(parentGep)].insert(loadInst->getParent()->getParent());
//                    useStFuncs.insert(loadInst->getParent()->getParent());
//                }
//                //configStoreList.push_back(SI);
//                //storeToGepMap[SI] = parentGep;
//            }
//            for (User* u: work->users()) {
//                if (Instruction* inst = SVFUtil::dyn_cast<Instruction>(u)) {
//                    if (std::find(visitedList.begin(), visitedList.end(), inst) ==
//                                                             visitedList.end()) {
//                        workStack.push(std::make_tuple(inst, work, parentGep));
//                    }
//                }
//            }
//        }
//    }
//
//}
//
//TypeIntPair FunctionCostAnalysis::getTupleFromGep(GetElementPtrInst* gepInst) {
//    TypeIntPair stField;
//    bool result = convertGepToStructField(stField, gepInst, PreProcessor::getStructEqMap());
//    assert(result && "gep is not from struct type!");
//    return stField;
//}
//
//Value* FunctionCostAnalysis::findInitialArgOnStack(Argument* arg, 
//                                            std::vector<Value*>& visitedList) {
//    std::vector<Value*> argStoreWorkList;
//    argStoreWorkList.push_back(arg);
//    StoreInst* stInst = nullptr;
//
//    bool found = false;
//
//    while (!argStoreWorkList.empty() && !found) {
//        Value* work = argStoreWorkList.back();
//        argStoreWorkList.pop_back();
//        for (User* user: work->users()) {
//            if (StoreInst* si = SVFUtil::dyn_cast<StoreInst>(user)) {
//                if (si->getValueOperand() == work) {
//                    stInst = si;
//                    found = true;
//                    break;
//                }
//            } else if (CastInst* cast = SVFUtil::dyn_cast<CastInst>(user)) {
//                argStoreWorkList.push_back(cast);
//            }
//        }
//    }
//    assert(stInst && "Argument not stored on stack?!");
//    visitedList.push_back(stInst);
//
//    return stInst->getPointerOperand();
//}
//
//Value* FunctionCostAnalysis::findArgOnStack(Value* operand, CallInst* CI, std::vector<Value*>& visitedList) {
//    int pos = -1;
//
//    for (int i = 0; i < CI->getNumArgOperands(); i++) {
//        Value* valOp = CI->getArgOperand(i);
//        if (valOp == operand) {
//            pos = i;
//            break;
//        }
//    }
//    assert(pos > -1 && "Can't find match for operand in callinst");
//    Function* calledFunction = CI->getCalledFunction();
//    assert(calledFunction && "Should be a direct call");
//    FunctionType* functionTy = calledFunction->getFunctionType();
//    assert(functionTy->getNumParams() >= pos && "Invalid position of arg");
//    // We're in -O0, so the argument must be stored on the stack
//    int k = 0;
//    Argument* arg = nullptr;
//    for (Argument& a: calledFunction->args()) {
//        if (k == pos) {
//            arg = &a;
//            break;
//        }
//        k++;
//    }
//    assert(arg && "Arg can't be null");
//
//    // Find the store on the stack
//    std::vector<Value*> argStoreWorkList;
//    argStoreWorkList.push_back(arg);
//    StoreInst* stInst = nullptr;
//
//    bool found = false;
//
//    while (!argStoreWorkList.empty() && !found) {
//        Value* work = argStoreWorkList.back();
//        argStoreWorkList.pop_back();
//        for (User* user: work->users()) {
//            if (StoreInst* si = SVFUtil::dyn_cast<StoreInst>(user)) {
//                if (si->getValueOperand() == work) {
//                    stInst = si;
//                    found = true;
//                    break;
//                }
//            } else if (CastInst* cast = SVFUtil::dyn_cast<CastInst>(user)) {
//                argStoreWorkList.push_back(cast);
//            }
//        }
//    }
//
//
//    //hack by Hamed
//    //if ( stInst == nullptr )
//    //    return NULL;
//    //finished hack
//
//    assert(stInst && "Argument not stored anywhere?");
//    visitedList.push_back(stInst);
//
//    Value* stackObj = stInst->getPointerOperand();
//
//    /*
//    if (AllocaInst* stackObj = SVFUtil::dyn_cast<AllocaInst>(ptrOperand)) {
//        return stackObj;
//    }
//    */
//    return stackObj;
//}
//
//void FunctionCostAnalysis::analyzePtrArith(Instruction* inst) {
//
//}
//
//void FunctionCostAnalysis::calculateScore(void) {
//    if ( hasStructArg )
//        rustifyScore |= STRUCT;
//    if ( internalCallInsts.size() != 0 )
//        rustifyScore |= INTCALL;
//    if ( libcCallInsts.size() != 0 )
//        rustifyScore |= LIBCCALL;
//    if ( libraryCallInsts.size() != 0 )
//        rustifyScore |= LIBCALL;
//    if ( indCallInsts.size() != 0 )
//        rustifyScore |= INDCALL;
//}
//
//std::string FunctionCostAnalysis::toString(void) const{
//    std::string str = function->getName().str() + ":\n\t";
//    str += "hasStructArg: " + to_string(hasStructArg) + "\n\t";
//    str += "libcCallInsts.size(): " + to_string(libcCallInsts.size()) + "\n\t";
//    str += "libraryCallInsts.size(): " + to_string(libraryCallInsts.size()) + "\n\t";
//    str += "internalCallInsts.size(): " + to_string(internalCallInsts.size()) + "\n\t";
//    str += "indCallInsts.size(): " + to_string(indCallInsts.size()) + "\n";
//    //if ( configType == SCALAR ){
//    //    str += "type: Scalar, ";
//    //    str += "global var: " + getValueString(globalVar);
//    //}else if ( configType == STRUCTFIELD ){
//    //    str += "type: StructField, ";
//    //    str += "structType: " + getStructType()->getStructName().str() + ", ";
//    //    str += "fieldIndex: " + to_string(getStructField());
//    //}
//
//    return str;
//}


