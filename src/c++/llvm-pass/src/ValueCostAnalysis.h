#include "Graphs/SVFG.h"
#include "WPA/Andersen.h"
#include "SVF-FE/PAGBuilder.h"
#include "PreProcessor.h"
#include "RustifyUtils.h"

#ifndef ValueCostAnalysis_H_
#define ValueCostAnalysis_H_

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

class ValueCostAnalysis
{

public:
    /// Constructor
    ValueCostAnalysis(llvm::Value* value_,
                    llvm::Instruction* inst_,
                    llvm::Function* function_,
                    PreProcessor* preProcessor_):
                            value(value_),
                            inst(inst_),
                          function(function_), 
                        preProcessor(preProcessor_) {
    }

    /// Destructor
    virtual ~ValueCostAnalysis()
    {
        destroy();
    }

    void destroy(){
        // TODO
    }

    bool operator==(const ValueCostAnalysis& other) const
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
        size_t operator()(const ValueCostAnalysis& valueCostAnalysis) const
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

    void analyze(void);

    bool isAddrTaken(void);

    bool isAddrTaken(llvm::Value*);

    bool isGlobalVar(void);

private:

    /// the value which this cost analysis represents
    llvm::Value* value = nullptr;

    /// the instruction which this cost analysis represents
    llvm::Instruction* inst = nullptr;

    /// the function which this cost analysis represents
    llvm::Function* function = nullptr;

    /// preprocessor information
    PreProcessor* preProcessor = nullptr;

    bool isAddrTaken_ = false;

    bool isGlobalVar_ = false;

};

}

#endif
