#include "Graphs/SVFG.h"
#include "WPA/Andersen.h"
#include "SVF-FE/PAGBuilder.h"
#include "PreProcessor.h"
#include "RustifyUtils.h"

#ifndef ApiCostAnalysis_H_
#define ApiCostAnalysis_H_

namespace Rustify
{

/**
 * This class analyzes the cost at an entire API along
 * with its accessible functions
*/

class ApiCostAnalysis
{

public:
    /// Constructor
    /// The function passed should be an external library function (API)
    /// this class will analyze this single function
    ApiCostAnalysis(const llvm::Function* function_,
                std::unordered_map<const llvm::Function*, FunctionCostAnalysis*>& funcCostMap_,
                    PreProcessor* preProcessor_):
                          function(function_), 
                        funcCostMap(funcCostMap_),
                        preProcessor(preProcessor_) {
    }

    /// Destructor
    virtual ~ApiCostAnalysis()
    {
        destroy();
    }

    void destroy(){
        // TODO
    }

    bool operator==(const ApiCostAnalysis& other) const
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
        size_t operator()(const ApiCostAnalysis& funcCostAnalysis) const
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

    void extractReachableFuncs(std::unordered_set<llvm::Function*>&);

    static void extractExportedFuncs(std::set<std::string>& exportedFuncs) {
        assert(false && "extractExportedFuncs has not been implemented!");
    }

    void analyze(void);

    int getScore(void) {
        return rustifyScore;
    }

    int getCveCount(void) {
        return cveCount;
    }

    bool isComplex(void) {
        return isComplex_;
    }

private:

    /// the function which this cost analysis represents
    const llvm::Function* function = nullptr;

    /// preprocessor information
    PreProcessor* preProcessor = nullptr;

    /// we expect the costs of all functions to be passed to this API instance
    std::unordered_map<const llvm::Function*, FunctionCostAnalysis*>& funcCostMap;

    /// is this API or any of its reachable funcs complex?
    bool isComplex_ = false;

    /// keep score of rustifying this function
    int rustifyScore = 0;

    /// how many CVEs have been associated with this function in the past?
    int cveCount = 0;

};

}

#endif
