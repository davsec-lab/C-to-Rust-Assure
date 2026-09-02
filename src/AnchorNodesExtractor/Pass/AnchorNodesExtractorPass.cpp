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

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/InstIterator.h"

#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/InlineAsm.h"

#include <vector>
#include <string>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

using namespace llvm;


/**
 * Run as
 * opt -load-pass-plugin ./build/Pass/libAnchorNodesExtractorPass.so tests/test.ll -O0  -o o.ll
 */

namespace {

//	cl::opt<bool> SoftDirtyOnly ("soft-dirty-only", cl::desc("If true, memory accesses will not be redirected"), cl::init(true));

	struct AnchorNodesExtractor : PassInfoMixin<AnchorNodesExtractor> {
		PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
			for (Function& F: M.functions()) {
				// Dump the name of the function and its arguments
				for (Argument& arg: F.args()) {
					arg.setName(F.getName() + "__" + arg.getName());
				}
			}

			for (Function& F: M.functions()) {
				// Dump the name of the function and its arguments
				llvm::outs() << F.getName() << ", ";
				for (Argument& arg: F.args()) {
					llvm::outs() << arg.getName() << ", ";
				}
				llvm::outs() << "\n";
			}
			return PreservedAnalyses::none();
		}

	}; // end of struct
}  // end of anonymous namespace

/* New PM Registration */
llvm::PassPluginLibraryInfo getAnchorNodesExtractorPluginInfo() {
	return {LLVM_PLUGIN_API_VERSION, "ExtractAnchorNodes", LLVM_VERSION_STRING,
		[](PassBuilder &PB) {
			PB.registerOptimizerLastEPCallback (
					[](llvm::ModulePassManager &PM, OptimizationLevel Level) {
					PM.addPass(AnchorNodesExtractor());
					});
		}};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
	return getAnchorNodesExtractorPluginInfo();
}
