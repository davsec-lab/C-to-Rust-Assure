#include "llvm/Support/CommandLine.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Support/ErrorHandling.h"

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/InstIterator.h"

#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/InlineAsm.h"
#include <fstream>
#include <vector>
#include <string>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#include <iostream>
#include <cstdio>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>
#include <filesystem>
#include <sstream>
#include <filesystem>

using namespace llvm;

namespace {
class MyLoopAnalysisModulePM : public PassInfoMixin<MyLoopAnalysisModulePM> {
public:
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM) {
    FunctionAnalysisManager &FAM =
        MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

    for (Function &F : M) {
      if (F.isDeclaration())
        continue;

      errs() << "Function: " << F.getName() << "\n";

      LoopInfo &LI = FAM.getResult<LoopAnalysis>(F);

      for (Loop *L : LI) {
        analyzeLoop(L);
      }
    }

    return PreservedAnalyses::all();
  }

private:
  void analyzeLoop(Loop *L, unsigned depth = 0) {
    errs() << std::string(depth, ' ')
           << "Loop depth: " << L->getLoopDepth() << "\n";

    if (BasicBlock *Header = L->getHeader()) {
      errs() << std::string(depth, ' ')
             << "Loop header block: " << Header->getName() << "\n";
    }

    for (BasicBlock *BB : L->blocks()) {
      errs() << std::string(depth, ' ')
             << "Block in loop: " << BB->getName() << "\n";
    }

    for (Loop *SubLoop : L->getSubLoops()) {
      analyzeLoop(SubLoop, depth + 2);
    }
  }
};
} // end anonymous namespace

llvm::PassPluginLibraryInfo getSymbolizerPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "Symbolizer", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerOptimizerLastEPCallback(
                [](llvm::ModulePassManager &MPM, OptimizationLevel Level) {
                  MPM.addPass(MyLoopAnalysisModulePM());
                });
          }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getSymbolizerPluginInfo();
}
