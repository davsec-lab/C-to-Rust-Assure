#include <fstream>
#include <sstream>
#include <iostream>
#include <string>
#include "RustifyUtils.h"
#include "RustifyLog.h"

using namespace llvm;
using namespace SVF;
using namespace Rustify;


std::string Rustify::getValueString(Value *value) {
    //assert(value != nullptr && "getValueString on value is NULL!");
    std::string str;
    raw_string_ostream ostream(str);
    value->print(ostream);
    return ostream.str();
}

std::string Rustify::getTypeString(Type *type) {
    //assert(type != nullptr && "getTypeString on type is NULL!");
    std::string str;
    raw_string_ostream ostream(str);
    type->print(ostream);
    return ostream.str();
}

Function* Rustify::getParentFunc(CallInst* callInst) {
    return nullptr;
}

std::string Rustify::getParentFuncName(CallInst* callInst) {
    if ( !callInst->getParent() || !callInst->getParent()->getParent() )
        return "";
    if ( !callInst->getParent()->getParent()->hasName() )
        return "";
    return callInst->getParent()->getParent()->getName().str();
}

/**
 * getBaseType
 * @param(type): type we want to convert
 * @ret: type after resolving pointers
 * If a pointer is passed to this function it extract the type which
 * the pointer is supposed to point to
 *      example: struct a ***p
 *      p->getType() => pointer
 *      getBaseType(p) => struct a
*/
Type* Rustify::getBaseType(Type* type) {
    while (PointerType* pointerType = SVFUtil::dyn_cast<PointerType>(type)) {
        type = pointerType->getPointerElementType();
    }
    return type;
}

/**
 * cleanStructName
 * @param(structName): name to be cleaned (string)
 * @ret: returns cleaned name (string)
*/
std::string Rustify::cleanStructName(std::string structName) {
    size_t structDotCnt = std::count(structName.begin(), structName.end(), '.');
    if ( structDotCnt > 1 )     /// struct name: struct.name.234234 -> struct.name
        return structName.substr(0, structName.find_last_of("."));
    return structName;
}

/**
 * isStructType
 * @param(value): check if type of passed value is a struct type
 * @ret: boolean
*/
bool Rustify::isStructType(const Value* value) {
    return SVFUtil::isa<StructType>(getBaseType(value->getType()));
}

/**
 * isStructType
 * @param(value): check if type of passed value is a struct type
 * @ret: boolean
*/
bool Rustify::isStructType(Type* type) {
    return SVFUtil::isa<StructType>(getBaseType(type));
}

/**
 * getBaseStType
 * @param(stType): struct type we want to find equivalent for
 * @param(structEqMap): map which unifies struct names
 * @param(initialize): if true build structEqMap
 * @ret(StructType): returns base struct type after unifying name
*/
llvm::StructType* Rustify::getBaseStType(llvm::StructType* stType,
                std::map<std::string, llvm::StructType*>& structEqMap,
                bool initialize) {
    if ( !stType->hasName() )
        return stType;
    std::string stOrigName = stType->getName().str();
    if ( initialize || !structEqMap[stOrigName] ) {
        std::string stCleanName = cleanStructName(stOrigName);
        if ( stOrigName.compare(stCleanName) == 0 ) {
            structEqMap[stOrigName] = stType;
        } else {
            if ( structEqMap[stCleanName] )
                structEqMap[stOrigName] = structEqMap[stCleanName];
            else {
                structEqMap[stOrigName] = stType;
            }
        }
    }
    return structEqMap[stOrigName];
}

bool Rustify::isEqZeroCmp(CmpInst* cmpInst){
    Value *lhs = cmpInst->getOperand(0);
    Value *rhs = cmpInst->getOperand(1);
    Value *constantVal = NULL;
    //The last gep instruction might be cast to another type before reaching the cmp instruction
    //So we will just check which side of the comparison is a constant
    //We will consider that as the condition value
    if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_EQ ){
        if ( SVFUtil::isa<Constant>(lhs) && !SVFUtil::isa<Constant>(rhs) )
            constantVal = lhs;
        else if ( !SVFUtil::isa<Constant>(lhs) && SVFUtil::isa<Constant>(rhs) )
            constantVal = rhs;

        if ( constantVal ){
            llvm::Constant *constantInt = SVFUtil::dyn_cast<Constant>(constantVal);
            if ( constantInt->isZeroValue() )
                return true;
        }
    }
    return false;
}

bool Rustify::convertConstExprToStructField(TypeIntPair& structFieldPair,
                              llvm::ConstantExpr* constantExpr,
                              std::map<std::string, StructType*>& structEqMap){
    if ( constantExpr->getNumOperands() < 3 )
        return false;

    Value *constExprArg0Val = constantExpr->getOperand(0);
    Type *constExprArg0Type = getBaseType(constExprArg0Val->getType());

    if ( !constExprArg0Type->isStructTy() )
        return false;

    StructType* structType = 
                SVFUtil::dyn_cast<llvm::StructType>(constExprArg0Type);
    structType = getBaseStType(structType, structEqMap);
    Value *lastOperand;

    /// we're iterating to find the last operand (gep instructions 
    /// might have multiple indexes. we want the last one)
    for (User::op_iterator I = constantExpr->op_begin(), 
                           E = constantExpr->op_end(); 
                           I != E; ++I)
        lastOperand = (*I);

    if ( ConstantInt* CI = 
            SVFUtil::dyn_cast<llvm::ConstantInt>(lastOperand) ){
            /// We're assuming the index is a constant integer
        structFieldPair = std::make_pair(structType, CI->getSExtValue());
        return true;
    }else{
        //errs() << "WARNING: gep instruction found with last operand not integer!\n";
        structFieldPair = std::make_pair(structType, -1);
        return true;
    }
    return false;
}

bool Rustify::convertGepToStructField(TypeIntPair& structFieldPair,
                              GetElementPtrInst* gepInst,
                              std::map<std::string, StructType*>& structEqMap){
    Value *pointerOperandValue = gepInst->getPointerOperand();
    Type *pointerOperandType = getBaseType(pointerOperandValue->getType());

    if ( !pointerOperandType->isStructTy() )
        return false;

    StructType* structType = 
                SVFUtil::dyn_cast<llvm::StructType>(pointerOperandType);
    structType = getBaseStType(structType, structEqMap);
    Value *lastOperand;
        
    /// we're iterating to find the last operand (gep instructions 
    /// might have multiple indexes. we want the last one)
    for (User::op_iterator I = gepInst->idx_begin(), 
                           E = gepInst->idx_end(); 
                           I != E; ++I)
        lastOperand = (*I);

    if ( ConstantInt* CI = 
            SVFUtil::dyn_cast<llvm::ConstantInt>(lastOperand) ){
        structFieldPair = std::make_pair(structType, CI->getSExtValue());
        return true;
    }else{
        //errs() << "WARNING: gep instruction found with last operand not integer!\n";
        structFieldPair = std::make_pair(structType, -1);
        return true;
    }

    return false;
}

int Rustify::getCmpInstOperator(llvm::CmpInst *cmpInst){
    if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_EQ )
        return 1;
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_NE )
        return (1 << 1);
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_UGT )
        return (1 << 2);
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_UGE )
        return (1 << 3);
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_ULT )
        return (1 << 4);
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_ULE )
        return (1 << 5);
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_SGT )
        return (1 << 6);
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_SGE )
        return (1 << 7);
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_SLT )
        return (1 << 8);
    else if ( cmpInst->getPredicate() == CmpInst::Predicate::ICMP_SLE )
        return (1 << 9);
    //assert(false && 
    //        "Unsupported cmpInst has been passed to extract operator!");
    MyLogger(logWARNING) << "Unsupported cmpInst has been passed to extract operator,"
                          << " falling back to used-based cmp\n";
    return -1;
}

bool Rustify::isCharPtrType(Type *type) {
    if ( !SVFUtil::isa<PointerType>(type) )
        return false;
    return getBaseType(type)->isIntegerTy(CHARLEN);
}

bool Rustify::isVoidPtrType(Type *type) {
    if ( !SVFUtil::isa<PointerType>(type) )
        return false;
    return getBaseType(type)->isIntegerTy(PTRLEN);
}

bool Rustify::isIntType(Value *value){
    assert(value != nullptr &&
            "isIntType called for nullptr value!");
    return SVFUtil::isa<IntegerType>(value->getType());
}

bool Rustify::isCharType(Value *value){
    assert(value != nullptr &&
            "isCharType called for nullptr value!");
    Type *type = value->getType();
    return type->isIntegerTy(CHARLEN);
}

bool Rustify::isFloatType(Value *value)
{
    assert(value != nullptr &&
            "isFloatType called for nullptr value!");
    Type *type = value->getType();
    return type->isFloatTy();
}

bool Rustify::isDoubleType(Value *value)
{
    assert(value != nullptr &&
            "isDoubleType called for nullptr value!");
    Type *type = value->getType();
    return type->isDoubleTy();
}


bool Rustify::isNullPtr(Value *value){
    if ( !isConstant(value) )
        return false;
    Constant *constant = SVFUtil::dyn_cast<Constant>(value);
    return SVFUtil::isa<ConstantPointerNull>(constant) ||
            (constant->getType()->isPointerTy() && constant->isNullValue());
}

bool Rustify::isConstantInt(Value *value){
    if ( !isConstant(value) )
        return false;
    Constant *constant = SVFUtil::dyn_cast<Constant>(value);
    return SVFUtil::isa<ConstantInt>(constant);
}

int Rustify::getIntBitWidth(Value *value){
    assert( (isIntType(value) || isConstantInt(value)) && 
                "getIntBitWidth called for non-constant int value!");
    ConstantInt *constant = SVFUtil::dyn_cast<ConstantInt>(value);
    if ( constant )
        return getIntBitWidth(constant);
    else {
        IntegerType *intType = SVFUtil::dyn_cast<IntegerType>(value->getType());
        return intType->getBitWidth();
    }
}

int Rustify::getIntBitWidth(ConstantInt *constant){
    return constant->getBitWidth();
}

bool Rustify::isConstant(Value *value){
    return SVFUtil::isa<Constant>(value);
}

const SVFFunction* Rustify::findFunctionByName(SVFModule *svfModule, std::string funcName){
    for (SVFModule::iterator fit = svfModule->begin(), 
                             efit = svfModule->end();
                             fit != efit; ++fit) {
        const SVFFunction* fun = &(**fit);

        if ( fun->getName() == funcName )
            return fun;
    }
    return nullptr;
}

void Rustify::addListToSet(llvm::cl::list<std::string>& input, 
                       std::set<std::string>& output){
    for (llvm::cl::list<std::string>::iterator it = input.begin(),
                                               eit = input.end();
                                               it != eit; ++it )
        output.insert(*it);
}

void Rustify::addListToUnorderedSet(llvm::cl::list<std::string>& input, 
                       std::unordered_set<std::string>& output){
    for (llvm::cl::list<std::string>::iterator it = input.begin(),
                                               eit = input.end();
                                               it != eit; ++it )
        output.insert(*it);
}

void Rustify::populateStrSetFromFile(std::string filePath, 
                                 std::set<std::string>& fileStrs){
    std::fstream file;

    if ( filePath == "" )
        return;
    file.open(filePath, std::ios::in);
    if ( !file.is_open() )
        return;
    std::string inputLine;
    while ( getline(file, inputLine) )
        fileStrs.insert(inputLine);
}

llvm::StructType* Rustify::convertStructNameToType(Module *module,
                                               SVFModule *svfModule, 
                                               std::string structStr){
    for (SVFModule::global_iterator it = svfModule->global_begin(), 
                                    eit = svfModule->global_end(); 
                                    it != eit; ++it ){
        GlobalVariable* globalVar = *it;
        if ( !globalVar->getValueType()->isStructTy() )
            continue;
        StructType* structType = 
                    SVFUtil::dyn_cast<StructType>(globalVar->getValueType());
        std::string structName = 
                    cleanStructName(structType->getStructName().str());
        if ( structName == structStr )
            return structType;
    }

    for (auto *structType : module->getIdentifiedStructTypes() ){
        std::string structName = 
                    cleanStructName(structType->getStructName().str());
        if ( structName == structStr )
            return structType;
    }

    return nullptr;
}

void Rustify::convertStructNamesToType(Module *module,
                                SVFModule *svfModule,
                                std::set<std::string>& structStrs,
                                std::unordered_set<llvm::StructType*>& structTypes){
    for ( std::set<std::string>::iterator it = structStrs.begin(),
                                          eit = structStrs.end();
                                          it != eit; ++it ){
        StructType *structType = convertStructNameToType(module, svfModule, *it);
        if ( !structType )
            continue;
        MyLogger(logDEBUG) << "converting struct name: " << (*it)
                            << " to struct type\n";
        structTypes.insert(structType);
    }
}

void Rustify::printStructTypeSet(std::set<StructType*>& structTypeSet){
    MyLogger(logDEBUG) << "Printing struct type set:\n";
    for ( std::set<StructType*>::iterator it = structTypeSet.begin(),
                                          eit = structTypeSet.end();
                                          it != eit; ++it)
        MyLogger(logDEBUG) << getTypeString(*it) << "\n";
}

void Rustify::printStructTypeUnorderedSet(std::unordered_set<StructType*>& structTypeSet){
    MyLogger(logDEBUG) << "Printing struct type set:\n";
    for ( std::unordered_set<StructType*>::iterator it = structTypeSet.begin(),
                                          eit = structTypeSet.end();
                                          it != eit; ++it)
        MyLogger(logDEBUG) << getTypeString(*it) << "\n";
}

void Rustify::printGlobalVarSet(std::set<GlobalVariable*>& globalVarSet){
    MyLogger(logDEBUG) << "Printing global var set:\n";
    for ( std::set<GlobalVariable*>::iterator it = globalVarSet.begin(),
                                          eit = globalVarSet.end();
                                          it != eit; ++it)
        MyLogger(logDEBUG) << getValueString(*it) << "\n";
}

void Rustify::convertFuncNamesToFuncPtrs(SVFModule *svfModule,
                                     llvm::cl::list<std::string>& funcNames,
                                     std::set<Function*>& funcSet){
    for (llvm::cl::list<std::string>::iterator it = funcNames.begin(),
                                               eit = funcNames.end();
                                               it != eit; ++it ){
        const SVFFunction *svfFunc = findFunctionByName(svfModule, *it);
        if ( !svfFunc ){
            MyLogger(logWARNING) << "function ptr not found for: "
                                  << *it << "\n";
            continue;
        }
        funcSet.insert(svfFunc->getLLVMFun());
    }
}

Instruction* Rustify::extractFirstInstruction(Function *func){
    inst_iterator inst = inst_begin(func);
    return &(*inst);
}

StructType* Rustify::getStructType(GlobalVariable *globalVar,
                 std::map<std::string, llvm::StructType*>& structEqMap){
    if ( !isStructType(globalVar) )
        return nullptr;
    StructType *stType = SVFUtil::dyn_cast<StructType>(
                                    getBaseType(globalVar->getType()));
    return getBaseStType(stType, structEqMap);
}

void Rustify::splitAggregate(GlobalVariable *globalVar,
                         std::set<Value*>& values){
    if ( !globalVar->hasInitializer() )
        return;
    Constant *constant = globalVar->getInitializer();
    int i = 0;
    Constant *aggregateElem;
    do {
        aggregateElem = constant->getAggregateElement(i++);
        if ( aggregateElem != nullptr )
            values.insert(aggregateElem->stripPointerCasts());
    } while(aggregateElem != nullptr);
    
}

Function* Rustify::getDirectCallee(CallInst *callInst){
    assert( !callInst->isIndirectCall() && "getCallee called on indirect callsite");
    Function* callee = nullptr;
    if ( callInst->getCalledFunction() && 
            callInst->getCalledFunction()->hasName() )
        callee = callInst->getCalledFunction();   
    else if ( callInst->getCalledOperand() ){     
        /// for cases where the operand is a bitcast 
        Value* value = callInst->getCalledOperand()->stripPointerCasts();
        if ( value ) 
            callee = SVFUtil::dyn_cast<Function>(value);
    }
    return callee;
}

bool Rustify::isLoadFromGlobal(Value* loadInstVal, Value* globalVar){
    if ( !SVFUtil::isa<LoadInst>(loadInstVal) )
        return false;
    LoadInst *loadInst = SVFUtil::dyn_cast<LoadInst>(loadInstVal);
    if ( loadInst->getPointerOperand() == globalVar )
        return true;
    return false;
}

bool Rustify::isUnionAnon(Value* value){
    if ( !value )
        return false;
    if ( !value->getType()->isStructTy() )
        return false;
    if ( value->getType()->getStructName() == "union.anon" )
        return true;
    return false;
}

void Rustify::addToStructSet(StructType* stType, std::unordered_set<StructType*>& dst,
                            std::unordered_set<StructType*>& exceptList) {
    if ( exceptList.find(stType) != exceptList.end() )
        return;
    dst.insert(stType);
    return;
}


/**
 * checks if passed string matches pattern in set

 * if pattern set is empty it matches!!!
*/
bool Rustify::matchWithWildcards(std::string input, 
                std::unordered_set<std::string>& patternSet, 
                bool match) {
    if ( patternSet.size() == 0 )
        return true;
    std::string wildcard = "*";
    for ( auto pattern : patternSet ) {
        if ( pattern == "" && match )
            return true;
        if ( pattern == "" && !match )
            continue;
        if ( hasEnding(pattern, wildcard) &&        /// check if string starts with pattern
                hasBeginning(input, pattern.substr(0, pattern.size()-1)) ) 
            return match;
        else if ( hasBeginning(pattern, wildcard) && /// check if string ends with pattern
                hasEnding(input, pattern.substr(1, pattern.size())) ) 
            return match;
    }
    return true^match;
}

/// from stack overflow
bool Rustify::hasEnding (std::string const &fullString, std::string const &ending) {
    if (fullString.length() >= ending.length()) {
        return (0 == fullString.compare (fullString.length() - ending.length(), ending.length(), ending));
    } else {
        return false;
    }
}

/// from stack overflow
bool Rustify::hasBeginning (std::string const &fullString, std::string const &beginning) {
    if (fullString.length() >= beginning.length()) {
        return (0 == fullString.compare (0, beginning.length(), beginning));
    } else {
        return false;
    }
}

void Rustify::splitString(std::string input, std::vector<std::string>& output, char delim) {
    std::stringstream ss(input);
 
    while (ss.good()) {
        std::string substr;
        getline(ss, substr, delim);
        output.push_back(substr);
    }
}

int Rustify::getGepIndex(GetElementPtrInst *gepInst) {
    int gepIndex = -1;
    int index = 0;
    for ( GetElementPtrInst::const_op_iterator 
                        it = gepInst->idx_begin(), 
                        eit = gepInst->idx_end(); 
                        it != eit; ++it ){
        ConstantInt const* lastElement = SVFUtil::dyn_cast<ConstantInt>(it);
        if ( lastElement && index == 1 )
            gepIndex = lastElement->getSExtValue();
        index++;
    }
    return gepIndex;
}

bool Rustify::isRecursiveStruct(StructType *stType) {
    for ( auto innerElemType : stType->elements() ) {
        Type *baseType = getBaseType(innerElemType);
        if ( !SVFUtil::isa<StructType>(baseType) )
            continue;
        StructType *baseStType = SVFUtil::dyn_cast<StructType>(baseType);
        if ( baseStType == stType )
            return true;
    }
    return false;
}

bool Rustify::hasNestedStructPtr(StructType *stType, 
                    std::unordered_set<StructType*>& nestedStTypes) {
    for ( auto innerElemType : stType->elements() ) {
        if ( !SVFUtil::isa<PointerType>(innerElemType) )    /// only care about ptrs to other struct types
            continue;
        Type *baseType = getBaseType(innerElemType);
        if ( !SVFUtil::isa<StructType>(baseType) )      /// not struct type? -> continue
            continue;
        StructType *baseStType = SVFUtil::dyn_cast<StructType>(baseType);
        if ( baseStType != stType )      /// looking for different nested struct types other than 
            nestedStTypes.insert(baseStType);
    }
    return nestedStTypes.size() != 0;
}

bool Rustify::isUnion(Type *type) {
    type = getBaseType(type);
    StructType *stType = SVFUtil::dyn_cast<StructType>(type);
    if ( !stType )
        return false;
    std::string stOrigName = stType->getName().str();
    std::string stCleanName = cleanStructName(stOrigName);
    return stCleanName == "union.anon";
}

void Rustify::writeFuncNamesToFile(std::string path, std::set<const Function*>& funcs) {
    std::ofstream myfile;
    myfile.open(path);
    for ( auto func : funcs ) {
        myfile << func->getName().str() << "\n";
    }
    myfile.close();
}

int Rustify::isStructSimple(StructType* stType)
{
    int out = t_simple;

    for ( auto innerElemType : stType->elements())
    {
        if (SVFUtil::isa<PointerType>(innerElemType))
        {
            if (SVFUtil::isa<StructType>(innerElemType->getPointerElementType()))
            {
                if (SVFUtil::dyn_cast<StructType>(getBaseType(innerElemType)) != stType)
		        {
		        	int result = isStructSimple(SVFUtil::dyn_cast<StructType>(getBaseType(innerElemType)));
		        	if (result > out)
		        	{
		        	    out = result;
		        	}
		        	if (t_hasptr > out)
		        	{
		        	    out = t_hasptr;
		        	}
		        }
            }
	        else
    	    {
	        	return t_complicated;
    	    }
        }
        else if (SVFUtil::isa<StructType>(innerElemType))
        {
            int result = isStructSimple(SVFUtil::dyn_cast<StructType>(getBaseType(innerElemType)));
	        if (result > out)
    	    {
	        	out = result;
    	    }
        }
    }
    return out;
}
