#include "llvm/Support/CommandLine.h"
#include "llvm/Pass.h"
#include <regex>
#include <limits>
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/IR/InstIterator.h"

#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
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
#include <array>
#include <filesystem>
#include <sstream>
#include <map>
#include <tuple>
#include <set>
#include <system_error>
#include "llvm/Support/FileSystem.h"
#include <nlohmann/json.hpp>

using namespace llvm;

using json = nlohmann::json;

static bool is_rust;

void strip_new_line(std::string& str) {
	if (!str.empty() && str.back() == '\n') {
		str.erase(str.length() - 1);
	}
}

static inline std::string trim(const std::string &s) {
	auto start = s.find_first_not_of(" \t\n\r");
	if (start == std::string::npos) return "";
	auto end = s.find_last_not_of(" \t\n\r");
	return s.substr(start, end - start + 1);
}

bool startsWith(const std::string& str, const std::string& prefix) {
	return str.compare(0, prefix.size(), prefix) == 0;
}

int editDistance(const std::string &s1, const std::string &s2) {
    const size_t len1 = s1.size(), len2 = s2.size();
    std::vector<std::vector<int>> dp(len1 + 1, std::vector<int>(len2 + 1));
    for (size_t i = 0; i <= len1; i++) {
        dp[i][0] = i;
    }
    for (size_t j = 0; j <= len2; j++) {
        dp[0][j] = j;
    }
    for (size_t i = 1; i <= len1; i++) {
        for (size_t j = 1; j <= len2; j++) {
            dp[i][j] = std::min({ dp[i - 1][j] + 1,
                                  dp[i][j - 1] + 1,
                                  dp[i - 1][j - 1] + (s1[i - 1] == s2[j - 1] ? 0 : 1) });
        }
    }
    return dp[len1][len2];
}

// Function to split a string by "::"
std::vector<std::string> splitString(const std::string& str, const std::string& delimiter) {
	std::vector<std::string> tokens;
	size_t start = 0;
	size_t end = str.find(delimiter);

	while (end != std::string::npos) {
		tokens.push_back(str.substr(start, end - start));
		start = end + delimiter.length();
		end = str.find(delimiter, start);
	}
	tokens.push_back(str.substr(start));

	return tokens;
}

static bool doesPointerEventuallyStore(Value *Ptr) {
	SmallVector<Value *, 8> WorkList{Ptr};
	SmallPtrSet<Value *, 8> Visited;

	while (!WorkList.empty()) {
		Value *V = WorkList.pop_back_val();
		if (!Visited.insert(V).second)
			continue;

		for (User *U : V->users()) {
			// llvm::errs() << "U: " << *V << '\n';
			// llvm::errs() << "V: " << *U << '\n';
			if (auto *SI = dyn_cast<StoreInst>(U)) {
				if (SI->getPointerOperand() == V) return true;
			} else if (auto *RMW = dyn_cast<AtomicRMWInst>(U)) {
				if (RMW->getPointerOperand() == V) return true;
			} else if (auto *CX = dyn_cast<AtomicCmpXchgInst>(U)) {
				if (CX->getPointerOperand() == V) return true;
			} else if (auto *MI = dyn_cast<MemIntrinsic>(U)) {
				if (MI->getDest() == V) return true;
			}

			if (isa<GetElementPtrInst>(U) ||
				isa<BitCastInst>(U)      ||
				isa<AddrSpaceCastInst>(U)) {
				WorkList.push_back(U);
				}
		}
	}
	return false;
}


static bool pointsToField(Value *Ptr,
						   StructType *TargetTy,
						   unsigned FieldIdx,
						   const DataLayout &DL) {

	APInt Offset(DL.getIndexTypeSizeInBits(Ptr->getType()), 0);
	Value *Base = Ptr->stripAndAccumulateConstantOffsets(DL, Offset, false);

	if (!Base) return false;

	Type *BaseTy = Base->getType()->getPointerElementType();
	if (BaseTy != TargetTy) return false;

	const StructLayout *SL = DL.getStructLayout(TargetTy);

	uint64_t Off = Offset.getZExtValue();
	if (Off >= SL->getSizeInBytes()) return false;

	unsigned HitIdx = SL->getElementContainingOffset(Off);
	return HitIdx == FieldIdx;
}

std::set<std::string> tokenizeByUnderscore(const std::string& str) {
	std::set<std::string> result;
	std::stringstream ss(str);
	std::string token;

	std::string lowerStr;
	lowerStr.reserve(str.size());
	std::transform(str.begin(), str.end(), std::back_inserter(lowerStr),
				   [](unsigned char c) { return static_cast<char>(std::tolower(c)); });

	for (char& c : lowerStr) {
		if (c == '_') {
			c = ' ';
		}
	}
	ss.str(lowerStr);
	while (ss >> token) {
		result.insert(token);
	}
	return result;
}


bool compareStrings(const std::string& filenameWithoutExt, const std::string& functionName) {

	auto normalize = [](const std::string& s) {
		std::string result;
		result.reserve(s.size());
		for (char c : s) {
			if (c != '_') {
				result.push_back(static_cast<char>(std::tolower(static_cast<unsigned char>(c))));
			}
		}
		return result;
	};

	std::string normStr1 = normalize(filenameWithoutExt);
	std::string normStr2 = normalize(functionName);

	if (normStr1 == normStr2) {
		return true;
	}

	std::set<std::string> fileTokens = tokenizeByUnderscore(filenameWithoutExt);

	std::set<std::string> funcTokens = tokenizeByUnderscore(functionName);

	for (const auto& token : funcTokens) {
		if (fileTokens.find(token) == fileTokens.end()) {
			return false;
		}
	}

	return true;
}

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
		json json_map;
		// Set while descending into the data pointer of a Rust fat pointer `{ T*, i64 }`,
		// so the dump can require a non-zero length before reading through it (see the
		// slice_len_hint use in print_nested_klee_exprs).
		Value *slice_len_hint = nullptr;
		json struct_map;
		Function *malloc_function;
		std::map<std::string, llvm::Value*> struct_field_map;
		std::map<int, std::string> argumentsMap;
		std::unordered_set<StructType*> visited_structs;
		std::list<std::string> keep_list = {
			"strcpy",
			"__strcpy_chk",
			"malloc",
			"strlen",
			"memcmp"
		};
		std::list<std::string> skip_symbolized_struct = {
			"alloc::string::String",
		};

		Function *global_target_function;
		std::queue<Value*> worklist;

		// 2026-09-15: the post-call dump finds the buffer behind a leaf pointer
		// field (char*, void*, int* ... inside a struct) by the field's PATH,
		// not by its position in `worklist`.
		//
		// `worklist` is a FIFO: initialize_inner_pointer pushes one buffer per
		// leaf pointer it allocates, print_nested_klee_exprs pops one per leaf
		// pointer field it prints, and the two are paired only by count. The
		// two walks do not visit the same fields: init stops at the recursion
		// boundary (visited_structs) and pushes nothing there, the Rust dump
		// walks into that node and pops there, and the C dump pops once for
		// every pruned pointer field (isFieldUnused) whether or not init ever
		// pushed for it. Measured 2026-09-15 (tmp/sync-ab/queue-trace.txt):
		// Rust labels in cJSON_Delete, add_item_to_object and jrsl_search read
		// another field's, or another argument's, buffer.
		//
		// leaf_buffers maps "arg_value_0.field_4.field_1" (the same string
		// klee_make_symbolic is given) to the buffer init allocated for it.
		// The dump builds the same path alongside its label and looks it up;
		// a miss falls through to the runtime read that an empty queue already
		// fell through to. Pruning no longer pops. ASSURE_LEAF_LOOKUP=0
		// restores the positional queue for A/B.
		std::map<std::string, Value*> leaf_buffers;
		// Paths of the nodes initialize_inner_objects stopped at (the recursion
		// boundary, visited_structs): their pointer fields were never bound, so a
		// lookup miss under one of them means "unbound", not "read at runtime".
		std::set<std::string> boundary_nodes;

		bool under_boundary(const std::string &path) {
			for (const auto &b : boundary_nodes) {
				if (path == b || path.compare(0, b.size() + 1, b + ".") == 0) {
					return true;
				}
			}
			return false;
		}

		static bool leaf_lookup_enabled() {
			const char *v = std::getenv("ASSURE_LEAF_LOOKUP");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		// The buffer init recorded for a leaf pointer field, or nullptr. With the
		// lookup off this is the old queue pop, so the two mechanisms are never
		// mixed inside one harness.
		Value* take_leaf_buffer(const std::string &path) {
			if (leaf_lookup_enabled()) {
				auto it = leaf_buffers.find(path);
				if (it == leaf_buffers.end()) {
					errs() << "[leafbuf] miss " << path << "\n";
					return nullptr;
				}
				errs() << "[leafbuf] hit " << path << "\n";
				return it->second;
			}
			if (worklist.empty()) {
				return nullptr;
			}
			Value *cur = worklist.front();
			worklist.pop();
			return cur;
		}

		// A struct the harness must treat as an opaque system object: never
		// initialise its fields, never klee_make_symbolic it, never read it
		// back after the call. Matches by name for C (`struct._IO_FILE`, with
		// or without LLVM's `.N` suffix) and Rust (`libc::unix::FILE`, or any
		// `...::FILE`), and by shape for Rust extern-type placeholders such as
		// `%"libc::unix::FILE" = type { [0 x i8] }`, whose alloc size is 0.
		bool is_system_struct(Module &M, Type *type) {
			StructType *st = dyn_cast_or_null<StructType>(type);
			if (!st) return false;
			if (!st->isLiteral()) {
				StringRef n = st->getName();
				if (n == "struct._IO_FILE" || n.startswith("struct._IO_FILE.")) return true;
				if (n == "libc::unix::FILE" || n.endswith("::FILE")) return true;
			}
			if (!st->isOpaque() && st->isSized() &&
			    M.getDataLayout().getTypeAllocSize(st) == 0) return true;
			return false;
		}

		// Give a system struct the same 2-byte placeholder body the opaque
		// branch already uses, so both sides hand the callee a non-empty object.
		bool DL_alloc_size_is_zero(Module &M, StructType *st) {
			return st->isSized() && M.getDataLayout().getTypeAllocSize(st) == 0;
		}

		Type* system_struct_placeholder(Module &M) {
			return ArrayType::get(Type::getInt8Ty(M.getContext()), 2);
		}
		std::string map_key(const std::string &name, const std::string &index) {
			return name + "_" + index;
		}

		bool isFieldUnused(StructType *StructTy, unsigned FieldIdx, Module &M) {
			// for Rust, we consider they are all used.
			if (is_rust) {
				return false;
			}
			bool seenWrite = false;
			const DataLayout &DL = M.getDataLayout();
			auto hitsFieldWrite = [&](Value *Dest, Instruction &I) {
				if (pointsToField(Dest, StructTy, FieldIdx, DL)) {
					seenWrite = true;
					// errs() << "[Field-write] " << StructTy->getName() << '.'
					// 	   << FieldIdx << " ← " << I << '\n';
				}
			};
		
			for (Instruction &I : instructions(*global_target_function)) {
				if (auto *SI = dyn_cast<StoreInst>(&I))
					hitsFieldWrite(SI->getPointerOperand(), I);
				else if (auto *RMW = dyn_cast<AtomicRMWInst>(&I))
					hitsFieldWrite(RMW->getPointerOperand(), I);
				else if (auto *CX = dyn_cast<AtomicCmpXchgInst>(&I))
					hitsFieldWrite(CX->getPointerOperand(), I);
				else if (auto *MI = dyn_cast<MemIntrinsic>(&I))
					hitsFieldWrite(MI->getDest(), I);
				else if (auto *LI = dyn_cast<LoadInst>(&I)) {
					//for load, we need to confirm that it has been changed
					if (pointsToField(LI->getPointerOperand(), StructTy, FieldIdx, DL) &&
						doesPointerEventuallyStore(LI))
						seenWrite = true;
				}
				if (seenWrite) {
					return false;
				}
			}

			return !seenWrite;
		}

		void create_function(Module& M, Type* return_type, Function* function) {
			LLVMContext& ctx = M.getContext();
			BasicBlock *functionBB = BasicBlock::Create(ctx, "EntryBB", function);
			IRBuilder<> builder(functionBB);
			if (return_type->isVoidTy()) {
				builder.CreateRetVoid();
			} else if (return_type->isIntegerTy()) {
				Value *retVal = ConstantInt::get(return_type, 0);
				builder.CreateRet(retVal);
			} else if (return_type->isFloatingPointTy()) {
				Value *retVal = ConstantFP::get(return_type, 0.0);
				builder.CreateRet(retVal);
			} else if (return_type->isPointerTy()) {
				Value *retVal = ConstantPointerNull::get(cast<PointerType>(return_type));
				builder.CreateRet(retVal);
			}
		}

		void remove_unneeded_functions(Module& M) {
			Function* main_function = M.getFunction("main");
			if (main_function) {
				main_function->eraseFromParent();
			}
		}

		void mark_symbolic(Module& M, Type *type, Value* value, IRBuilder<>& Builder, std::string &argument_name) {
			std::string struct_name = "";
			if (PointerType *pointer_type = dyn_cast<PointerType>(value->getType())) {
				if (PointerType *inner_pointer_type = dyn_cast<PointerType>(pointer_type->getPointerElementType())) {
					if (StructType *struct_type = dyn_cast<StructType>(inner_pointer_type->getPointerElementType())) {
						if (!struct_type->isLiteral()) {
							struct_name = struct_type->getName().str();
						}
					}
				} else if (StructType *struct_type = dyn_cast<StructType>(pointer_type->getPointerElementType())) {
					if (!struct_type->isLiteral()) {
						struct_name = struct_type->getName().str();
					}
				}
			}
			if (isa<PointerType>(type)) {
				argument_name = argument_name + "_pointer";
			}
			auto it = std::find(skip_symbolized_struct.begin(), skip_symbolized_struct.end(), struct_name);
			if (it != skip_symbolized_struct.end()) {
				errs() << "[exclude] rust_skip_struct " << argument_name << " (" << struct_name << ")\n";
				return;
			}

			LLVMContext& ctx = M.getContext();
			const DataLayout& DL = M.getDataLayout();

			// Check that we have the declaration of the function klee_make_symbolic in our sights
			Function* klee_make_symbolic_func = M.getFunction("klee_make_symbolic");

			if (!klee_make_symbolic_func) {
				llvm::report_fatal_error("Should have created the klee_make_symbolic function.");
			}

			// We will first call klee_make_symbolic, so we build the args
			// int a;
			// klee_make_symbolic(&a, sizeof(a), "a");
			// function(a);
			std::vector<Value*> klee_make_symbolic_args;
			Type* void_ptr_type = PointerType::get(IntegerType::getInt8Ty(ctx), 0);
			klee_make_symbolic_args.push_back(Builder.CreateBitCast(value, void_ptr_type));
			klee_make_symbolic_args.push_back(ConstantInt::get(IntegerType::get(ctx, 64), DL.getTypeAllocSize(value->getType()->getPointerElementType())));
			llvm::StringRef ref(argument_name);
			Value* arg_name = Builder.CreateGlobalString(ref, "klee_sym_arg_name", 0, &M);
			// Set the global string as non-constant (writable)
			GlobalVariable* global_arg_name = cast<GlobalVariable>(arg_name);
			global_arg_name->setConstant(false);
			// Set the linkage to PrivateLinkage to ensure no merging
			global_arg_name->setLinkage(llvm::GlobalValue::PrivateLinkage);
			// Disable unnamed_addr to prevent merging based on the contents
			global_arg_name->setUnnamedAddr(llvm::GlobalValue::UnnamedAddr::None);
			klee_make_symbolic_args.push_back(Builder.CreateBitCast(global_arg_name, void_ptr_type)); // Must cast it
			Builder.CreateCall(klee_make_symbolic_func, klee_make_symbolic_args);
		}

		void initialize_inner_struct(Module& M,
			IRBuilder<>& Builder,
			Value* pointer,
			Type* type,
			StringRef name,
			std::string &argument_name,
			std::string &struct_name,
			const std::string &index) {
			Type *converted_type = get_target_type(M, type, struct_name, index);
			bool need_ignore = false;
			bool need_cast = false;
			if (!converted_type) {
				//we don't initialize function pointer
				return;
			} else {
				if (converted_type != type) {
					need_cast = true;
				}
			}
			// 2026-09-07: bind nested by-value structs IN PLACE.
			//
			// The legacy path below builds a separate object for the nested
			// struct (with its own klee_make_symbolic array named
			// "<parent>.field_N"), binds pointers inside that copy, then copies
			// the whole value into the parent's field. Since mark_symbolic now
			// runs before initialize_inner_objects, that copy survives, so the
			// nested struct's scalar fields (Vec.cap / Vec.len) read from the
			// "<parent>.field_N" array instead of the parent's "<parent>"
			// array: same value, different array name, one extra edit per
			// Read node on every Rust translation that uses Vec/String.
			//
			// In place: the parent's bytes are already symbolic; only the
			// pointer slots inside the nested struct need a concrete pointee
			// address, so recurse on the parent's field address itself. The
			// legacy copy path is kept for placeholders that have no room in
			// place (opaque / zero-sized / system structs).
			{
				const DataLayout &DL = M.getDataLayout();
				StructType *cst = dyn_cast<StructType>(converted_type);
				bool in_place = cst && !cst->isOpaque() && cst->isSized()
					&& DL.getTypeAllocSize(cst) != 0 && !is_system_struct(M, cst);
				if (in_place) {
					Value *target = pointer;
					if (need_cast) {
						target = Builder.CreateBitCast(pointer, PointerType::get(converted_type, 0));
					}
					errs() << "[inplace] nested struct " << argument_name << "\n";
					initialize_inner_objects(M, Builder, target, argument_name);
					return;
				}
			}
			Value* stack_object = create_object_and_mark_symbolic(M, Builder, converted_type, name, PointerType::get(type, 0), need_cast, need_ignore, argument_name);
			if (pointer->getType() != stack_object->getType()) {
				stack_object = Builder.CreateBitCast(stack_object, pointer->getType());
			}
			Value* stack_load_inst = Builder.CreateLoad(stack_object->getType()->getPointerElementType(), stack_object);
			Builder.CreateStore(stack_load_inst, pointer);
		}
			
		void initialize_inner_pointer(Module& M,
			IRBuilder<>& Builder,
			Value* pointer,
			PointerType* ptr_type,
			StringRef name,
			std::string &argument_name,
			std::string &struct_name,
			const std::string &index,
			bool from_struct) {
			// If it is a pointer to a function, do nothing
			if (isa<FunctionType>(ptr_type->getPointerElementType())) {
				return;
			}
			// If it is, then allocate something and store it
			Type *converted_type = get_target_type(M, ptr_type->getPointerElementType(), struct_name, index);
			bool need_ignore = false;
			bool need_cast = false;
			if (!converted_type) {
				//we don't initialize function pointer
				return;
			} else {
				if (converted_type != ptr_type->getPointerElementType()) {
					need_cast = true;
				}
			}
			// mark_symbolic may append "_pointer" to argument_name; the dump builds
			// its path from the label, which never carries that suffix.
			const std::string leaf_path = argument_name;
			Value* stack_object = create_object_and_mark_symbolic(M, Builder, converted_type, name, ptr_type, need_cast, need_ignore, argument_name);
			// Store it to the pointer
			if (pointer->getType()->getPointerElementType() != stack_object->getType()) {
				stack_object = Builder.CreateBitCast(stack_object, pointer->getType()->getPointerElementType());
			}
			Builder.CreateStore(stack_object, pointer);
			if (need_cast) {
				converted_type = PointerType::get(converted_type, 0);
				stack_object = Builder.CreateBitCast(stack_object, converted_type);
			}
			if (!isa<StructType>(converted_type) && from_struct) {
				worklist.push(stack_object);
				if (leaf_buffers.count(leaf_path)) {
					errs() << "[leafbuf] duplicate " << leaf_path << "\n";
				}
				leaf_buffers[leaf_path] = stack_object;
				errs() << "[leafbuf] record " << leaf_path << "\n";
			}
		}

		// 2026-09-14: end the harness object graph at the recursion boundary.
		//
		// initialize_inner_objects stops expanding a struct once its type is already
		// on the expansion stack (visited_structs). The node it stopped at is
		// allocated and marked symbolic, but its own pointer fields are never bound:
		// cJSON's inner `next` target, skiplist's second node. With mark_symbolic
		// running before the bind, those fields keep klee_make_symbolic's bytes, so
		// the first hop along a list is a concrete address and the second is an
		// unconstrained pointer that KLEE can resolve to any live object. A walk like
		// `while (item) item = item->next` then never ends, on the C and the Rust side
		// alike. Store NULL into every data pointer of the boundary node instead: the
		// graph the target sees is finite and ends the way a real list does.
		//
		// Stores only, never allocations. The post-call dump consumes `worklist` in
		// the order initialize_inner_pointer filled it, so a new object here would
		// shift every later entry. The dump already skips struct pointers at this
		// same boundary and null-checks scalar pointers before reading through them.
		// Function-pointer fields keep their symbolic bytes, as they do at every other
		// depth, so the rule is the same on both sides. Arrays are left alone, as
		// initialize_inner_objects leaves them. ASSURE_BOUNDARY_NULL=0 restores the
		// previous behaviour.
		static bool boundary_null_enabled() {
			const char *v = std::getenv("ASSURE_BOUNDARY_NULL");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		static bool boundary_leaf_enabled() {
			const char *v = std::getenv("ASSURE_BOUNDARY_LEAF");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		// 2026-09-21: ASSURE_BOUNDARY_CONVERT=0 reverts the by-value conversion below.
		static bool boundary_convert_enabled() {
			const char *v = std::getenv("ASSURE_BOUNDARY_CONVERT");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		// 2026-09-21 (D5): ASSURE_PTR_DEPTH=0 reverts the type-erased pointer-depth recovery below.
		static bool ptr_depth_enabled() {
			const char *v = std::getenv("ASSURE_PTR_DEPTH");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		// 2026-09-21 (D3): KLEE does not implement llvm.fptosi.sat / llvm.fptoui.sat.
		// rustc emits them for every `as` cast from float to integer (Rust defines that cast
		// as saturating), while clang emits a plain `fptosi` for C's `(int)x`, which KLEE does
		// implement. So the Rust state dies at the FIRST float->int cast and the C state does
		// not: in cjson_parse's parse_number (`item.valueint = number as i32`) the Rust side
		// terminates inside the body, `ret` is never reached, main prints nothing, and all five
		// arguments read "Rust Empty!" on both the sonnet and the opus translation. Lower the
		// intrinsic into the compare/select chain it is defined to be equivalent to, so both
		// sides execute the same cast. ASSURE_LOWER_FPSAT=0 reverts.
		static bool lower_fpsat_enabled() {
			const char *v = std::getenv("ASSURE_LOWER_FPSAT");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		void lower_saturating_fp_to_int(Module &M) {
			if (!lower_fpsat_enabled()) {
				return;
			}
			std::vector<CallInst *> targets;
			for (Function &F : M) {
				for (BasicBlock &basic_block : F) {
					for (Instruction &instruction : basic_block) {
						auto *call = dyn_cast<CallInst>(&instruction);
						if (!call || !call->getCalledFunction() || !call->getCalledFunction()->isIntrinsic()) {
							continue;
						}
						Intrinsic::ID id = call->getCalledFunction()->getIntrinsicID();
						if (id != Intrinsic::fptosi_sat && id != Intrinsic::fptoui_sat) {
							continue;
						}
						if (!call->getType()->isIntegerTy() || !call->getArgOperand(0)->getType()->isFloatingPointTy()) {
							continue;   // vector forms: leave alone
						}
						targets.push_back(call);
					}
				}
			}
			for (CallInst *call : targets) {
				const bool is_signed = call->getCalledFunction()->getIntrinsicID() == Intrinsic::fptosi_sat;
				IRBuilder<> B(call);
				Value *x = call->getArgOperand(0);
				auto *int_type = cast<IntegerType>(call->getType());
				Type *fp_type = x->getType();
				const unsigned bits = int_type->getBitWidth();
				APInt max_int = is_signed ? APInt::getSignedMaxValue(bits) : APInt::getMaxValue(bits);
				APInt min_int = is_signed ? APInt::getSignedMinValue(bits) : APInt::getMinValue(bits);
				APFloat max_fp(fp_type->getFltSemantics());
				APFloat min_fp(fp_type->getFltSemantics());
				max_fp.convertFromAPInt(max_int, is_signed, APFloat::rmTowardZero);
				min_fp.convertFromAPInt(min_int, is_signed, APFloat::rmTowardZero);
				Value *converted = is_signed ? B.CreateFPToSI(x, int_type) : B.CreateFPToUI(x, int_type);
				Value *is_nan = B.CreateFCmpUNO(x, x, "fpsat_nan");
				Value *ge_max = B.CreateFCmpOGE(x, ConstantFP::get(M.getContext(), max_fp), "fpsat_ge_max");
				Value *le_min = B.CreateFCmpOLE(x, ConstantFP::get(M.getContext(), min_fp), "fpsat_le_min");
				Value *result = B.CreateSelect(ge_max, ConstantInt::get(int_type, max_int), converted);
				result = B.CreateSelect(le_min, ConstantInt::get(int_type, min_int), result);
				result = B.CreateSelect(is_nan, ConstantInt::get(int_type, 0), result, "fpsat");
				call->replaceAllUsesWith(result);
				call->eraseFromParent();
				errs() << "[fpsat] lowered " << (is_signed ? "fptosi.sat.i" : "fptoui.sat.i") << bits << "\n";
			}
		}

		// 2026-09-22 (D2): ASSURE_STUB_SRET=0 reverts the sret out-parameter initialisation in the
		// symbolic_dummy stubs (see the void-return branch of the stub builder).
		static bool stub_sret_enabled() {
			const char *v = std::getenv("ASSURE_STUB_SRET");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		void null_boundary_pointers(Module& M,
			IRBuilder<>& Builder,
			StructType* struct_type,
			Value* pointer,
			unsigned start,
			const std::string &argument_name,
			int depth = 0) {
			if (depth > 4) {
				return;
			}
			const std::string struct_name = struct_type->isLiteral() ? "" : struct_type->getName().str();
			for (unsigned j = start; j < struct_type->getNumElements(); j++) {
				Type* field_type = struct_type->getElementType(j);
				const std::string index = std::to_string(j);
				if (PointerType* field_ptr_type = dyn_cast<PointerType>(field_type)) {
					if (isa<FunctionType>(field_ptr_type->getPointerElementType())) {
						continue;
					}
					if (!struct_name.empty() &&
					    check_struct_function_ptr(field_ptr_type->getPointerElementType(), M, struct_name, index)) {
						continue;
					}
					Value* gep = Builder.CreateStructGEP(struct_type, pointer, j, "boundary_gep");
					// Chain/leaf split (2026-09-15). Only a pointer to a struct can carry
					// the walk further, so only those end in NULL. A pointer to anything
					// else (char*, void*, int*: strings, keys, payloads) gets the same
					// symbolic buffer it would get one level up; a buffer holds no
					// pointer, so it cannot re-open the unbounded walk NULL closes, and
					// the target reads a real value here instead of NULL on both sides.
					// The buffer is recorded in leaf_buffers by path like every other
					// leaf, which is why this needs the keyed lookup: with the
					// positional queue the extra entries shifted every later read.
					// ASSURE_BOUNDARY_LEAF=0 keeps NULL for leaves too.
					Type *eff_pointee = field_ptr_type->getPointerElementType();
					if (StructType *boxed = check_struct_box_ptr(M, struct_name, index)) {
						eff_pointee = boxed;
					}
					if (boundary_leaf_enabled() && !isa<StructType>(eff_pointee)) {
						std::string leaf_name = argument_name + ".field_" + index;
						std::string sname = struct_name;
						initialize_inner_pointer(M, Builder, gep, field_ptr_type, "field", leaf_name, sname, index, true);
						errs() << "[boundary] leaf " << argument_name << ".field_" << j << "\n";
						continue;
					}
					Builder.CreateStore(ConstantPointerNull::get(field_ptr_type), gep);
					errs() << "[boundary] null " << argument_name << ".field_" << j << "\n";
				} else if (StructType* nested = dyn_cast<StructType>(field_type)) {
					if (nested->isOpaque() || !nested->isSized() || is_system_struct(M, nested)) {
						continue;
					}
					Value* gep = Builder.CreateStructGEP(struct_type, pointer, j, "boundary_gep");
					// 2026-09-21: convert the by-value field the way initialize_inner_struct
					// does before recursing. Without it this walk descends the RAW LLVM type:
					// an `Option<Vec<u8>>` field is `{ {}*, [2 x i64] }`, its element 0 is
					// `{}*`, and `{}` is a zero-element LITERAL StructType -- so the chain/leaf
					// split above classified the Vec DATA POINTER as a chain pointer and stored
					// NULL into it (`[boundary] null <arg>.field_4.field_0`). The dump then asked
					// leaf_buffers for `<arg>.field_4.field_0.field_0`, missed, and excluded the
					// label (`[exclude] leaf_unbound`): six rows per run on parse_object and two
					// on parse_array had no Rust counterpart and scored 2.0 against a
					// same-node-count neighbour (the cap tree). cap/len survived because they are
					// the `[2 x i64]` tail, which this walk never touches.
					//
					// Converting to `Vec<u8>` makes element 0 a RawVec whose own element 0 is a
					// true `i8*` leaf, so it takes the leaf branch and gets a real buffer. It also
					// makes the init walk spell the path with the same hops the dump uses --
					// which is load-bearing, because leaf_buffers is a STRING-KEYED map: the raw
					// walk would record `...field_4.field_0` while the dump asks for
					// `...field_4.field_0.field_0`, so fixing only the leaf/chain test would
					// still miss. ASSURE_BOUNDARY_CONVERT=0 reverts.
					StructType *walk = nested;
					std::string sname = struct_name;
					if (boundary_convert_enabled() && !sname.empty()) {
						if (Type *conv = get_target_type(M, nested, sname, index)) {
							if (StructType *cst = dyn_cast<StructType>(conv)) {
								const DataLayout &DL = M.getDataLayout();
								if (cst != nested && cst->isSized() && !cst->isOpaque() &&
									DL.getTypeAllocSize(cst) <= DL.getTypeAllocSize(nested)) {
									gep = Builder.CreateBitCast(gep, PointerType::get(cst, 0), "boundary_conv");
									walk = cst;
									errs() << "[boundary] convert " << argument_name << ".field_" << j
										   << " -> " << cst->getName() << "\n";
								}
							}
						}
					}
					null_boundary_pointers(M, Builder, walk, gep, 0, argument_name + ".field_" + index, depth + 1);
				}
			}
		}

		void initialize_inner_objects(Module& M,
			IRBuilder<>& Builder,
			Value* stack_var,
			std::string &argument_name) {
			LLVMContext& ctx = M.getContext();

			// We should keep following nested pointers and allocating them and marking them as symbolic
			std::vector<Value*> nested_pointers;
			nested_pointers.push_back(stack_var);

			llvm::errs() << "Initializing inner object: " << *stack_var << "\n";

			while (!nested_pointers.empty()) {
				Value* pointer = nested_pointers.back();
				nested_pointers.pop_back();
				// Is it a C pointer?
				if (PointerType* ptr_type = dyn_cast<PointerType>(pointer->getType()->getPointerElementType())) {
				    std::string struct_name = "";
					std::string index = "";
					initialize_inner_pointer(M, Builder, pointer, ptr_type, StringRef("ptr"), argument_name, struct_name, index, false);
				}
				// 2026-09-22 (slice-elem): a Rust slice parameter `&[T]` arrives as
				// `[0 x T]* %p.0, i64 %p.1`. create_object_and_mark_symbolic turns the
				// pointee into `[100 x T]`, but this walk had no ArrayType branch, so
				// when T is itself a fat pointer / struct the pointer fields of every
				// element kept klee_make_symbolic's bytes: the DATA POINTER was symbolic
				// and each dereference forked once per feasible object (create_objects:
				// Rust `*(arg_value_0.field_0)` = 6 trees {1,7,7,7,7,7} vs C's single
				// 3-node tree -> 1000). The print walk already casts `[0 x T]*` to `T*`
				// and visits element 0's fields under `<arg>.field_<i>`, so bind element
				// 0 the same way: push its GEP and let the StructType branch below record
				// `<arg>.field_0` in leaf_buffers. Element 0 only, matching the print
				// side and C's single `char*` slot. ASSURE_SLICE_ELEM=0 reverts.
				if (ArrayType* array_type = dyn_cast<ArrayType>(pointer->getType()->getPointerElementType())) {
					Type* element_type = array_type->getElementType();
					if (slice_elem_enabled() && array_type->getNumElements() > 0 && isa<StructType>(element_type)) {
						Value* elem0 = Builder.CreateGEP(
								array_type,
								pointer,
								ArrayRef<Value*>({ConstantInt::get(IntegerType::get(ctx, 64), 0),
								                  ConstantInt::get(IntegerType::get(ctx, 64), 0)}),
								"slice_elem0");
						errs() << "[slice_elem] bind element 0 of " << argument_name << " : " << *element_type << "\n";
						nested_pointers.push_back(elem0);
					}
				}
				if (StructType* struct_type = dyn_cast<StructType>(pointer->getType()->getPointerElementType())) { // these are stack variables
					const DataLayout &DL = M.getDataLayout();
					auto *SL = DL.getStructLayout(struct_type);
					if (is_system_struct(M, struct_type)) {
						errs() << "[exclude] system_type_init " << argument_name << "\n";
						return;
					}
					std::string struct_name = "";
					if (!struct_type->isLiteral()) {
						struct_name = struct_type->getName().str();
					}
					for (unsigned int i = 0; i < struct_type->getNumElements(); i++) {
						Type* field_type = struct_type->getElementType(i);
						const std::string &index = std::to_string(i);
						// If it is a pointer, then we try to initialize it and make it work
						if (PointerType* field_ptr_type = dyn_cast<PointerType>(field_type)) {
							// Load the struct
							// LoadInst* struct_load_inst = Builder.CreateLoad(pointer->getType()->getPointerElementType(), pointer); 
							Value* gep = Builder.CreateStructGEP(
									struct_type, 
									pointer, 
									i,
								"gep");
							bool visited_struct_flag = false;
							// Effective pointee: an `Option<Box<T>>` field lowers to `i8*`, so the
							// LLVM type alone would put it on the leaf path and skip both the
							// recursion guard below and the boundary NULL.
							Type *eff_pointee = field_ptr_type->getPointerElementType();
							if (StructType *boxed = check_struct_box_ptr(M, struct_name, index)) {
								eff_pointee = boxed;
							}
							if (StructType *inner_struct_type = dyn_cast<StructType>(eff_pointee)) {
								if (visited_structs.count(struct_type)) {
									boundary_nodes.insert(argument_name);
									// Recursion boundary: this node's pointers are never bound. See
									// null_boundary_pointers.
									if (boundary_null_enabled()) {
										null_boundary_pointers(M, Builder, struct_type, pointer, i, argument_name);
									}
									return;
								} else {
									visited_structs.insert(struct_type);
									visited_struct_flag = true;
								}
							}
							std::string update_argument_name = argument_name + "." + "field_" + std::to_string(i);

							const std::string &index = std::to_string(i);
							initialize_inner_pointer(M, Builder, gep, field_ptr_type, "field", update_argument_name, struct_name, index, true
							);
							if (visited_struct_flag) {
								visited_structs.erase(struct_type);
							}
						} else if (StructType* inner_struct_type = dyn_cast<StructType>(field_type)) {
							Value* gep = Builder.CreateStructGEP(
								struct_type, 
								pointer, 
								i,
							"gep");
							std::string update_argument_name = argument_name + "." + "field_" + std::to_string(i);
							// 2026-09-22 (vec-elem): a `Vec<T>` field with a struct T gets one typed element
							// instead of the [100 x i8] the in-place walk would give RawVec's `i8*`.
							bool bound_vec = false;
							if (StructType *elem = check_struct_vec_elem(M, struct_name, index)) {
								bound_vec = bind_vec_element(M, Builder, inner_struct_type, gep, elem, update_argument_name);
							}
							if (!bound_vec) {
								initialize_inner_struct(M, Builder, gep, inner_struct_type, "field", update_argument_name, struct_name, index);
							}
						}
						if (i + 1 == struct_type->getNumElements()) {
							constrain_slice_len(M, Builder, struct_type, pointer, argument_name);
						}
					}
				}
			}
		}

		void initialize_fn_map() {
			std::string fixedJsonPath = "fn_type_map.json";
			if (std::filesystem::exists(fixedJsonPath)) {
				llvm::errs() << "json founded " << fixedJsonPath << "\n";
				std::ifstream jsonFile(fixedJsonPath);
				json jsonData;
				jsonFile >> jsonData;
				if (jsonData.contains(global_target_function->getName())) {
					json_map = jsonData[global_target_function->getName()];
				} else {
					llvm::errs() << "json not founded " << global_target_function->getName() << "\n";
				}
			}
		}

		json fetch_function_list(std::string file_name) {
			if (std::filesystem::exists(file_name)) {
				std::ifstream jsonFile(file_name);
				json jsonData;
				jsonFile >> jsonData;
				return jsonData;
			}
			return nullptr;
		}

		void initialize_struct_map() {
			std::string fixedJsonPath = "struct_map.json";
			if (std::filesystem::exists(fixedJsonPath)) {
				llvm::errs() << "json founded " << fixedJsonPath << "\n";
				std::ifstream jsonFile(fixedJsonPath);
				json jsonData;
				jsonFile >> struct_map;
			}
		}

		Value* create_object_and_mark_symbolic(Module& M,
			IRBuilder<>& Builder,
			Type* type, StringRef name,
			Type* originType,
			bool needCast,
			bool needIgnore,
			std::string &argument_name){
			LLVMContext& ctx = M.getContext();
			// special handling for i8* which could be strings
			bool cast_to_integer = false;
			if (IntegerType* integer_type = dyn_cast<IntegerType>(type)) {
					type = ArrayType::get(integer_type, 100);
					cast_to_integer = true;
			}
			if (isa<FunctionType>(type)) {
				FunctionType *functionType = cast<FunctionType>(type);
				Function *function = Function::Create(functionType, Function::ExternalLinkage, "myFunction", M);
				create_function(M, functionType->getReturnType(), function);
				return function;
			} else {
				// If it is a struct type but the definition isn't present, then we just give it some random fields
				// create an integer and mark it symbolic
				// This implementation is incomplete: many corner cases need to be handled
				AllocaInst* stack_arg = nullptr;
				StructType* struct_symbol_type = dyn_cast<StructType>(type);
				if (struct_symbol_type && struct_symbol_type->isOpaque()) {
					// Create a dummy struct type of two ints
					struct_symbol_type->setBody({llvm::Type::getInt8Ty(ctx), llvm::Type::getInt8Ty(ctx)});
				}
				// Rust extern types (`libc::FILE`) lower to `{ [0 x i8] }`: not opaque,
				// but zero-sized. An alloca of it is a 0-byte object and any later
				// load through it is "out of bound pointer". Mirror the opaque case.
				bool is_system_struct_arg = struct_symbol_type && is_system_struct(M, struct_symbol_type);
				if (is_system_struct_arg && DL_alloc_size_is_zero(M, struct_symbol_type)) {
					type = system_struct_placeholder(M);
					needCast = true;
					errs() << "[exclude] system_type_zero_sized " << argument_name << "\n";
				}

				//special handle array when its size is 0
				if (auto *arrayTy = llvm::dyn_cast<llvm::ArrayType>(type)) {
					Type *elementTy = arrayTy->getElementType();
					if (arrayTy->getNumElements() == 0) {
						type = ArrayType::get(elementTy, 100);
						needCast = true;
					}
				}
				stack_arg = Builder.CreateAlloca(type, 0, name);
				// Only mark the non-pointers symbolic
				// For structs, only mark the non-pointer fields symbolic
				if (isa<PointerType>(type)) {
					needIgnore = true;
				}
				if (StructType* struct_type = dyn_cast<StructType>(type)) {
					if (is_system_struct(M, struct_type)) {
						needIgnore = true;
					}
				}
				if (is_system_struct_arg) {
					needIgnore = true;
				}
				// ORDER MATTERS (2026-09-06): mark the whole object symbolic FIRST, then
				// bind its pointer fields to their pointee objects. klee_make_symbolic
				// overwrites every byte of the object, so doing it after
				// initialize_inner_objects erased the stored pointee addresses and left
				// every pointer field (e.g. csv_parser.entry_buf, Vec.ptr) fully
				// symbolic. KLEE then forked one state per memory object on each write
				// through that pointer (writes landing in `s`, `data`, the struct
				// itself), producing aliased-write trees on both sides that never
				// match. With this order the numeric fields stay symbolic and the
				// pointer fields hold concrete addresses of their own pointee objects.
				if (!needIgnore) {
					// type is the type passed to the CreateAlloca
					// For structs too, we can mark the whole struct
					// as symbolic
					mark_symbolic(M, type, stack_arg, Builder, argument_name);
				}
				// Any inner objects, should also be initialized (after mark_symbolic, see above)
				initialize_inner_objects(M, Builder, stack_arg, argument_name);
				if (needCast) {
					return Builder.CreateBitCast(stack_arg, originType);
				} else if (cast_to_integer) {
					IntegerType* integer_type = dyn_cast<IntegerType>(originType->getPointerElementType());
					Type* void_ptr_type = PointerType::get(IntegerType::get(ctx, integer_type->getBitWidth()), 0);
					return (Builder.CreateBitCast(stack_arg, void_ptr_type));
				} else {
					return stack_arg;
				}
			}
		}

		void write_json(Module &M, std::map<std::string, std::map<unsigned,uint64_t>> offsetMap) {
			std::error_code EC;
			std::string file_path = M.getModuleIdentifier();
			std::filesystem::path filepath(file_path);
			std::string filename_without_extension = splitString(filepath.stem().string(), ".")[0];
			std::string file_name = filename_without_extension + "_offset.json";
			raw_fd_ostream OS(file_name, EC, sys::fs::OF_None);
			if (EC) {
				errs() << "Error: cannot open offset.json for writing: "
					   << EC.message() << "\n";
			} else {
				OS << "{\n";
				for (auto sit = offsetMap.begin(), sie = offsetMap.end(); sit != sie; ++sit) {
					OS << "  \"" << sit->first << "\": {\n";
					auto &fields = sit->second;
					for (auto fit = fields.begin(), fie = fields.end(); fit != fie; ++fit) {
						OS << "    \"" << fit->first << "\": \"" << fit->second << "\"";
						if (std::next(fit) != fie) OS << ",";
						OS << "\n";
					}
					OS << "  }";
					if (std::next(sit) != sie) OS << ",";
					OS << "\n";
				}
				OS << "}\n";
			}
		}

		void symbolize_function_args_and_invoke(Module& M) {
			LLVMContext& ctx = M.getContext();
			ArrayRef<Type*> args;
			FunctionType* main_function_type = FunctionType::get(FunctionType::getVoidTy(ctx), args, false);
			Function* main_function = Function::Create(main_function_type, Function::ExternalLinkage, "main", M);

			// Find the other function in the file
			Function* target_function = nullptr;
			std::vector<Function*> candidate_functions;
			std::string filename = M.getModuleIdentifier();
			std::filesystem::path filepath(filename);
			std::string filename_without_extension = splitString(filepath.stem().string(), ".")[0];
			for (Function& F: M.functions()) {
				if (!F.hasName()) {
					continue;
				}
				if (!F.isDeclaration()) {
				
					std::string demangled_name = exec_rustfilt(F.getName().str());
					std::vector<std::string> result = splitString(demangled_name, "::");
					std::string function_name = result.empty() ? "" : result.back();
					if (compareStrings(filename_without_extension, function_name)) {
						candidate_functions.push_back(&F);
					}
				}
			}

			if (!candidate_functions.empty()) {
				if (candidate_functions.size() == 1) {
					target_function = candidate_functions[0];
				} else {
					// 2026-09-20: rank the candidates instead of taking the first one that
					// beats the running best. The linked stdlib IR (core_demangle.ll /
					// alloc_demangle.ll) contributes functions whose last `::` segment
					// collides with the target — `core::num::dec2flt::parse::parse_number`
					// against the translation's own `parse_number`. Both score edit distance
					// 0 on the file name, so module order decided the winner, and every
					// argument of the real function was measured against a stdlib routine
					// instead: cjson_parse-gpt 5 rows, cjson_write-gpt 9 rows, all
					// "Rust Empty!". Order: not from the stdlib first, then smaller edit
					// distance, then fewer `::` segments (a translation's own function is
					// `parse_number` or `mod::parse_number`, never five levels deep).
					auto rank = [&](Function *func) {
						std::string demangled_name = exec_rustfilt(func->getName().str());
						std::vector<std::string> result = splitString(demangled_name, "::");
						std::string func_name = result.empty() ? "" : result.back();
						bool stdlib = demangled_name.rfind("core::", 0) == 0
									|| demangled_name.rfind("alloc::", 0) == 0
									|| demangled_name.rfind("std::", 0) == 0
									|| demangled_name.rfind("compiler_builtins::", 0) == 0;
						return std::make_tuple(stdlib ? 1 : 0,
											   editDistance(filename_without_extension, func_name),
											   (int)result.size());
					};
					auto best = rank(candidate_functions[0]);
					target_function = candidate_functions[0];
					for (auto *func : candidate_functions) {
						auto r = rank(func);
						if (r < best) {
							best = r;
							target_function = func;
						}
					}
					if (candidate_functions.size() > 1) {
						errs() << "[target] " << filename_without_extension << ": "
							   << candidate_functions.size() << " candidates -> "
							   << exec_rustfilt(target_function->getName().str()) << "\n";
					}
				}
			}

			if (!target_function) {
    			llvm::errs() << "Error: target function not found.\n";
    			return; 
			}

			global_target_function = target_function;
			initialize_fn_map();
			initialize_struct_map();

			// Target function
			// Add an entry block to the main function
			BasicBlock* EntryBB = BasicBlock::Create(ctx, "entry", main_function);
			IRBuilder<> Builder(ctx);

			Builder.SetInsertPoint(EntryBB);

			std::vector<Value*> actual_args;
			// Now create a stack object of each of the argument type
			bool has_struct_ret = false;
			std::map<std::string, std::map<unsigned,uint64_t>> offsetMap;
			for (Argument& arg: target_function->args()) {
				// If it's a C pointer type, then we must create a stack object (AllocaInst) of the base type, mark it symbolic, and pass it directly to the function
				// If it's a scalar, then we must create a stack object, load it and pass it to the function
				unsigned pos = arg.getArgNo();
				std::string argument_name;
				if (arg.hasAttribute(Attribute::StructRet)) {
					argumentsMap[arg.getArgNo()] = "Ret";
					argument_name = "return_value";
					has_struct_ret = true;
				} else {
					if (has_struct_ret) {
						argument_name = "arg_value_" + std::to_string(pos - 1);
					} else {
						argument_name = "arg_value_" + std::to_string(pos);
					}
				}
				Type *targetType = get_argument_type(M, arg.getArgNo());
				bool needIgnore = false;
				bool needReplace = false;
				if (!targetType) {
					needIgnore = true;
					targetType = arg.getType();
				} else if (targetType != arg.getType()) {
					needReplace = true;
				} else {
					needReplace = false;
				}
				if (isa<PointerType>(targetType)) {
					const DataLayout &DL = M.getDataLayout();
					if (StructType* struct_type = dyn_cast<StructType>(targetType->getPointerElementType())) {
						const StructLayout *SL = DL.getStructLayout(struct_type);
						auto &fieldMap = offsetMap[std::to_string(arg.getArgNo())];
						for (unsigned i = 0, e = struct_type->getNumElements(); i != e; ++i) {
							// Type *element_type = struct_type->getElementType(i);
							// uint64_t size = DL.getTypeAllocSize(element_type);
							// uint64_t offset = SL->getElementOffset(i);
							fieldMap[i] = SL->getElementOffset(i);
						}
					}
				}

				if (isa<PointerType>(targetType) && isa<FunctionType>(targetType->getPointerElementType())) {
					FunctionType *functionType = cast<FunctionType>(targetType->getPointerElementType());
					Function *function = Function::Create(functionType, Function::ExternalLinkage, "myFunction", M);
					create_function(M, functionType->getReturnType(), function);
					actual_args.push_back(function);
				} else {
					Value *stackArg = create_object_and_mark_symbolic(M,
						Builder,
						targetType,
						arg.getName(),
						PointerType::get(arg.getType(), 0),
						needReplace,
						needIgnore,
						argument_name);
					LoadInst* stack_load_inst = Builder.CreateLoad(stackArg->getType()->getPointerElementType(), stackArg);
					actual_args.push_back(stack_load_inst);
				}
			}
			write_json(M, offsetMap);

			// Now we pass these arguments to the actual function
			// Fat-pointer arguments: `&str` / `&[T]` arrives as (`[0 x T]*`, i64) in
			// consecutive slots; bound the length to the buffer that was allocated for it.
			if (slice_len_enabled()) {
				for (size_t ai = 0; ai + 1 < actual_args.size(); ai++) {
					if (is_slice_data_ptr(actual_args[ai]->getType()) &&
						actual_args[ai + 1]->getType()->isIntegerTy(64)) {
						assume_le(M, Builder, actual_args[ai + 1], SLICE_BUF_ELEMS,
								  "arg#" + std::to_string(ai + 1));
					}
				}
			}
			CallInst* call_with_symb_args = Builder.CreateCall(target_function, actual_args);

			// Then we dump the symbolic values
			for (int i = 0; i < actual_args.size(); i++) {
				Value* arg_value = actual_args[i];
				Type *arg_type = arg_value->getType();
				if (PointerType *pointerType = dyn_cast<PointerType>(arg_type)) {
					if (StructType* structType = dyn_cast<StructType>(pointerType->getPointerElementType())) {
						if (is_system_struct(M, structType)) {
							// Denominator composition (DESIGN.md §5.4): every exclusion path must
							// leave a trace, otherwise "why is the denominator 73" can only be
							// inferred by reading the code. The format is fixed as
							// [exclude] <reason> <label>, aggregated by classify_failures.py.
							errs() << "[exclude] system_type arg#" << i << "\n";
							continue;
						}
					}
				}
				if (llvm::isa<llvm::Function>(arg_value)) {
					errs() << "[exclude] fnptr_arg_ir arg#" << i << "\n";
					continue;
				}

                Type* targetType = get_argument_type(M, i);

				std::string prefix = "arg_value_";
				if (argumentsMap.find(i) != argumentsMap.end() && argumentsMap[i] == "Ret") {
					prefix = "ret_value";
				}
				
				int index = i;
				for (const auto& [key, value] : argumentsMap) {
					if (key < i && value == "Ret") {
						index--;
					}
				}
				if (!targetType) {
					errs() << "[exclude] fnptr_by_typemap arg#" << i << "\n";
					continue;
				}
				Value *target_value = arg_value;
				if (targetType != arg_value->getType()) {
					target_value = Builder.CreateBitCast(arg_value, targetType);
				}
				if (!target_function->getArg(i)->hasAttribute(Attribute::StructRet)) {
					prefix = prefix + std::to_string(index);
				}
				print_nested_klee_exprs(M, Builder, target_value, prefix, prefix);
			}

			// The return value
			if (!call_with_symb_args->getType()->isVoidTy()) {
				std::string targetName;
				print_nested_klee_exprs(M, Builder, call_with_symb_args, std::string("ret_value"), std::string("ret_value"));
			}

			Builder.CreateRetVoid();
		}

		// `label` is what klee_print_expr prints ("*(arg_value_0.field_4)"); `path`
		// is the same walk without the dereference marks ("arg_value_0.field_4"),
		// the key initialize_inner_pointer recorded in leaf_buffers.
		void print_nested_klee_exprs(Module& M, IRBuilder<>& Builder, Value* arg_value, std::string label, const std::string &path) {
			LLVMContext& ctx = M.getContext();
			// Now we add the calls to the klee_print_expr functions
			Function* klee_print_expr_function = M.getFunction("klee_print_expr");

			//if it is a struct, then we print the field inside it.
			if (StructType* struct_type = dyn_cast<StructType>(arg_value->getType())) {
					// A Rust fat pointer is `{ T*, i64 }`: remember the length so the data
					// pointer's read can require it to be non-zero (see slice_len_hint below).
					Value *fat_len = nullptr;
					if (struct_type->getNumElements() == 2 &&
						struct_type->getElementType(0)->isPointerTy() &&
						struct_type->getElementType(1)->isIntegerTy(64)) {
						fat_len = Builder.CreateExtractValue(arg_value, {1});
					}
					for (unsigned int i = 0; i < struct_type->getNumElements(); i++) {
						Type* field_type = struct_type->getElementType(i);
						Value *gep = Builder.CreateExtractValue(arg_value, {i});
						Value *saved_hint = slice_len_hint;
						slice_len_hint = (fat_len && i == 0) ? fat_len : nullptr;
						struct HintRestore {
							Value **slot; Value *old;
							~HintRestore() { *slot = old; }
						} hint_restore{&slice_len_hint, saved_hint};
						if (isa<PointerType>(field_type) || isa<StructType>(field_type) || isa<ArrayType>(field_type)) {
							std::string new_label = "";

							bool is_struct_type = false;
							if (PointerType *pointer_type = dyn_cast<PointerType>(field_type)) {
								if (StructType *inner_struct_type = dyn_cast<StructType>(pointer_type->getPointerElementType())) {
									is_struct_type = true;
								}
							} else if (isa<StructType>(field_type)) {
								is_struct_type = true;
							}

							const std::string field_path = path + "." + "field_" + std::to_string(i);
							const bool leaf_field = !is_struct_type && label != "ret_value" && !isa<ArrayType>(field_type);
							Value *cur = nullptr;
							if (leaf_field) {
								cur = take_leaf_buffer(field_path);
							}
							if (leaf_field && !cur && leaf_lookup_enabled() && under_boundary(path)) {
								// init recorded no buffer for this leaf pointer: the field holds
								// whatever bytes klee_make_symbolic gave the enclosing node (the
								// recursion boundary). Reading through an unconstrained pointer
								// makes KLEE resolve it against every live object; measured on
								// cjson_parse it took add_item_to_object from 45 completed Rust
								// paths to 0. The C side prunes these fields, so nothing pairs
								// with them; exclude, like a pruned field. A miss anywhere else
								// (ret_value, a pointer the target wrote) keeps the runtime read
								// below, as the empty queue did.
								errs() << "[exclude] leaf_unbound " << label << ".field_" << i << "\n";
								continue;
							}
							if (cur) {
								if (PointerType *gep_pointer_type = dyn_cast<PointerType>(gep->getType()->getPointerElementType())) {
									if (cur->getType() == gep_pointer_type) {
										new_label = "*(" + label + "." + "field_" + std::to_string(i) + ")";
									} else {
										new_label = label + "." + "field_" + std::to_string(i);
									}
								}
								gep = cur;
							} else {
								new_label = label + "." + "field_" + std::to_string(i);
							}
							print_nested_klee_exprs(M, Builder, gep, new_label, field_path);
						} else {
							std::vector<Value*> args_vec;
							std::string new_label = label + "." + "field_" + std::to_string(i);
							args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + new_label + " : "));
							args_vec.push_back(gep);
							Builder.CreateCall(klee_print_expr_function, args_vec);
						}
					}
					return;
			}
			//if it is not a pointer, then we print it directly.
			if (!isa<PointerType>(arg_value->getType())) {
				std::vector<Value*> args_vec;
				args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + " : "));
				args_vec.push_back(arg_value);
				Builder.CreateCall(klee_print_expr_function, args_vec);
				return;
			}

			// Never read back through a pointer to a system struct (FILE and friends):
			// the object is a placeholder and a load from it is out of bounds.
			if (isa<PointerType>(arg_value->getType()) &&
			    is_system_struct(M, arg_value->getType()->getPointerElementType())) {
				errs() << "[exclude] system_type " << label << "\n";
				return;
			}

			// If it is a pointer type, we have to be a little careful
			// 2026-09-21 (D5): the `*( )` decoration and the extra load below are decided purely by
			// the LLVM pointer nesting, and rustc ERASES a level when it splits an Option: sonnet's
			// `return_parse_end: Option<*mut *const u8>` arrives as a flat `i8*`, so this loop runs
			// zero times and the dump emits `arg_value_N`, while C's `char **return_parse_end` runs it
			// once and emits `*(arg_value_N)`. distance.py's directory fallback only repairs the
			// REVERSE asymmetry, so a starred C key facing an unstarred Rust key can never match and
			// the row reads "Rust Empty!" forever. fn_type_map.json still carries the source type, so
			// recover the erased level for a type-erased `i8*` whose recorded Rust type names two or
			// more raw-pointer levels. Deliberately narrow: `&str`, `&mut T` and `*mut T` all name at
			// most one level and are untouched. ASSURE_PTR_DEPTH=0 reverts.
			if (ptr_depth_enabled() && label == path) {
				std::smatch top_match;
				if (std::regex_match(label, top_match, std::regex("^arg_value_([0-9]+)$"))) {
					const std::string arg_key = std::to_string(source_index_for_label((unsigned)std::stoul(top_match[1].str())));
					if (json_map.contains(arg_key)) {
						const std::string rust_type = json_map[arg_key].get<std::string>();
						size_t levels = 0, at = 0;
						while ((at = rust_type.find("*mut", at)) != std::string::npos) { levels++; at += 4; }
						at = 0;
						while ((at = rust_type.find("*const", at)) != std::string::npos) { levels++; at += 6; }
						PointerType *arg_ptr_type = dyn_cast<PointerType>(arg_value->getType());
						if (levels >= 2 && arg_ptr_type && arg_ptr_type->getPointerElementType()->isIntegerTy(8)) {
							errs() << "[ptrdepth] " << label << " : " << rust_type << " -> recovering one erased level\n";
							arg_value = Builder.CreateBitCast(arg_value, PointerType::get(arg_value->getType(), 0), "ptrdepth_cast");
						}
					}
				}
			}
			while (isa<PointerType>(arg_value->getType()) && isa<PointerType>(arg_value->getType()->getPointerElementType())) {
				label = "*(" + label + ")";
				// Create a load
				arg_value = Builder.CreateLoad(arg_value->getType()->getPointerElementType(), arg_value);
			}

			//special handle array when its size is 0
			if (auto *pointer_type = dyn_cast<PointerType>(arg_value->getType())) {
				Type *element_type = pointer_type->getPointerElementType();
				if (auto *arrTy = dyn_cast<ArrayType>(element_type)) {
					Type *arrElmTy = arrTy->getElementType();
					if (arrTy->getNumElements() == 0) {
						Type *integer_type = PointerType::get(arrElmTy, 0);
						arg_value = Builder.CreateBitCast(arg_value, integer_type, "cast_size");
					}
				}
			}

			if (isa<FunctionType>(arg_value->getType()->getPointerElementType())) {
				errs() << "[exclude] fnptr_field_ir " << label << "\n";
				return;
			}

			if (StructType* struct_type = dyn_cast<StructType>(arg_value->getType()->getPointerElementType())) {
				for (unsigned int i = 0; i < struct_type->getNumElements(); i++) {
					Type* field_type = struct_type->getElementType(i);
					bool need_cast = false;
					std::string struct_name = "";
					const std::string &index = std::to_string(i);
                    if (!(struct_type->isLiteral())) {
                        struct_name = struct_type->getName().str();
                    }
					if (!startsWith(label, "ret_value") && isFieldUnused(struct_type, i, M)) {
						std::string new_label = label + "." + "field_" + std::to_string(i);
						outs() << "Arguments have not been used: " << new_label << "\n";
						errs() << "[exclude] unwritten_field " << new_label << "\n";
						// The positional queue had to pop here to stay in step with init;
						// a keyed lookup does not.
						if (!leaf_lookup_enabled() && (isa<PointerType>(field_type) || isa<ArrayType>(field_type))) {
							if (!worklist.empty()) {
								worklist.pop();
							}
						}
						continue;
					}
					Value* gep = Builder.CreateStructGEP(
							struct_type, 
							arg_value, 
							i,
							"gep");
					if (isa<PointerType>(field_type) || isa<StructType>(field_type) || isa<ArrayType>(field_type)) {
						Type *converted_type = field_type;
						bool visited_struct_flag = false;
						bool is_struct_type = false;
						if (isa<PointerType>(field_type)) {
							// Same effective pointee as the init walk: an `Option<Box<T>>` field is
							// `i8*` in LLVM, so keying the guard on the LLVM type alone leaves this
							// recursion unbounded once get_target_type starts resolving it to T
							// (opt segfaults at ~250 frames).
							Type *eff_pointee = field_type->getPointerElementType();
							if (StructType *boxed = check_struct_box_ptr(M, struct_name, index)) {
								eff_pointee = boxed;
							}
							if (StructType *inner_struct_type = dyn_cast<StructType>(eff_pointee)) {
								if (visited_structs.count(struct_type)) {
									continue;
								} else {
									visited_structs.insert(struct_type);
									visited_struct_flag = true;
								}
							}
							Type *original_converted_type = get_target_type(M, field_type->getPointerElementType(), struct_name, index);
							if (!original_converted_type) {
								continue;
							}
							if (original_converted_type != field_type) {
								//need cast to real type
								need_cast = true;
							}
							if (isa<StructType>(original_converted_type)) {
								is_struct_type = true;
							}
							converted_type = PointerType::get(original_converted_type, 0);
							if (isa<FunctionType>(converted_type->getPointerElementType())) {
								continue;
							}
						} else {
							converted_type = get_target_type(M, field_type, struct_name, index);
							if (!converted_type) {
								//function pointer
								continue;
							}
							if (isa<StructType>(converted_type)) {
								is_struct_type = true;
							}
							if (converted_type != field_type) {
								//need cast to real type
								need_cast = true;
							}
						}
						const std::string field_path = path + "." + "field_" + std::to_string(i);
						const bool leaf_field = !is_struct_type && !isa<ArrayType>(field_type);
						Value *cur = nullptr;
						if (leaf_field) {
							cur = take_leaf_buffer(field_path);
						}
						if (leaf_field && !cur && leaf_lookup_enabled() && under_boundary(path)) {
							// See the by-value branch above: no buffer recorded, do not read
							// through an unbound pointer.
							errs() << "[exclude] leaf_unbound " << label << ".field_" << i << "\n";
							if (visited_struct_flag) {
								visited_structs.erase(struct_type);
							}
							continue;
						}
						if (cur) {
							std::string new_label = "";
							if (PointerType *gep_pointer_type = dyn_cast<PointerType>(gep->getType()->getPointerElementType())) {
								if (cur->getType() == gep_pointer_type) {
									new_label = "*(" + label + "." + "field_" + std::to_string(i) + ")";
								} else {
									new_label = label + "." + "field_" + std::to_string(i);
								}
							}
							print_nested_klee_exprs(M, Builder, cur, new_label, field_path);
							if (visited_struct_flag) {
								visited_structs.erase(struct_type);
							}
							continue;
						}
						//need pointer again..
						converted_type = PointerType::get(converted_type, 0);
						if (need_cast) {
							print_nested_klee_exprs(M, Builder, Builder.CreateBitCast(gep, converted_type), label + "." + "field_" + std::to_string(i), field_path);
						} else {
							print_nested_klee_exprs(M, Builder, gep, label + "." + "field_" + std::to_string(i), field_path);
						}
						if (visited_struct_flag) {
							visited_structs.erase(struct_type);
						}
					} else {
						// Create a load
						Value* load_arg_value = Builder.CreateLoad(gep->getType()->getPointerElementType(), gep);

						std::vector<Value*> args_vec;
						
						std::string new_label = label + "." + "field_" + std::to_string(i);
						std::string label_name = std::string("*(" + new_label + ")");

						args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label_name + " : "));
						args_vec.push_back(load_arg_value);
						Builder.CreateCall(klee_print_expr_function, args_vec);
					}
				}
			} else if (ArrayType* array_type = dyn_cast<ArrayType>(arg_value->getType()->getPointerElementType())) {
				Type* element_type = array_type->getElementType();
				//C array will decay to pointer but Rust slice does not
				//for pointer, now we only print 1 bit...
				//TODO: fix this..
				for (unsigned int i = 0; i < 1; i++) {
					Value* gep = Builder.CreateGEP(
							array_type, 
							arg_value, 
							ArrayRef<Value*>({ConstantInt::get(IntegerType::get(ctx, 64), 0), ConstantInt::get(IntegerType::get(ctx, 64), i)}),
							"gep");
					if (isa<PointerType>(element_type) || isa<StructType>(element_type) || isa<ArrayType>(element_type)) {
						print_nested_klee_exprs(M, Builder, gep, label + "[" + std::to_string(i) + "]", path + "[" + std::to_string(i) + "]");
					} else {

						// Create a load
						Value* load_arg_value = Builder.CreateLoad(gep->getType()->getPointerElementType(), gep);

						std::string label_name = std::string("*(" + label + ")");

						std::vector<Value*> args_vec;
						args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label_name +  " : "));
						args_vec.push_back(load_arg_value);
						Builder.CreateCall(klee_print_expr_function, args_vec);
					}
				}
			} else if (arg_value->getType()->isPointerTy()) {
				//print pointer
				// std::vector<Value*> args_vec_pointer;
				// args_vec_pointer.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + "_pointer" + " : "));
				// args_vec_pointer.push_back(arg_value);
				// Builder.CreateCall(klee_print_expr_function, args_vec_pointer);

				// 2026-09-20: the dump must skip Rust's dangling pointers, not just NULL.
				// An empty String / Vec<T> allocates nothing and its data pointer is
				// NonNull::dangling() == align_of::<T>() (1 for u8), which passes an
				// `!= null` test; the load below then dies with "null page access" and
				// the whole state terminates before a single SYM VALUE is printed
				// (url.h url_get_*, cjson cJSON_strdup: every argument scored
				// "Rust Empty!"). C is unaffected: its empty return is a real NULL and
				// its live pointers are alloca'd objects far above the first page.
				// Treat anything inside page 0 as "no data", exactly like NULL.
				Value *ptrAsInt = Builder.CreatePtrToInt(arg_value, Builder.getInt64Ty(), "pv");
				Value *isNotNull = Builder.CreateICmpUGT(ptrAsInt, Builder.getInt64(4095), "is_not_null");
				// 2026-09-20 (assure_forklift): the page-0 test is not enough for a Rust slice
				// whose data lives in rodata. `static mut global_error = error { json: "", .. }`
				// gives an empty &str a REAL address (far above page 0) behind a zero-length
				// object, so the load below is still "out of bound pointer" and the state dies
				// before printing anything (cJSON_GetErrorPtr, all six cjson runs; C is
				// unaffected, its counterpart is a plain NULL). The length sits in the fat
				// pointer's second field, which the caller records in slice_len_hint before
				// recursing into the data pointer -- require it to be non-zero as well.
				if (slice_len_hint) {
					Value *hasLen = Builder.CreateICmpNE(slice_len_hint, ConstantInt::get(slice_len_hint->getType(), 0), "has_len");
					isNotNull = Builder.CreateAnd(isNotNull, hasLen, "is_not_null_len");
				}

				// Create a basic block for the loop and after-loop continuation
				BasicBlock *loopBlock = BasicBlock::Create(Builder.getContext(), "loop", Builder.GetInsertBlock()->getParent());
				BasicBlock *afterBlock = BasicBlock::Create(Builder.getContext(), "after_loop", Builder.GetInsertBlock()->getParent());
				BasicBlock *nullBlock = BasicBlock::Create(Builder.getContext(), "null_block", Builder.GetInsertBlock()->getParent());

				Builder.CreateCondBr(isNotNull, loopBlock, nullBlock);

				Builder.SetInsertPoint(loopBlock);

				Type *elementType = arg_value->getType()->getPointerElementType();
				for (int i = 0; i < 1; ++i) {
					// Create the GEP for the current index
					Value *index = Builder.getInt32(i);
					Value *ptr = Builder.CreateGEP(elementType, arg_value, index, "gep" + std::to_string(i));

					// Load the value from the pointer
					Value *charVal = Builder.CreateLoad(elementType, ptr, "load" + std::to_string(i));

					// Prepare arguments for the print function
					std::vector<Value*> args_vec;
					args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + " : "));
					args_vec.push_back(charVal);

					// Call the print function
					Builder.CreateCall(klee_print_expr_function, args_vec);
				}
				Builder.CreateBr(afterBlock);
				Builder.SetInsertPoint(nullBlock);
				{
					std::vector<Value*> args_vec;
					args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + " : "));
					args_vec.push_back(Builder.getInt64(0));

					Builder.CreateCall(klee_print_expr_function, args_vec);
				}
				Builder.CreateBr(afterBlock);
				Builder.SetInsertPoint(afterBlock);
			} else {
				std::vector<Value*> args_vec;
				args_vec.push_back(Builder.CreateGlobalStringPtr("SYM VALUE: " + label + " : "));
				args_vec.push_back(arg_value);
				Builder.CreateCall(klee_print_expr_function, args_vec);
			}
		}

		void create_klee_function_decls(Module& M) {
			LLVMContext& ctx = M.getContext();
			// klee_make_symbolic(void*ptr , uint64_t size, char* label)
			Type* void_ptr_type = PointerType::get(IntegerType::getInt8Ty(ctx), 0);
			Type* int64_type = IntegerType::get(ctx, 64);
			Type* char_ptr_type = PointerType::get(IntegerType::get(ctx, 8), 0);
			SmallVector<Type*, 5> types;
			types.push_back(void_ptr_type);
			types.push_back(int64_type);
			types.push_back(char_ptr_type);
			ArrayRef<Type*> argTypes(types);
			FunctionType* klee_make_symbolic_type = FunctionType::get(FunctionType::getVoidTy(ctx), argTypes, false);
			Function::Create(klee_make_symbolic_type, Function::ExternalLinkage, "klee_make_symbolic", M);

			SmallVector<Type*, 5> types2;
			types2.push_back(char_ptr_type);
			ArrayRef<Type*> argTypes2(types2);

			FunctionType* klee_print_expr_type = FunctionType::get(FunctionType::getVoidTy(ctx), argTypes2, true); 
			Function::Create(klee_print_expr_type, Function::ExternalLinkage, "klee_print_expr", M);

			// klee_assume(uintptr_t): used to give slice lengths the bound the Rust type
			// system already guarantees. See constrain_slice_len.
			if (!M.getFunction("klee_assume")) {
				std::vector<Type*> assumeArgs{IntegerType::get(ctx, 64)};
				FunctionType* klee_assume_type = FunctionType::get(Type::getVoidTy(ctx), assumeArgs, false);
				Function::Create(klee_assume_type, Function::ExternalLinkage, "klee_assume", M);
			}
		}

		void convert_function_calls(Module& M) {
			LLVMContext &ctx = M.getContext();
			IRBuilder<> Builder(ctx);

			// Iterate through all functions in the module
			for (Function &F : M) {
				if (F.isDeclaration())
					continue; // Skip function declarations

				if (F.getName() == "main" || F.getName().startswith("symbolic_dummy")) 
					continue; // The main is the driver and symbolic_dummy's are the ones we inserted

				std::vector<CallBase *> call_insts;

				// Collect all CallInsts in the function
				for (BasicBlock &basic_block : F) {
					for (Instruction &instruction : basic_block) {
						if (auto *call_inst = dyn_cast<CallBase>(&instruction)) {
							if (call_inst->getCalledFunction() && call_inst->getCalledFunction()->isIntrinsic()) { 
								// intrinsics are functions that are provided by the compiler
								// No need to replace them as their definitions will always
								// be provided by the compiler
								// Debug information, along with certain memcpy, memchk functions
								// are treated as intrinsics in LLVM.
								// The arguments to a debug intrinsic cannot be passed to a normal
								// function (which is what would happen if we tried to create dummy
								// versions of intrinsic functions.
								// Also, if we replaced the debug intrinsics, debug information would
								// stop working.
								continue;
							}
							if (call_inst->getCalledFunction()) {
								//function that doesn't have implementation
								if (call_inst->getCalledFunction()->isDeclaration()) {
									auto it = std::find(keep_list.begin(), keep_list.end(), call_inst->getCalledFunction()->getName());
									if (it != keep_list.end()) {
										continue;
									}
									call_insts.push_back(call_inst);
									outs() << "replace call: " << exec_rustfilt(call_inst->getCalledFunction()->getName().str()) << "\n";
								} else {
									// Debug Useage
									// outs() << "keep call:" << exec_rustfilt(call_inst->getCalledFunction()->getName().str()) << "\n";
								}
							} else {
								//function pointer
								Value *calledValue = call_inst->getCalledOperand();
								Type *calledType = calledValue->getType();
								if (calledType->isPointerTy()) {
									Type *pointeeType = calledType->getPointerElementType();
									if (pointeeType->isFunctionTy()) {
										call_insts.push_back(call_inst);
									}
								}
							}
						}
					}
				}
				
				int count = 0;
				// Transform each CallInst
				for (CallBase *call_inst : call_insts) {
					FunctionType *func_type = call_inst->getFunctionType();
					std::vector<Type *> param_types(func_type->param_begin(), func_type->param_end());

					bool findFreeFunction = false;
					Function *dummy_func;
					std::string filename = M.getModuleIdentifier();
					std::filesystem::path filepath(filename);
					std::string filename_without_extension = splitString(filepath.stem().string(), ".")[0];
					if (Function *called_func = call_inst->getCalledFunction()) {
						std::string function_name = exec_rustfilt(called_func->getName().str());
						if (function_name == "__rust_alloc") {
                            findFreeFunction = true;
							dummy_func = Function::Create(func_type, Function::ExternalLinkage,"function_rust_alloc" + std::to_string(count++), M);
							BasicBlock *basic_block = BasicBlock::Create(ctx, "entry", dummy_func);
							Builder.SetInsertPoint(basic_block);
							Function::arg_iterator args = dummy_func->arg_begin();
							Value *return_value = Builder.CreateCall(malloc_function, args);
                            Builder.CreateRet(return_value);
						}
					}
					if (!findFreeFunction) {
						// Create a new function with the same signature
						dummy_func = Function::Create(
							func_type, Function::ExternalLinkage,
							"symbolic_dummy" + std::to_string(count++), M);

						// Create the function body
						BasicBlock *basic_block = BasicBlock::Create(ctx, "entry", dummy_func);
						Builder.SetInsertPoint(basic_block);

						Type *return_type = func_type->getReturnType();
						if (return_type->isVoidTy()) {
							// 2026-09-22 (D2): a Rust function returning a by-value aggregate is lowered to
							// `void @f(%T* sret, ...)`, so getReturnType() alone says "void" and the stub left
							// the OUT-PARAMETER untouched. KLEE fills every fresh allocation with 0xAB
							// (rustify-klee Memory.cpp initializeToRandom), so the caller then read e.g.
							// String{ptr,cap,len} = 0xABABABABABABABAB and died on the first use --
							// `cjson_strdup` stubbed this way killed all 7 add_item_to_object rows per run in
							// cjson_parse-opus. Write the same zero value the non-void path returns through
							// its symbolic_ret global. ASSURE_STUB_SRET=0 reverts.
							if (stub_sret_enabled()) {
								for (unsigned pi = 0; pi < func_type->getNumParams(); pi++) {
									if (!call_inst->paramHasAttr(pi, Attribute::StructRet)) {
										continue;
									}
									PointerType *sret_ptr_type = dyn_cast<PointerType>(func_type->getParamType(pi));
									if (!sret_ptr_type) {
										continue;
									}
									Type *sret_pointee = sret_ptr_type->getPointerElementType();
									if (!sret_pointee->isSized() || pi >= dummy_func->arg_size()) {
										continue;
									}
									GlobalVariable *symbolic_sret_val = new GlobalVariable(
										M, sret_pointee, false, GlobalValue::PrivateLinkage,
										Constant::getNullValue(sret_pointee), "symbolic_sret");
									Builder.CreateStore(Builder.CreateLoad(sret_pointee, symbolic_sret_val),
										dummy_func->getArg(pi));
									errs() << "[sret] stub initialises out-parameter " << pi << "\n";
									break;
								}
							}
							Builder.CreateRetVoid();
						} else {
							// Create a global variable for the return value
							GlobalVariable *symbolic_ret_val = new GlobalVariable(
								M, return_type, false, GlobalValue::PrivateLinkage,
								Constant::getNullValue(return_type), "symbolic_ret");


							// Call klee_make_symbolic
							Function *klee_make_symbolic = M.getFunction("klee_make_symbolic");
							// assert(klee_make_symbolic && "Can't find klee_make_symbolic function!");

							// Builder.CreateCall(
							// 	klee_make_symbolic,
							// 	{Builder.CreateBitCast(symbolic_ret_val, Type::getInt8PtrTy(ctx)),
							// 	ConstantInt::get(Type::getInt64Ty(ctx), M.getDataLayout().getTypeAllocSize(return_type)),
							// 	Builder.CreateGlobalStringPtr("symbolic_var")});

							// Return the global variable
							Builder.CreateRet(Builder.CreateLoad(return_type, symbolic_ret_val));
						}
					}

					// Handle CallInst
					if (auto *call_instruction = dyn_cast<CallInst>(call_inst)) {
						SmallVector<Value *, 8> args;
						for (auto &arg : call_instruction->args()) {
							args.push_back(arg.get());
						}
						IRBuilder<> CallBuilder(call_instruction);
						call_instruction->replaceAllUsesWith(CallBuilder.CreateCall(dummy_func, args));
						call_instruction->eraseFromParent();
					} else if (auto *invoke_instruction = dyn_cast<InvokeInst>(call_inst)) {
						SmallVector<Value *, 8> args;
						for (auto &arg : invoke_instruction->args()) {
							args.push_back(arg.get());
						}
						IRBuilder<> InvokeBuilder(invoke_instruction);
						InvokeInst *new_invoke = InvokeBuilder.CreateInvoke(
							dummy_func, invoke_instruction->getNormalDest(),
							invoke_instruction->getUnwindDest(), args);
						invoke_instruction->replaceAllUsesWith(new_invoke);
						invoke_instruction->eraseFromParent();
					}
				}
			}
		}

		// todo: discuss how to process these external global variable
		void convert_global_const(Module &M) {
			std::vector<std::string> Names = {"__cp_begin", "__cp_end", "__cp_cancel", "_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17hb7b9c59f381708c2E", "_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h00399aec441edfe5E",
			"_ZN3std11collections4hash3map11RandomState3new4KEYS7__getit5__KEY17h2685127cc93352fdE"};

			for (const auto &Name : Names) {
				GlobalVariable *GV = M.getGlobalVariable(Name);
				if (!GV)
					continue;
		
				if (GV->hasInitializer())
					continue;
		
				Type *Ty = GV->getValueType();
				Constant *Init = nullptr;
		
				if (Ty->isIntegerTy()) {
					Init = ConstantInt::get(Ty, 0);
				} else if (ArrayType *ArrTy = dyn_cast<ArrayType>(Ty)) {
					Type *EltTy = ArrTy->getElementType();
					if (EltTy->isIntegerTy(8)) {
						Init = ConstantAggregateZero::get(ArrTy);
					} else {
						Init = ConstantAggregateZero::get(ArrTy);
					}
				} else if (StructType *STy = dyn_cast<StructType>(Ty)) {
					Init = ConstantAggregateZero::get(STy);
				} else if (Ty->isFloatTy()) {
					Init = ConstantFP::get(Ty, 0.0);
				} else if (Ty->isDoubleTy()) {
					Init = ConstantFP::get(Ty, 0.0);
				} else {
					Init = Constant::getNullValue(Ty);
				}
		
				GV->setInitializer(Init);
				GV->setConstant(true);
				GV->setLinkage(GlobalValue::InternalLinkage);
			}
		}

		Type* check_struct_pointer(Module &M, Argument &arg) {
			for (User *U : arg.users()) {
				if (auto *SI = dyn_cast<StoreInst>(U)) {
					if (SI->getValueOperand() != &arg) {
						continue;
					}
					Value *ptrOp = SI->getPointerOperand();
					for (User *PU : ptrOp->users()) {
						if (auto *BC = dyn_cast<BitCastInst>(PU)) {
							// errs() << "    Target pointer is bitcasted here: " << *BC << "\n";
							Type *dstTy = BC->getDestTy();
							if (PointerType *inner_pointer_ty = dyn_cast<PointerType>(dstTy->getPointerElementType())) {
								if (StructType *structTy = dyn_cast<StructType>(inner_pointer_ty->getPointerElementType())) {
									errs() << "inner struct type: " << structTy->getName() << "\n";
									return PointerType::get(structTy, 0);
								}
							}
						}
					}
				}
				if (auto *BC = dyn_cast<BitCastInst>(U)) {
					Type *dstTY = BC->getDestTy();
					if (PointerType *inner_pointer_ty = dyn_cast<PointerType>(dstTY)) {
						if (StructType *structTy = dyn_cast<StructType>(inner_pointer_ty->getPointerElementType())) {
							if (!(structTy->isLiteral())) {
								std::string struct_name = structTy->getName().str();
								if (struct_name.find("::Some") != std::string::npos) {
									for (User *U : BC->users()) {
										if (auto *GEP = dyn_cast<GetElementPtrInst>(U)) {
											if (GEP->getPointerOperand()) {
												return GEP->getType();
											}
										}
									}
								}
							}
						}
					}
				}

			}
			return NULL;
		}

		bool check_function_ptr(std::string &str) {
			static const std::regex wrapper_re(R"!(^\s*(?:Option|Box)\s*<\s*(.+)\s*>\s*$)!");
			std::smatch m;
			while (std::regex_match(str, m, wrapper_re)) {
				str = trim(m[1].str());
			}

			static const std::regex dyn_fn_re(
				R"!(^\s*(?:&?'\w+\s+)?dyn\s+Fn\s*\([^)]*\)\s*(?:->\s*.*)?\s*$)!"
			);
			// 2026-09-06: also accept the qualified forms rustc emits for C
			// callbacks — `unsafe extern "C" fn(...)`, `extern "C" fn(...)`.
			// Before this, `Option<extern "C" fn(c_uchar) -> i32>` was not
			// recognised, the field was bound to a fake [100 x i64] object, and
			// (once pointer bindings survive mark_symbolic) the Rust side could
			// never take the `None` branch that the C side (symbolic fn ptr,
			// NULL possible) takes: csv_increase_buffer lost its
			// `realloc_func == NULL -> return 0` path.
			static const std::regex fn_ptr_re(
				R"!(^\s*(?:unsafe\s+)?(?:extern\s*"[^"]*"\s+)?fn\s*\([^)]*\)\s*(?:->\s*.*)?\s*$)!"
			);

			if ( std::regex_match(str, dyn_fn_re)
			  || std::regex_match(str, fn_ptr_re) )
			{
				// errs() << "found function pointer: " << str << "\n";
				return true;
			}
			return false;
		}

		bool check_argument_function_ptr(const std::string &index) {
			if (!json_map.contains(index))
				return false;

			std::string s = trim((json_map)[index].get<std::string>());
			if (check_function_ptr(s)) {
				llvm::errs() << "function pointer in argument" << index << "\n";
				return true;
			} else {
				return false;
			}
		}


		static bool box_ptr_enabled() {
			const char *v = std::getenv("ASSURE_BOX_PTR");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		static bool slice_len_enabled() {
			const char *v = std::getenv("ASSURE_SLICE_LEN");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		// 2026-09-22 (slice-elem): ASSURE_SLICE_ELEM=0 reverts the slice element-0 binding below.
		static bool slice_elem_enabled() {
			const char *v = std::getenv("ASSURE_SLICE_ELEM");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		// 2026-09-22 (vec-elem): ASSURE_VEC_LEN=1 additionally pins a bound Vec<T>'s len to 1 (default off).
		static bool vec_len_enabled() {
			const char *v = std::getenv("ASSURE_VEC_LEN");
			if (!v) {
				return false;
			}
			std::string s(v);
			return (s == "1" || s == "true" || s == "on" || s == "yes");
		}

		// 2026-09-22 (vec-elem): ASSURE_VEC_ELEM=0 reverts the typed Vec<T> element binding below.
		static bool vec_elem_enabled() {
			const char *v = std::getenv("ASSURE_VEC_ELEM");
			if (!v) {
				return true;
			}
			std::string s(v);
			return !(s == "0" || s == "false" || s == "off" || s == "no");
		}

		// The buffer create_object_and_mark_symbolic gives a zero-sized array pointee.
		static const uint64_t SLICE_BUF_ELEMS = 100;

		// `&str` / `&[T]` is a fat pointer (data, len) and lowers to a `[0 x T]*` plus an
		// i64. The data pointer gets a 100-element symbolic buffer; the length was left an
		// unconstrained symbolic i64, so the model admits a slice longer than the object it
		// points into — a state the Rust type system makes impossible. Indexing it runs off
		// the buffer and every path ends in a bounds panic ("reached unreachable
		// instruction"): parse_number completed 0 of 368 paths. Bounding the length to the
		// buffer restores the invariant instead of weakening the model.
		// ASSURE_SLICE_LEN=0 turns it off.
		bool is_slice_data_ptr(Type *t) {
			PointerType *pt = dyn_cast_or_null<PointerType>(t);
			if (!pt) {
				return false;
			}
			ArrayType *at = dyn_cast<ArrayType>(pt->getPointerElementType());
			return at && at->getNumElements() == 0;
		}

		void assume_le(Module &M, IRBuilder<> &Builder, Value *len, uint64_t bound,
					   const std::string &what) {
			Function *assume = M.getFunction("klee_assume");
			if (!assume || !len->getType()->isIntegerTy()) {
				return;
			}
			Value *v = len;
			if (v->getType() != IntegerType::get(M.getContext(), 64)) {
				v = Builder.CreateZExtOrTrunc(v, IntegerType::get(M.getContext(), 64));
			}
			Value *cond = Builder.CreateICmpULE(v, ConstantInt::get(IntegerType::get(M.getContext(), 64), bound));
			Builder.CreateCall(assume, {Builder.CreateZExt(cond, IntegerType::get(M.getContext(), 64))});
			errs() << "[slice_len] " << what << " <= " << bound << "\n";
		}

		// Bound every fat-pointer length reachable in `struct_type` at `pointer`: either a
		// (`[0 x T]*`, i64) pair of adjacent fields, or a nested literal `{ [0 x T]*, i64 }`.
		void constrain_slice_len(Module &M, IRBuilder<> &Builder, StructType *struct_type,
								 Value *pointer, const std::string &label, int depth = 0) {
			if (!slice_len_enabled() || depth > 3 || struct_type->isOpaque() || !struct_type->isSized()) {
				return;
			}
			unsigned n = struct_type->getNumElements();
			for (unsigned i = 0; i < n; i++) {
				Type *ft = struct_type->getElementType(i);
				if (is_slice_data_ptr(ft) && i + 1 < n &&
					struct_type->getElementType(i + 1)->isIntegerTy(64)) {
					Value *gep = Builder.CreateStructGEP(struct_type, pointer, i + 1, "slice_len_gep");
					Value *len = Builder.CreateLoad(struct_type->getElementType(i + 1), gep);
					assume_le(M, Builder, len, SLICE_BUF_ELEMS, label + ".field_" + std::to_string(i + 1));
				} else if (StructType *nested = dyn_cast<StructType>(ft)) {
					Value *gep = Builder.CreateStructGEP(struct_type, pointer, i, "slice_len_gep");
					constrain_slice_len(M, Builder, nested, gep, label + ".field_" + std::to_string(i), depth + 1);
				}
			}
		}

		// 2026-09-20: `Option<Box<T>>` / `Box<T>` / `Option<&T>` lower to a bare `i8*`,
		// indistinguishable by LLVM type from `char*`. Judged by the LLVM type alone the
		// pass files such a field under leaf pointers and hands it a 100-byte symbolic
		// buffer; the drop glue then reads a T out of those bytes, every pointer inside is
		// unconstrained symbolic, and the first dereference is out of bounds — the Rust
		// side completes no path at all (cJSON_Delete: 8640 instructions, 0 completed
		// paths, every argument "Rust Empty!"). The `*mut T` sibling field lowers to `%T*`,
		// is recognised, and gets a real object plus the boundary NULL, which is why one
		// field of the same struct works and the other does not.
		//
		// struct_map.json carries the Rust type, so resolve it to the struct in the module
		// and let the field take the normal pointer-to-struct path. Returns null whenever
		// the name does not resolve (`&str`, `&[u8]`, `Box<dyn ...>`), leaving those on the
		// leaf path they already take. ASSURE_BOX_PTR=0 restores the LLVM-type-only rule.
		StructType* boxed_struct_of(Module &M, std::string s) {
			auto trim_ws = [](const std::string &t) {
				size_t b = t.find_first_not_of(" \t");
				if (b == std::string::npos) {
					return std::string();
				}
				size_t e = t.find_last_not_of(" \t");
				return t.substr(b, e - b + 1);
			};
			s = trim_ws(s);
			static const std::regex opt_re(R"!(^Option\s*<\s*(.+)>\s*$)!");
			static const std::regex box_re(R"!(^(?:Box|NonNull)\s*<\s*(.+)>\s*$)!");
			static const std::regex ref_re(R"!(^&\s*(?:'\w+\s+)?(?:mut\s+)?(.+)$)!");
			std::smatch m;
			if (std::regex_match(s, m, opt_re)) {
				s = trim_ws(m[1].str());
			}
			if (std::regex_match(s, m, box_re)) {
				s = trim_ws(m[1].str());
			} else if (std::regex_match(s, m, ref_re)) {
				s = trim_ws(m[1].str());
			} else {
				return nullptr;
			}
			// 2026-09-22 (lifetime): `ParseBuffer<'b>` is `%ParseBuffer` in LLVM -- lifetimes do not exist
			// at the IR level -- but the `<` below rejected it and the argument fell to the `char*` leaf path
			// (sonnet's buffer_skip_whitespace: 100-byte buffer instead of a ParseBuffer object, no fields
			// printed). Strip a generic list made only of lifetimes before the check.
			{
				static const std::regex lifetimes_only_re(R"!(\s*<\s*'\w+(?:\s*,\s*'\w+)*\s*>\s*$)!");
				s = std::regex_replace(s, lifetimes_only_re, "");
			}
			if (s.empty() || s.find('<') != std::string::npos || s.find('[') != std::string::npos) {
				return nullptr;
			}
			StructType *st = StructType::getTypeByName(M.getContext(), s);
			if (!st) {
				size_t pos = s.rfind("::");
				if (pos != std::string::npos) {
					st = StructType::getTypeByName(M.getContext(), s.substr(pos + 2));
				}
			}
			if (!st || st->isOpaque() || !st->isSized() || is_system_struct(M, st)) {
				return nullptr;
			}
			return st;
		}

		// The struct a `Option<Box<T>>`-shaped field of `struct_name` points to, or null.
		StructType* check_struct_box_ptr(Module &M,
										 const std::string &struct_name,
										 const std::string &index) {
			if (!box_ptr_enabled() || struct_name.empty()) {
				return nullptr;
			}
			auto sit = struct_map.find(struct_name);
			if (sit == struct_map.end()) {
				return nullptr;
			}
			auto &field_map = sit.value();
			auto fit = field_map.find(index);
			if (fit == field_map.end()) {
				return nullptr;
			}
			return boxed_struct_of(M, fit.value().get<std::string>());
		}

		// 2026-09-22 (vec-elem): `Vec<T>` lowers to `{ { i8*, i64 }, i64 }` -- rustc erases the
		// element type from RawVec's data pointer. This walk therefore handed skiplist's
		// `forward: Vec<Link>` a [100 x i8] byte buffer: `forward[i].node` read back 8 symbolic
		// bytes, every dereference forked once per feasible object, `Vec::index` forked again on
		// the symbolic len, and the Rust side timed out with hundreds of paths (jrsl_insert
		// sonnet 769, C 1) -> 56 trees vs 1 -> 1000 on 7 rows per run. struct_map.json still
		// names T, so bind ONE typed T element (C's `link*` gets exactly one object too) and pin
		// len to 1 so the bounds check agrees with that. ASSURE_VEC_ELEM=0 reverts.
		StructType* vec_elem_struct_of(Module &M, std::string s) {
			auto trim_ws = [](const std::string &t) {
				size_t b = t.find_first_not_of(" \t");
				if (b == std::string::npos) {
					return std::string();
				}
				size_t e = t.find_last_not_of(" \t");
				return t.substr(b, e - b + 1);
			};
			s = trim_ws(s);
			static const std::regex vec_re(R"!(^(?:&\s*(?:'\w+\s+)?(?:mut\s+)?)?Vec\s*<\s*(.+)>\s*$)!");
			static const std::regex lifetimes_re(R"!(^(.+?)\s*<\s*'\w+(?:\s*,\s*'\w+)*\s*>$)!");
			std::smatch m;
			if (!std::regex_match(s, m, vec_re)) {
				return nullptr;
			}
			s = trim_ws(m[1].str());
			if (std::regex_match(s, m, lifetimes_re)) {
				s = trim_ws(m[1].str());
			}
			if (s.empty() || s.find('<') != std::string::npos || s.find('[') != std::string::npos || s.find('&') != std::string::npos || s.find('*') != std::string::npos) {
				return nullptr;
			}
			StructType *st = StructType::getTypeByName(M.getContext(), s);
			if (!st) {
				size_t pos = s.rfind("::");
				if (pos != std::string::npos) {
					st = StructType::getTypeByName(M.getContext(), s.substr(pos + 2));
				}
			}
			if (!st || st->isOpaque() || !st->isSized() || is_system_struct(M, st)) {
				return nullptr;
			}
			return st;
		}

		StructType* check_struct_vec_elem(Module &M,
										  const std::string &struct_name,
										  const std::string &index) {
			if (!vec_elem_enabled() || struct_name.empty()) {
				return nullptr;
			}
			auto sit = struct_map.find(struct_name);
			if (sit == struct_map.end()) {
				return nullptr;
			}
			auto &field_map = sit.value();
			auto fit = field_map.find(index);
			if (fit == field_map.end()) {
				return nullptr;
			}
			return vec_elem_struct_of(M, fit.value().get<std::string>());
		}

		void assume_eq(Module &M, IRBuilder<> &Builder, Value *len, uint64_t bound,
					   const std::string &what) {
			Function *assume = M.getFunction("klee_assume");
			if (!assume || !len->getType()->isIntegerTy()) {
				return;
			}
			Value *v = len;
			if (v->getType() != IntegerType::get(M.getContext(), 64)) {
				v = Builder.CreateZExtOrTrunc(v, IntegerType::get(M.getContext(), 64));
			}
			Value *cond = Builder.CreateICmpEQ(v, ConstantInt::get(IntegerType::get(M.getContext(), 64), bound));
			Builder.CreateCall(assume, {Builder.CreateZExt(cond, IntegerType::get(M.getContext(), 64))});
			errs() << "[vec_len] " << what << " == " << bound << "\n";
		}

		// Bind element 0 of a by-value `Vec<T>` field (`vec_gep` points at the Vec struct) to a
		// fresh typed T object and pin len to 1. Returns false if the LLVM shape is not the
		// expected `{ { i8*, i64 }, i64 }`, in which case the caller falls back to the in-place walk.
		bool bind_vec_element(Module &M, IRBuilder<> &Builder, StructType *vec_type, Value *vec_gep,
							  StructType *elem, std::string &name) {
			if (vec_type->getNumElements() != 2 || !vec_type->getElementType(1)->isIntegerTy(64)) {
				return false;
			}
			StructType *raw = dyn_cast<StructType>(vec_type->getElementType(0));
			if (!raw || raw->getNumElements() < 1) {
				return false;
			}
			PointerType *pt = dyn_cast<PointerType>(raw->getElementType(0));
			if (!pt || !pt->getPointerElementType()->isIntegerTy(8)) {
				return false;
			}
			Value *raw_gep = Builder.CreateStructGEP(vec_type, vec_gep, 0, "vec_raw");
			Value *ptr_slot = Builder.CreateStructGEP(raw, raw_gep, 0, "vec_ptr");
			// Name the element object by the Vec FIELD's own path, not by the RawVec/ptr slots
			// under it: C names the pointee of `link *forward` after the `forward` field, so the
			// two sides' array names agree (`...field_4.field_0.field_1.field_2` on both) and the
			// dump needs no rename. The Vec's own cap/len stay in-place under their field paths.
			std::string elem_name = name;
			std::string no_struct = "";
			const std::string no_index = "";
			initialize_inner_pointer(M, Builder, ptr_slot, PointerType::get(elem, 0), StringRef("field"), elem_name, no_struct, no_index, true);
			Value *len_gep = Builder.CreateStructGEP(vec_type, vec_gep, 1, "vec_len");
			Value *len = Builder.CreateLoad(vec_type->getElementType(1), len_gep);
			// Pinning len to 1 (C's harness has exactly one `link`) is OPT-IN: on skiplist it changes
			// nothing -- every translation bounds the loop by `level`, never by `forward.len()`, and
			// the failing branch of Vec::index dies the same way C's out-of-bounds read does. A/B on
			// jrsl_insert/search/remove/node_at: identical paths, instructions and scores. Kept for
			// translations that iterate `forward.len()`. ASSURE_VEC_LEN=1 enables.
			if (vec_len_enabled()) {
				assume_eq(M, Builder, len, 1, name + ".field_1");
			}
			errs() << "[vec_elem] bind element 0 of " << name << " -> " << elem->getName() << "\n";
			return true;
		}

		bool check_struct_function_ptr(Type *type,
									   Module &M,
									   const std::string &struct_name,
									   const std::string &index) {

			auto sit = struct_map.find(struct_name);
			if (sit == struct_map.end()) {
				return false;
			}

			auto &field_map = sit.value();

			auto fit = field_map.find(index);
			if (fit == field_map.end()) {
				return false;
			}

			std::string type_str = fit.value().get<std::string>();


			if (check_function_ptr(type_str)) {
				llvm::errs() << "found function pointer in " << struct_name << index << "\n";
				return true;
			} else {
				return false;
			}
		}


		Type* get_target_type(Module &M, Type *type, std::string &struct_name, const std::string &index) {
			//check basic type
			if (StructType *struct_type = dyn_cast<StructType>(type)) {
				if (!(struct_type->isLiteral())) {
					//core::option::Option<alloc::vec::Vec<u8>> -> alloc::vec::Vec<u8>
					const std::string &type_str = struct_type->getName().str();
					if (type_str == "core::option::Option<alloc::vec::Vec<u8>>") {
						const std::string &convert_type_string = "alloc::vec::Vec<u8>";
						StructType *return_type = StructType::getTypeByName(M.getContext(), convert_type_string);
						if (return_type) {
							return return_type;
						} else {
							return type;
						}
					}
					if (type_str == "core::option::Option<alloc::string::String>") {
						const std::string &convert_type_string = "alloc::string::String";
						StructType *return_type = StructType::getTypeByName(M.getContext(), convert_type_string);
						if (return_type) {
							return return_type;
						} else {
							return type;
						}
					}

					//unwind::libunwind::_Unwind_Context has same defination with
					//"core::ffi::c_str::CStr"
					const std::string &target_string = "core::ffi::c_str::CStr";
					StructType *cstr_struct_type =  StructType::getTypeByName(M.getContext(), target_string);
					if (cstr_struct_type) {
						if (type == cstr_struct_type) {
							ArrayType *inner_array_type = ArrayType::get(Type::getInt8Ty(M.getContext()), 100);
							StructType *cstr_struct = StructType::create(M.getContext(), "cstr_struct");
							cstr_struct->setBody(inner_array_type);
							return cstr_struct;;
						}
					}
				}
			}

			//use index to check the field inside struct
			if (struct_name == "") {
				//literacy struct
				return type;
			}
			//check function pointer
			if (check_struct_function_ptr(type, M, struct_name, index)) {
				return NULL;
			}
			// `Option<Box<T>>` and friends: the LLVM pointee is `i8`, the Rust type says T.
			if (!isa<StructType>(type)) {
				if (StructType *boxed = check_struct_box_ptr(M, struct_name, index)) {
					static std::set<std::string> reported;
					if (reported.insert(struct_name + "." + index).second) {
						errs() << "[box_ptr] " << struct_name << ".field_" << index
							   << " -> " << boxed->getName() << "\n";
					}
					return boxed;
				}
			}

			return type;
		}

		// 2026-09-20 (assure_forklift), companion to check_struct_box_ptr: the same
		// `Option<Box<T>>` / `Box<T>` / `Option<&T>` shape reaches the pass as a TOP-LEVEL
		// argument too, and that path never consulted struct_map/fn_type_map. Judged by the
		// LLVM type alone such an argument is a bare `i8*`, so it got a 100-byte symbolic
		// leaf buffer; the drop glue then read a T out of those bytes, every pointer inside
		// was unconstrained symbolic and the first dereference went out of bounds
		// (cJSON_Delete(item: Option<Box<cJSON>>): 17677 instructions, 0 completed paths,
		// every argument "Rust Empty!" in all six cjson runs). fn_type_map.json carries the
		// Rust parameter type, so resolve it with the existing boxed_struct_of and let the
		// argument take the normal pointer-to-struct path. ASSURE_BOX_PTR=0 disables.
		// 2026-09-22 (argidx): fn_type_map.json is keyed by the Rust SOURCE parameter index, but the
		// lookups below used the LLVM IR argument number. They diverge after any parameter that takes
		// two IR slots (&str / &[T] / &dyn = (ptr,len); Option<*mut T> / Option<integer> = (discriminant,
		// payload)) and after an sret slot -- so patch B, the function-pointer check and the D5 depth
		// recovery all looked up the wrong (or no) type on such functions. Expand each recorded source
		// type into its slot count; if the expansion does not add up to the IR parameter count, fall
		// back to the old identity mapping and say so.
		static unsigned rust_type_ir_slots(std::string t) {
			auto trim_ws = [](const std::string &x) {
				size_t b = x.find_first_not_of(" \t");
				if (b == std::string::npos) return std::string();
				size_t e = x.find_last_not_of(" \t");
				return x.substr(b, e - b + 1);
			};
			t = trim_ws(t);
			static const std::regex opt_re(R"!(^Option\s*<\s*(.+)>\s*$)!");
			std::smatch m;
			bool in_option = false;
			if (std::regex_match(t, m, opt_re)) { t = trim_ws(m[1].str()); in_option = true; }
			static const std::regex unsized_re(R"!(^(?:&\s*(?:'\w+\s+)?(?:mut\s+)?|\*\s*(?:const|mut)\s+|(?:Box|Rc|Arc)\s*<\s*)(?:'\w+\s+)?(?:mut\s+)?(?:str\b|\[|dyn\b))!");
			if (std::regex_search(t, unsized_re)) return 2;
			if (in_option) {
				static const std::regex raw_ptr_re(R"!(^\*\s*(?:const|mut)\b)!");
				static const std::regex scalar_re(R"!(^(?:[iu](?:8|16|32|64|128|size)|f32|f64|bool|char|c_[a-z]+|size_t|ssize_t)$)!");
				if (std::regex_search(t, raw_ptr_re) || std::regex_match(t, scalar_re)) return 2;
			}
			return 1;
		}
		std::vector<unsigned> ir_to_source_cache;
		Function *ir_to_source_fn = nullptr;
		unsigned source_index_for_ir(unsigned ir_index) {
			Function *F = global_target_function;
			if (!F) return ir_index;
			if (ir_to_source_fn != F) {
				ir_to_source_fn = F;
				ir_to_source_cache.clear();
				const unsigned sret = (F->arg_size() > 0 && F->getArg(0)->hasAttribute(Attribute::StructRet)) ? 1 : 0;
				std::vector<unsigned> v;
				for (unsigned i = 0; i < sret; i++) v.push_back(std::numeric_limits<unsigned>::max());
				unsigned n = 0;
				while (json_map.contains(std::to_string(n))) n++;
				for (unsigned src = 0; src < n; src++) {
					const unsigned k = rust_type_ir_slots(json_map[std::to_string(src)].get<std::string>());
					for (unsigned j = 0; j < k; j++) v.push_back(src);
				}
				if (n > 0 && v.size() != F->arg_size()) {
					errs() << "[argidx] " << F->getName() << ": " << (v.size() - sret) << " expanded slots vs "
					       << (F->arg_size() - sret) << " IR params -> identity\n";
					v.clear();
				} else if (n > 0) {
					bool moved = false;
					for (unsigned i = 0; i < v.size(); i++) if (v[i] != i) moved = true;
					if (moved) errs() << "[argidx] " << F->getName() << ": IR slot -> source index remapped\n";
				}
				ir_to_source_cache = v;
			}
			if (ir_index < ir_to_source_cache.size()) return ir_to_source_cache[ir_index];
			return ir_index;
		}
		unsigned source_index_for_label(unsigned label_n) {
			Function *F = global_target_function;
			const unsigned sret = (F && F->arg_size() > 0 && F->getArg(0)->hasAttribute(Attribute::StructRet)) ? 1 : 0;
			return source_index_for_ir(label_n + sret);
		}
		StructType* check_argument_box_ptr(Module &M, unsigned index) {
			if (!box_ptr_enabled()) {
				return nullptr;
			}
			const std::string key = std::to_string(source_index_for_ir(index));
			if (!json_map.contains(key)) {
				return nullptr;
			}
			return boxed_struct_of(M, json_map[key].get<std::string>());
		}

		Type* get_argument_type(Module &M, unsigned index) {
			for (Function::arg_iterator AI = global_target_function->arg_begin(), AE = global_target_function->arg_end(); AI != AE; ++AI) {
				Argument &arg = *AI;
				if (arg.getArgNo() != index) {
					continue;
				}
				// 2026-09-22 (D5 init side): the print-side depth recovery (ASSURE_PTR_DEPTH) dereferences
				// the argument once more, so the harness object behind a type-erased `Option<*mut *const T>`
				// must have C's `char **` shape -- a pointer slot bound to an inner buffer -- instead of a
				// flat 100-byte `i8` buffer, otherwise that extra load reads symbolic bytes as an address.
				if (ptr_depth_enabled() && arg.getType()->isPointerTy()) {
					PointerType *apt = dyn_cast<PointerType>(arg.getType());
					const std::string skey = std::to_string(source_index_for_ir(index));
					if (apt && apt->getPointerElementType()->isIntegerTy(8) && json_map.contains(skey)) {
						const std::string rt = json_map[skey].get<std::string>();
						size_t levels = 0, at = 0;
						while ((at = rt.find("*mut", at)) != std::string::npos) { levels++; at += 4; }
						at = 0;
						while ((at = rt.find("*const", at)) != std::string::npos) { levels++; at += 6; }
						if (levels >= 2) {
							errs() << "[ptrdepth] arg#" << index << " : " << rt << " -> i8** harness object\n";
							return PointerType::get(PointerType::get(Type::getInt8Ty(M.getContext()), 0), 0);
						}
					}
				}
				// Effective pointee of a Box/Option-wrapped argument, before the LLVM-type rules below.
				if (arg.getType()->isPointerTy()) {
					if (StructType *boxed = check_argument_box_ptr(M, index)) {
						PointerType *pt = dyn_cast<PointerType>(arg.getType());
						if (!pt || !isa<StructType>(pt->getPointerElementType())) {
							errs() << "[box_ptr] arg#" << index << " -> " << boxed->getName() << "\n";
							return PointerType::get(boxed, 0);
						}
					}
				}
				Type* Integer = Type::getInt8PtrTy(M.getContext());
				if (Integer == arg.getType()) {
					Type *target_type = check_struct_pointer(M, arg);
					//check struct type
					if (target_type) {
						return target_type;
					}
				}
				if (PointerType *pointer_type = dyn_cast<PointerType>(arg.getType())) {
					if (StructType *struct_type = dyn_cast<StructType>(pointer_type->getPointerElementType())) {
						if (!(struct_type->isLiteral())) {
							std::string struct_name = struct_type->getName().str();
							if (struct_name.find("core::option") != std::string::npos) {
								Type *target_type = check_struct_pointer(M, arg);
								//check struct type
								if (target_type) {
									return target_type;
								}
							}
						}
					}
				}


				//check function pointer type
				if (check_argument_function_ptr(std::to_string(source_index_for_ir(index)))) {
					return NULL;
				}

				//Pointer type
				if (PointerType *pointer_type = dyn_cast<PointerType>(arg.getType())) {
					if (StructType *struct_type = dyn_cast<StructType>(pointer_type->getPointerElementType())) {
						if (!(struct_type->isLiteral())) {
							//core::option::Option<alloc::vec::Vec<u8>> -> alloc::vec::Vec<u8>
							const std::string &type_str = struct_type->getName().str();
							if (type_str == "core::option::Option<alloc::vec::Vec<u8>>") {
								const std::string &convert_type_string = "alloc::vec::Vec<u8>";
								StructType *return_type = StructType::getTypeByName(M.getContext(), convert_type_string);
								if (return_type) {
									return PointerType::get(return_type, 0);;
								} else {
									return arg.getType();
								}
							}
							if (type_str == "core::option::Option<alloc::string::String>") {
								const std::string &convert_type_string = "alloc::string::String";
								StructType *return_type = StructType::getTypeByName(M.getContext(), convert_type_string);
								if (return_type) {
									return PointerType::get(return_type, 0);
								} else {
									return arg.getType();
								}
							}

							//unwind::libunwind::_Unwind_Context has same defination with
							//"core::ffi::c_str::CStr"
							const std::string &target_string = "core::ffi::c_str::CStr";
							StructType *cstr_struct_type =  StructType::getTypeByName(M.getContext(), target_string);
							if (cstr_struct_type) {
								if (struct_type == cstr_struct_type) {
									ArrayType *inner_array_type = ArrayType::get(Type::getInt8Ty(M.getContext()), 100);
									StructType *cstr_struct = StructType::create(M.getContext(), "cstr_struct");
									cstr_struct->setBody(inner_array_type);
									return PointerType::get(cstr_struct, 0);
								}
							}
						}
					}
				}
				//Struct type
				if (StructType *struct_type = dyn_cast<StructType>(arg.getType())) {
					if (!(struct_type->isLiteral())) {
						//core::option::Option<alloc::vec::Vec<u8>> -> alloc::vec::Vec<u8>
						const std::string &type_str = struct_type->getName().str();
						if (type_str == "core::option::Option<alloc::vec::Vec<u8>>") {
							const std::string &convert_type_string = "alloc::vec::Vec<u8>";
							StructType *return_type = StructType::getTypeByName(M.getContext(), convert_type_string);
							if (return_type) {
								return return_type;
							} else {
								return arg.getType();
							}
						}
						if (type_str == "core::option::Option<alloc::string::String>") {
							const std::string &convert_type_string = "alloc::string::String";
							StructType *return_type = StructType::getTypeByName(M.getContext(), convert_type_string);
							if (return_type) {
								return return_type;
							} else {
								return arg.getType();
							}
						}
					}
				}

				//return original type
				return arg.getType();
			}

			return NULL;
		}

		bool check_keep_function(const std::string &function_name) {
			std::string target_function_name = global_target_function->getName().str();
			if (function_name == "main") {
				return true;
			}
			if (target_function_name == function_name) {
				return true;
			}
			json c_function_list = fetch_function_list("fn_type_map_c.json");
			json rust_function_list = fetch_function_list("fn_type_map.json");
			if (c_function_list == nullptr && rust_function_list == nullptr) {
				return true;
			}
			if (c_function_list.contains(function_name) || rust_function_list.contains(function_name)) {
				return false;
			}
			return true;
		}

		void traverse_and_remove_function(Module &M) {
			if (!is_rust) {
				return;
			}
			for (Function &F : M) {
				if (F.isDeclaration() || F.isIntrinsic()) {
					continue;
				}
				if (!check_keep_function(exec_rustfilt(F.getName().str()))) {
					F.deleteBody();
					F.setLinkage(GlobalValue::ExternalLinkage);
				}
			}
		}

		PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
			FunctionType *func_type = FunctionType::get(PointerType::get(Type::getInt8Ty(M.getContext()), 0), IntegerType::get(M.getContext(), 64), 0);
			Function *func = Function::Create(func_type, Function::ExternalLinkage, "malloc", M);
			malloc_function = func;
			lower_saturating_fp_to_int(M);
			create_klee_function_decls(M);
			remove_unneeded_functions(M);
			symbolize_function_args_and_invoke(M);
			traverse_and_remove_function(M);
			convert_function_calls(M);
			convert_global_const(M);
			//M.dump();
			return PreservedAnalyses::none();
		}

	}; // end of struct
}  // end of anonymous namespace

static cl::opt<bool> isRust("isRust",
	cl::desc("is processing rust"),
	cl::init(false));

/* New PM Registration */
llvm::PassPluginLibraryInfo getSymbolizerPluginInfo() {
	return {LLVM_PLUGIN_API_VERSION, "Symbolizer", LLVM_VERSION_STRING,
		[](PassBuilder &PB) {
			PB.registerOptimizerLastEPCallback (
					[](llvm::ModulePassManager &PM, OptimizationLevel Level) {
					PM.addPass(Symbolizer());
					});
			is_rust = isRust;
		}};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
	return getSymbolizerPluginInfo();
}
