import os
import sys
import types
import unittest

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


class _SccProbe(TranslationUtilsMixin):
    """Minimal probe that exposes only the SCC primitives.

    Bypasses createSccTopoQueue's struct-context bootstrap by overriding
    getTypeDependencyGraph; downstream tests that exercise createSccTopoQueue
    do the same.
    """

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
    """Build a funcMap from {caller: [callee, ...]} edges. Every node is auto-created."""
    nodes = set()
    for caller, callees in edges.items():
        nodes.add(caller)
        for c in callees:
            nodes.add(c)
    funcMap = {n: _FuncDeps(edges.get(n, [])) for n in nodes}
    return funcMap


class TarjanCorrectness(unittest.TestCase):
    def setUp(self):
        self.probe = _SccProbe()

    def test_no_edges_yields_singleton_sccs(self):
        funcMap = _funcMap({"a": [], "b": [], "c": []})
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        self.assertEqual(sorted(sccs), [("a",), ("b",), ("c",)])

    def test_simple_chain_is_singleton_sccs(self):
        # a -> b -> c (DAG, no cycles)
        funcMap = _funcMap({"a": ["b"], "b": ["c"], "c": []})
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        # Tarjan post-order: callees finalize first, so order is c, b, a.
        self.assertEqual(sccs, [("c",), ("b",), ("a",)])

    def test_self_loop_is_single_node_scc(self):
        funcMap = _funcMap({"a": ["a"]})
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        # Self-loop still shows up as a 1-node SCC; algorithm doesn't merge it
        # with anything else, but it IS strongly connected to itself.
        self.assertEqual(sccs, [("a",)])

    def test_two_node_cycle(self):
        funcMap = _funcMap({"a": ["b"], "b": ["a"]})
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        self.assertEqual(sccs, [("a", "b")])

    def test_three_node_cycle_matches_nanosvg_pattern(self):
        # parseAttr -> parseStyle -> parseNameValue -> parseAttr (real nanosvg cycle)
        funcMap = _funcMap({
            "parseAttr": ["parseStyle"],
            "parseStyle": ["parseNameValue"],
            "parseNameValue": ["parseAttr"],
        })
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        self.assertEqual(len(sccs), 1)
        self.assertEqual(sccs[0], ("parseAttr", "parseNameValue", "parseStyle"))

    def test_cycle_with_external_callers_topo_order(self):
        # outer -> parseAttr ; parseAttr <-> parseStyle <-> parseNameValue cycle
        # outer should be in a separate SCC, processed AFTER the cycle.
        funcMap = _funcMap({
            "outer": ["parseAttr"],
            "parseAttr": ["parseStyle"],
            "parseStyle": ["parseNameValue"],
            "parseNameValue": ["parseAttr"],
        })
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        # The cycle SCC must precede outer's SCC (callees first in Tarjan post-order).
        flat = [s for scc in sccs for s in scc]
        cycleIdx = flat.index("parseAttr")
        outerIdx = flat.index("outer")
        self.assertLess(cycleIdx, outerIdx,
                        "cycle SCC should be finalized before its caller's SCC")

    def test_disconnected_components(self):
        funcMap = _funcMap({
            "a": ["b"], "b": [],          # component 1
            "x": ["y"], "y": ["x"],        # component 2 (cycle)
            "lone": [],                    # component 3
        })
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        self.assertEqual(len(sccs), 4)  # {b}, {a}, {x,y}, {lone}
        sccSets = [frozenset(s) for s in sccs]
        self.assertIn(frozenset({"x", "y"}), sccSets)
        self.assertIn(frozenset({"a"}), sccSets)
        self.assertIn(frozenset({"b"}), sccSets)
        self.assertIn(frozenset({"lone"}), sccSets)

    def test_nested_cycles(self):
        # Two interlocked cycles sharing a node should collapse into one big SCC.
        # a -> b -> c -> a, b -> d -> b
        funcMap = _funcMap({
            "a": ["b"],
            "b": ["c", "d"],
            "c": ["a"],
            "d": ["b"],
        })
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        self.assertEqual(len(sccs), 1)
        self.assertEqual(sccs[0], ("a", "b", "c", "d"))

    def test_dependency_outside_funcmap_is_ignored(self):
        # If parseAttr.dependFunctions references "libc_free" that's not in funcMap,
        # it must not crash and not appear in any SCC.
        funcMap = {
            "a": _FuncDeps(["b", "external_libc"]),
            "b": _FuncDeps([]),
        }
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        flat = {s for scc in sccs for s in scc}
        self.assertEqual(flat, {"a", "b"})

    def test_every_function_appears_in_exactly_one_scc(self):
        funcMap = _funcMap({
            "a": ["b", "c"],
            "b": ["d"],
            "c": ["d", "e"],
            "d": [],
            "e": ["a"],  # creates a-c-e-a cycle
        })
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        flat = [s for scc in sccs for s in scc]
        self.assertEqual(sorted(flat), sorted(funcMap.keys()))
        self.assertEqual(len(flat), len(set(flat)),
                         "no function should appear in more than one SCC")

    def test_deep_chain_does_not_recurse_blow_stack(self):
        # iterative Tarjan should handle long chains without RecursionError.
        chain_len = 5000
        edges = {f"f{i}": [f"f{i+1}"] for i in range(chain_len - 1)}
        edges[f"f{chain_len-1}"] = []
        funcMap = _funcMap(edges)
        sccs = self.probe.findStronglyConnectedComponents(funcMap)
        self.assertEqual(len(sccs), chain_len)


if __name__ == "__main__":
    unittest.main()
