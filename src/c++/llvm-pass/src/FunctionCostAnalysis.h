#include "Graphs/SVFG.h"
#include "WPA/Andersen.h"
#include "SVF-FE/PAGBuilder.h"
#include "PreProcessor.h"
#include "RustifyUtils.h"
#include "ValueCostAnalysis.h"

#ifndef FunctionCostAnalysis_H_
#define FunctionCostAnalysis_H_

namespace Rustify
{

/**
 * We will use this class for any configuration variable
 * a variable can be a global scalar variable or a complex
 * struct-field 
*/

extern int INDCALL;
extern int INTCALL;
extern int LIBCCALL;
extern int LIBCALL;
extern int STRUCT;

class FunctionCostAnalysis
{

public:
    /// Constructor
    FunctionCostAnalysis(llvm::Function* function_,
                    PreProcessor* preProcessor_):
                          function(function_), 
                        preProcessor(preProcessor_) {
    }

    /// Destructor
    virtual ~FunctionCostAnalysis()
    {
        destroy();
    }

    void destroy(){
        // TODO
    }

    bool operator==(const FunctionCostAnalysis& other) const
    {
        assert(false && "TODO implement equality");
    //    // TODO are we comparing the right things?
    //    if ( this->globalVar == nullptr && 
    //            other.globalVar != nullptr )
    //        return false;
    //    else if ( this->globalVar != nullptr && 
    //            other.globalVar == nullptr )
    //        return false;
    //    else if ( this->globalVar != nullptr &&
    //            other.globalVar != nullptr ){
    //        /// both are of global scalar variable type
    //        return this->globalVar == other.globalVar;
    //    }else {
    //        /// both are of struct-field type
    //        return this->structFieldPair.first == other.structFieldPair.first && 
    //                this->structFieldPair.second == other.structFieldPair.second;
    //    }
    //    //if ( *(this->globalVar) == *(otherConfigVariable.globalVariable) )
    //    //TODO
//  //  if (this->row == otherPos.row && this->col == otherPos.col) return true;
//  //  else return false;
        return false;
    }

    struct HashFunction
    {
        size_t operator()(const FunctionCostAnalysis& funcCostAnalysis) const
        {
            size_t hashVal = 0;
            assert(false && "TODO implement hash function");
            //if ( configVariable.globalVar != nullptr ) {
            //    hashVal += std::hash<llvm::GlobalVariable*>()(
            //                        configVariable.globalVar);
            //} else {
            //    hashVal = std::hash<llvm::Type*>()((llvm::Type*)
            //                        configVariable.structFieldPair.first)
            //              ^ (std::hash<int>()(configVariable.structFieldPair.second) << 1);
            //}
            return hashVal;
        }
    };

    std::string toString(void) const;

    bool hasIndCall(void) const {
        return indCallInsts.size() != 0;
    }

    void analyze(std::unordered_set<llvm::Function*>&);

    void analyzeInst(llvm::Instruction*, std::unordered_set<llvm::Function*>&);

    void getInstValues(llvm::Instruction*, std::unordered_set<llvm::Value*>&);

    void analyzeCall(llvm::CallInst*, std::unordered_set<llvm::Function*>&);

    void analyzeArgs(void);

    void calculateScore(void);

    void findReadAndWrites(llvm::Argument*);

    llvm::Value* findInitialArgOnStack(llvm::Argument*, std::vector<llvm::Value*>&);

    llvm::Value* findArgOnStack(llvm::Value*, llvm::CallInst*, std::vector<llvm::Value*>&);

    TypeIntPair getTupleFromGep(llvm::GetElementPtrInst*);

    void analyzePtrArith(llvm::Instruction*);

    void analyzeGepInst(llvm::GetElementPtrInst*);

    void addAddrTakenValue(llvm::Value*, llvm::Value*);

    int getScore(void) {
        return rustifyScore;
    }

    int getCveCount(void) {
        return cveCount;
    }

    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& getMutableStFields(void) {
        return stFieldMutFuncs;
    }

    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& getUsedStFields(void) {
        return stFieldUsedFuncs;
    }

    std::map<TypeIntPair, std::unordered_set<llvm::Function*>>& getIndCallStFields(void) {
        return stFieldToIndCall;
    }

    std::map<llvm::StructType*, std::unordered_set<llvm::Function*>>& getIndCallStructs(void) {
        return stToIndCall;
    }

    std::unordered_set<llvm::Function*>& getFuncsWithMutStructs(void) {
        return mutStFuncs;
    }

    std::unordered_set<llvm::Function*>& getFuncsWithStructs(void) {
        return useStFuncs;
    }

    std::unordered_set<llvm::Type*>& getArgTypes(void) {
        return argTypes;
    }

    ValueCostAnalysis* getValue(llvm::Value*, llvm::Instruction*);

    llvm::StringRef getFuncName(void) {
        return function->getName();
    }

    bool isComplex(void) {
        return isComplex_;
    }

    bool isStringRelated(void) {
        return isStringRelated_;
    }

    std::unordered_set<llvm::Function*>& getReachableFuncs(void) {
        return reachableFuncs;
    }

    bool hasCollectionStruct(void) {
        return hasCollectionStruct_;
    }

    bool hasUnion(void) {
        return hasUnion_;
    }

private:

    /// the function which this cost analysis represents
    llvm::Function* function = nullptr;

    /// preprocessor information
    PreProcessor* preProcessor = nullptr;

    /// passing struct types or pointers to struct types complicates its conversion to Rust
    bool hasStructArg = false;

    /// keep all indirect call instructions of this function in this set
    std::unordered_set<llvm::CallInst*> indCallInsts;
    
    /// keep all direct call instructions which call a function of the same module (not library call)
    std::unordered_set<llvm::CallInst*> internalCallInsts;
    
    /// keep all direct call instructions which call library function (except libc)
    std::unordered_set<llvm::CallInst*> libraryCallInsts;
    
    /// keep all direct call instructions which call libc function
    std::unordered_set<llvm::CallInst*> libcCallInsts;

    /// keep arg type in map (struct or not)
    std::unordered_map<llvm::Argument*, bool> argIsStType;

    /// keep arg types in set
    std::unordered_set<llvm::Type*> argTypes;

    /// set of struct type and field tuples which must be mutable (written to) in this function
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldMutFuncs;

    /// set of struct type and field tuples which are used in this function
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldUsedFuncs;

    /// set of struct type and field tuples which are passed to indirect call sites in a function
    std::map<TypeIntPair, std::unordered_set<llvm::Function*>> stFieldToIndCall;

    /// struct type which are passed to indirect call sites in a function
    std::map<llvm::StructType*, std::unordered_set<llvm::Function*>> stToIndCall;

    /// all functions which need mutable access to a struct
    std::unordered_set<llvm::Function*> mutStFuncs;

    /// all functions which need access to a struct
    std::unordered_set<llvm::Function*> useStFuncs;

    /// we bind each llvm::Value to a Rustify::ValueCostAnalysis object
    std::unordered_map<llvm::Value*, ValueCostAnalysis*> valueCosts;

    /// store all reachable functions from a specific source
    std::unordered_set<llvm::Function*> reachableFuncs;

    /// keep score of rustifying this function
    int rustifyScore = 0;

    /// instead of score should we switch to simple/complex? score seems arbitrary
    bool isComplex_ = false;

    /// special cases: functions modifies collection objects implemented by the target itself (list, vector, ...)
    bool isCollectionRelated = false;

    /// special cases: does string operations
    bool isStringRelated_ = false;
    bool hasCharPtrArg = false;

    /// has address taken variable, either passes to another function, returns addr or just stores in ptr
    /// this makes the analysis complex because we must assume when the addr is taken it becomes
    /// a mutable borrow which will restrict the rest of the code
    bool hasAddrTaken = false;

    /// has void* passed to it
    /// void* is typically used as a means of doing polymorphism, it needs a more
    /// in-depth analysis to identify its patterns and for now we will consider these cases as complex
    bool hasVoidPtrArg = false;

    /// accessing global variables is an unsafe procedure
    /// for now if a global variable is accessed in a function we will consider it as complex
    /// we will refine our analysis by considering places where a global variable is modified
    /// and see if it can be converted to a local variable passed through function arguments
    bool hasGlobalVar = false;

    /// we try to identify whether a function modifies a customized recursive struct type
    /// these struct types should have a ptr to its own type, which shows it is used
    /// to store a list, vector or ...
    bool hasCollectionStruct_ = false;

    /// if a struct type has a ptr to another struct type, AND
    /// that nested struct type is passed as a function argument,
    /// it could potentially need multiple owners and require lifetime parameters
    bool hasMultiOwnerStruct_ = false;

    /// currently, unions cannot be handled by safe Rust
    bool hasUnion_ = false;

    /// how many CVEs have been associated with this function in the past?
    int cveCount = 0;

    /// Dylan - Does this function have a non-simple type?
    bool hasNonSimpleType = false;

    /// Dylan - Does this function not call any other functions?
    bool isLeaf;

    //Dylan - how complex is the most complex struct?
    int structComplexityMax = 0;

    //Dylan - has a double pointer
    bool hasDoublePointer = false;

    //Dylan - has a pointer not pointing to a struct
    bool hasNonSimplePointer = false;
};

}

#endif
