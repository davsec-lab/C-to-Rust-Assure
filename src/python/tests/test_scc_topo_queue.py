import os
import sys
import types
import unittest
from collections import deque

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

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

from gpt_translation.translation_utils_mixin import TranslationUtilsMixin


class _FuncDeps:
    def __init__(self, deps):
        self.dependFunctions = list(deps)


class _Probe(TranslationUtilsMixin):
    def __init__(self):
        class _Logger:
            def __getattr__(self, _n):
                return lambda *a, **k: None

        self.logger = _Logger()

    def getTypeDependencyGraph(self):
        class _NoopGraph:
            def flattened_topo_order(self):
                return []

        return _NoopGraph()


def _funcMap(edges):
    nodes = set()
    for caller, callees in edges.items():
        nodes.add(caller)
        for c in callees:
            nodes.add(c)
    return {n: _FuncDeps(edges.get(n, [])) for n in nodes}


def _drainQueue(probe, funcMap):
    """Run the Kahn loop the way translateAll does, return the order in which
    SCC groups were popped."""
    sccQueue, sccIncomingEdges, sccConsumers, sccs, funcToScc, _structs = probe.createSccTopoQueue(funcMap)
    order = []
    while sccQueue:
        sccId = sccQueue.popleft()
        order.append(sccs[sccId])
        for consumerSccId in sccConsumers[sccId]:
            sccIncomingEdges[consumerSccId] -= 1
            if sccIncomingEdges[consumerSccId] == 0:
                sccQueue.append(consumerSccId)
    leftover = [sid for sid, c in sccIncomingEdges.items() if c > 0]
    return order, leftover


class CreateSccTopoQueueOrder(unittest.TestCase):
    def setUp(self):
        self.probe = _Probe()

    def test_dag_orders_callees_before_callers(self):
        # a -> b -> c
        funcMap = _funcMap({"a": ["b"], "b": ["c"], "c": []})
        order, leftover = _drainQueue(self.probe, funcMap)
        self.assertEqual(leftover, [])
        flat = [f for scc in order for f in scc]
        self.assertLess(flat.index("c"), flat.index("b"))
        self.assertLess(flat.index("b"), flat.index("a"))

    def test_cycle_processed_before_external_caller(self):
        # outer -> {parseAttr <-> parseStyle <-> parseNameValue}
        funcMap = _funcMap({
            "outer": ["parseAttr"],
            "parseAttr": ["parseStyle"],
            "parseStyle": ["parseNameValue"],
            "parseNameValue": ["parseAttr"],
        })
        order, leftover = _drainQueue(self.probe, funcMap)
        self.assertEqual(leftover, [],
                         "Kahn over condensation should drain everything")

        # The 3-function group must precede the 1-function outer group.
        groupSizes = [len(scc) for scc in order]
        bigGroupIdx = groupSizes.index(3)
        outerIdx = next(i for i, scc in enumerate(order) if "outer" in scc)
        self.assertLess(bigGroupIdx, outerIdx)

    def test_drains_completely_when_multiple_independent_cycles_exist(self):
        # Two independent 2-cycles, no caller relations between them.
        funcMap = _funcMap({
            "a": ["b"], "b": ["a"],
            "x": ["y"], "y": ["x"],
        })
        order, leftover = _drainQueue(self.probe, funcMap)
        self.assertEqual(leftover, [])
        self.assertEqual(len(order), 2)
        for scc in order:
            self.assertEqual(len(scc), 2)

    def test_cycle_referencing_external_dep_still_drains(self):
        # cycle calls an external function that's already in funcMap as singleton.
        funcMap = _funcMap({
            "helper": [],
            "a": ["b", "helper"],
            "b": ["a"],
        })
        order, leftover = _drainQueue(self.probe, funcMap)
        self.assertEqual(leftover, [])
        flat = [f for scc in order for f in scc]
        self.assertLess(flat.index("helper"), flat.index("a"))
        self.assertLess(flat.index("helper"), flat.index("b"))

    def test_deeply_nested_cycle_is_single_scc(self):
        # a-b-c forms one cycle; d depends on b.
        funcMap = _funcMap({
            "a": ["b"],
            "b": ["c"],
            "c": ["a"],
            "d": ["b"],
        })
        order, leftover = _drainQueue(self.probe, funcMap)
        self.assertEqual(leftover, [])
        flat = [f for scc in order for f in scc]
        # 'd' depends transitively on the {a,b,c} cycle, so cycle must be processed first.
        cycleEnd = max(flat.index("a"), flat.index("b"), flat.index("c"))
        self.assertLess(cycleEnd, flat.index("d"))

    def test_no_function_lost_in_translation(self):
        funcMap = _funcMap({
            "a": ["b", "c"],
            "b": ["d"],
            "c": ["d", "e"],
            "d": [],
            "e": ["a"],  # creates a-c-e cycle
        })
        order, leftover = _drainQueue(self.probe, funcMap)
        self.assertEqual(leftover, [])
        flat = sorted(f for scc in order for f in scc)
        self.assertEqual(flat, sorted(funcMap.keys()))


class CreateSccTopoQueueReturnsExpectedShape(unittest.TestCase):
    def setUp(self):
        self.probe = _Probe()

    def test_return_tuple_layout(self):
        funcMap = _funcMap({"a": ["b"], "b": []})
        result = self.probe.createSccTopoQueue(funcMap)
        self.assertEqual(len(result), 6)
        sccQueue, sccIncomingEdges, sccConsumers, sccs, funcToScc, contextedStructs = result
        self.assertIsInstance(sccQueue, deque)
        self.assertIsInstance(sccIncomingEdges, dict)
        self.assertIsInstance(sccConsumers, dict)
        self.assertIsInstance(sccs, list)
        self.assertIsInstance(funcToScc, dict)
        self.assertIsInstance(contextedStructs, str)

        # Every function should map to exactly one SCC index.
        self.assertEqual(set(funcToScc.keys()), set(funcMap.keys()))
        for funcName, sccId in funcToScc.items():
            self.assertIn(funcName, sccs[sccId])

        # Initial queue must contain only zero-incoming SCCs (callees first).
        for sccId in sccQueue:
            self.assertEqual(sccIncomingEdges[sccId], 0)


if __name__ == "__main__":
    unittest.main()
