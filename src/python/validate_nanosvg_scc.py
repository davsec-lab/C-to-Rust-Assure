"""Offline validator: run dependency extraction + SCC detection on nanosvg.i
without invoking any LLM. Prints what _runSccTopoTranslateLoop *would* see,
so we can confirm our P0+P1+P3+P4 fixes actually catch the cycle and the
function-pointer dependency before paying for an end-to-end LLM run.
"""

import logging
import os
import sys
import types

sys.path.insert(0, os.path.dirname(__file__))
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "gpt_translation"))

# Stub the same modules tests stub so we don't need OpenAI/tiktoken/sympy here.
openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)

tiktoken_stub = types.ModuleType("tiktoken")
tiktoken_stub.encoding_name_for_model = lambda *_a, **_k: "stub"
tiktoken_stub.get_encoding = lambda *_a, **_k: types.SimpleNamespace(
    encode=lambda text: (text or "").split()
)
sys.modules.setdefault("tiktoken", tiktoken_stub)

sympy_mod = types.ModuleType("sympy")
codegen_mod = types.ModuleType("sympy.codegen")
cnodes_mod = types.ModuleType("sympy.codegen.cnodes")
cnodes_mod.struct = object()
sys.modules.setdefault("sympy", sympy_mod)
sys.modules.setdefault("sympy.codegen", codegen_mod)
sys.modules.setdefault("sympy.codegen.cnodes", cnodes_mod)

from functionAndDeps import FunctionAndDependencies
from functionAndDepsExtractor import FunctionAndDepsExtractor
from gpt_translation.translation_utils_mixin import TranslationUtilsMixin


class _SccProbe(TranslationUtilsMixin):
    def __init__(self):
        self.logger = logging.getLogger("validate")

    def getTypeDependencyGraph(self):
        # Bypass the struct-context bootstrap (we only care about SCC + deps here).
        class _NoopGraph:
            def flattened_topo_order(self):
                return []
        return _NoopGraph()


def main():
    nanosvgI = os.path.join(
        os.path.dirname(__file__),
        "inputs-complex", "nanosvg", "nanosvg.i",
    )
    if not os.path.exists(nanosvgI):
        print(f"Missing nanosvg.i at {nanosvgI}")
        sys.exit(1)

    FunctionAndDependencies.resetTypeSystem()
    logger = logging.getLogger("validate")
    logger.addHandler(logging.NullHandler())
    extractor = FunctionAndDepsExtractor(logger)
    funcOrder = []
    funcMap = extractor.extractFuncsAndDeps(nanosvgI, funcOrder, None)

    # Refresh deps across the full map (this is what translationValidator does).
    extractor.refreshGlobalDependencies(funcMap)

    print(f"=== nanosvg dependency / SCC report ===")
    print(f"Total functions extracted: {len(funcMap)}")

    # Specific check #1: did P4 fix register the function-pointer args of nsvgParse?
    interesting = ("nsvgParse", "nsvg__parseXML", "nsvg__startElement",
                   "nsvg__endElement", "nsvg__content")
    print()
    print("--- P4 (function-pointer dependency) check ---")
    if "nsvgParse" not in funcMap:
        print("  WARN: nsvgParse not extracted from nanosvg.i")
    else:
        nsvgParseDeps = sorted(funcMap["nsvgParse"].dependFunctions)
        print(f"  nsvgParse.dependFunctions ({len(nsvgParseDeps)} entries):")
        for dep in nsvgParseDeps:
            marker = "  <- function pointer" if dep in {"nsvg__startElement", "nsvg__endElement", "nsvg__content"} else ""
            print(f"    - {dep}{marker}")
        for needed in ("nsvg__startElement", "nsvg__endElement", "nsvg__content"):
            if needed in funcMap and needed not in funcMap["nsvgParse"].dependFunctions:
                print(f"  FAIL: nsvgParse should depend on {needed} but does not")

    # Specific check #2: SCC detection for the parseAttr cycle.
    probe = _SccProbe()
    sccs = probe.findStronglyConnectedComponents(funcMap)
    multiSccs = [scc for scc in sccs if len(scc) > 1]
    print()
    print(f"--- P1 (SCC detection) check ---")
    print(f"Total SCCs: {len(sccs)} ({len(multiSccs)} multi-function, "
          f"{sum(1 for s in sccs if len(s) == 1)} single-function)")
    for scc in multiSccs:
        print(f"  SCC group: {list(scc)}")

    # Specific check #3: confirm parseAttr / parseStyle / parseNameValue land in the same SCC.
    print()
    print("--- nanosvg-specific cycle assertion ---")
    cycleMembers = {"nsvg__parseAttr", "nsvg__parseStyle", "nsvg__parseNameValue"}
    foundIn = None
    for scc in sccs:
        if cycleMembers.issubset(set(scc)):
            foundIn = scc
            break
    if foundIn is None:
        print(f"  FAIL: parseAttr/parseStyle/parseNameValue not in same SCC")
        for member in cycleMembers:
            for scc in sccs:
                if member in scc:
                    print(f"    {member} is in SCC of size {len(scc)}: {list(scc)}")
    else:
        print(f"  PASS: parseAttr/parseStyle/parseNameValue in SCC of size {len(foundIn)}: {list(foundIn)}")

    # Specific check #4: createSccTopoQueue drains completely (no leftover).
    sccQueue, sccIncomingEdges, sccConsumers, sccsList, funcToScc, _structs = probe.createSccTopoQueue(funcMap)
    drainOrder = []
    while sccQueue:
        sid = sccQueue.popleft()
        drainOrder.append(sid)
        for consumer in sccConsumers[sid]:
            sccIncomingEdges[consumer] -= 1
            if sccIncomingEdges[consumer] == 0:
                sccQueue.append(consumer)
    leftover = [sid for sid, c in sccIncomingEdges.items() if c > 0]
    print()
    print(f"--- P0 / topo drain check ---")
    print(f"  SCCs processed: {len(drainOrder)} / {len(sccsList)}")
    if leftover:
        leftoverFuncs = sorted(f for sid in leftover for f in sccsList[sid])
        print(f"  FAIL: leftover SCCs after drain: {len(leftover)}")
        print(f"  Leftover functions ({len(leftoverFuncs)}):")
        for f in leftoverFuncs:
            print(f"    - {f}")
    else:
        print(f"  PASS: queue drained completely, no functions stranded")

    # Specific check #5: how many functions does merged_funcs *would* contain?
    # Approximation: every function in funcMap that's in some SCC reachable from
    # the initial queue (which is all of them when no leftover).
    if not leftover:
        coveredFuncs = sum(len(sccsList[sid]) for sid in drainOrder)
        print()
        print(f"--- merged_funcs.rs coverage estimate ---")
        print(f"  Functions reachable through topo drain: {coveredFuncs} / {len(funcMap)}")
        if coveredFuncs == len(funcMap):
            print(f"  PASS: every function will be sent for translation")
        else:
            print(f"  WARN: {len(funcMap) - coveredFuncs} functions stranded")


if __name__ == "__main__":
    main()
