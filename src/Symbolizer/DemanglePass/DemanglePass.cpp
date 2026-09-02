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

// Function to execute rustfilt and capture the output
std::string exec_rustfilt(const std::string& mangled) {
	// Build the shell command
	// Using single quotes around 'mangled' to help protect special chars.
	// If you expect user input (and want to avoid shell injection),
	// additional sanitization/escaping is strongly advised.
	std::string command = "echo '" + mangled + "' | rustfilt";

	// Prepare a buffer and a string to capture output
	std::array<char, 128> buffer{};
	std::string result;

	// Use a unique_ptr to ensure the pipe is closed automatically
	std::unique_ptr<FILE, decltype(&pclose)> pipe(popen(command.c_str(), "r"), pclose);

	// Read the output line by line into result
	while (fgets(buffer.data(), static_cast<int>(buffer.size()), pipe.get()) != nullptr) {
		result += buffer.data();
	}

	// Strip trailing newline if present
	if (!result.empty() && result.back() == '\n') {
		result.pop_back();
	}

	return result;
}


/**
 * Run as
 * opt -load-pass-plugin ./build/Pass/SymbolizerPass.so tests/test.ll -O0  -o o.ll
 */

namespace {


	struct Symbolizer : PassInfoMixin<Symbolizer> {

		void convert_function_name(Module &M) {
			for (Function &F : M) {
				StringRef oldName = F.getName();
				std::string newName = exec_rustfilt(oldName.str());
				F.setName(newName);
			}
		}



		PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
			convert_function_name(M);
			return PreservedAnalyses::none();
		}

	}; // end of struct
}  // end of anonymous namespace

/* New PM Registration */
llvm::PassPluginLibraryInfo getSymbolizerPluginInfo() {
	return {LLVM_PLUGIN_API_VERSION, "Symbolizer", LLVM_VERSION_STRING,
		[](PassBuilder &PB) {
			PB.registerOptimizerLastEPCallback (
					[](llvm::ModulePassManager &PM, OptimizationLevel Level) {
					PM.addPass(Symbolizer());
					});
		}};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
	return getSymbolizerPluginInfo();
}
