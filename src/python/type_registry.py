from __future__ import annotations

from collections import deque
from dataclasses import dataclass, field
from enum import Enum
from typing import Optional, Tuple


class TypeKind(str, Enum):
    STRUCT = "struct"
    UNION = "union"
    ENUM = "enum"
    TYPEDEF = "typedef"
    EXTERN = "extern"
    STATIC = "static"


class TranslationMode(str, Enum):
    RICH_STRUCT = "rich_struct"
    PLAIN_STRUCT = "plain_struct"
    UNION = "union"
    ENUM = "enum"
    TYPEDEF = "typedef"
    EXTERN = "extern"
    STATIC = "static"


# UNION sorts before STRUCT so that when topo-sort produces a tied batch,
# unions are emitted first — parent structs frequently embed them.
_TYPE_KIND_PRIORITY = {
    TypeKind.TYPEDEF: 0,
    TypeKind.ENUM: 1,
    TypeKind.UNION: 2,
    TypeKind.STRUCT: 3,
    TypeKind.EXTERN: 4,
    TypeKind.STATIC: 5,
}


@dataclass(frozen=True, order=True)
class TypeNodeKey:
    kind: TypeKind
    name: str

    def storage_key(self):
        return f"{self.kind.value}:{self.name}"


@dataclass
class UsageExample:
    function_name: str
    code_snippet: str
    access_paths: Tuple[str, ...] = ()


@dataclass
class TypeNode:
    key: TypeNodeKey
    cCode: object = ""
    usageList: dict = field(default_factory=dict)
    useFunctionList: list = field(default_factory=list)
    rustCode: str = ""
    identifiers: set = field(default_factory=set)
    depends_on: set = field(default_factory=set)
    used_by_functions: set = field(default_factory=set)
    extracted_by: set = field(default_factory=set)
    translation_mode: Optional[TranslationMode] = None
    usage_examples: list = field(default_factory=list)

    @property
    def name(self):
        return self.key.name

    @property
    def kind(self):
        return self.key.kind

    def merge_c_code_if_missing(self, c_code):
        if (not self.cCode) and c_code:
            self.cCode = c_code

    def add_function_use(self, function_name):
        if not function_name:
            return
        self.used_by_functions.add(function_name)
        if function_name not in self.useFunctionList:
            self.useFunctionList.append(function_name)

    def add_usage_example(self, function_name, code_snippet, access_path=()):
        if not code_snippet:
            return
        example = UsageExample(function_name=function_name, code_snippet=code_snippet, access_paths=tuple(access_path))
        if example not in self.usage_examples:
            self.usage_examples.append(example)

    def merge_usage_list_entry(self, field_name, code_snippet):
        if not field_name or not code_snippet:
            return
        existing = self.usageList.setdefault(field_name, [])
        if code_snippet not in existing:
            existing.append(code_snippet)


class TypeRegistry:
    def __init__(self):
        self._nodes = {}

    def reset(self):
        self._nodes = {}

    def all_nodes(self):
        return list(self._nodes.values())

    def all_keys(self):
        return list(self._nodes.keys())

    def get(self, key):
        return self._nodes.get(key)

    def get_by_name(self, kind, name):
        return self.get(TypeNodeKey(kind, name))

    def iter_by_kind(self, kind):
        for key in self.sorted_keys():
            if key.kind == kind:
                yield self._nodes[key]

    def sorted_keys(self):
        return sorted(self._nodes.keys(), key=lambda key: (_TYPE_KIND_PRIORITY[key.kind], key.name))

    def upsert(self, kind, name, c_code=None, translation_mode=None, extracted_by=None):
        key = TypeNodeKey(kind, name)
        node = self._nodes.get(key)
        if node is None:
            node = TypeNode(key=key, cCode=c_code or "", translation_mode=translation_mode)
            self._nodes[key] = node
        else:
            node.merge_c_code_if_missing(c_code)
            if translation_mode == TranslationMode.RICH_STRUCT:
                node.translation_mode = TranslationMode.RICH_STRUCT
            elif node.translation_mode is None and translation_mode is not None:
                node.translation_mode = translation_mode
        if extracted_by:
            node.extracted_by.add(extracted_by)
        return node

    def upsert_from_node(self, incoming_node):
        node = self.upsert(
            incoming_node.kind,
            incoming_node.name,
            c_code=incoming_node.cCode,
            translation_mode=incoming_node.translation_mode,
        )
        self.merge_node(node.key, incoming_node)
        return node

    def merge_node(self, key, incoming_node):
        node = self._nodes[key]
        node.merge_c_code_if_missing(incoming_node.cCode)
        node.identifiers |= set(incoming_node.identifiers)
        node.depends_on |= set(incoming_node.depends_on)
        node.extracted_by |= set(incoming_node.extracted_by)
        for function_name in incoming_node.used_by_functions:
            node.add_function_use(function_name)
        for field_name, usages in incoming_node.usageList.items():
            for usage in usages:
                node.merge_usage_list_entry(field_name, usage)
        for example in incoming_node.usage_examples:
            node.add_usage_example(example.function_name, example.code_snippet, example.access_paths)
        if incoming_node.translation_mode == TranslationMode.RICH_STRUCT:
            node.translation_mode = TranslationMode.RICH_STRUCT
        elif node.translation_mode is None and incoming_node.translation_mode is not None:
            node.translation_mode = incoming_node.translation_mode
        if not node.rustCode and incoming_node.rustCode:
            node.rustCode = incoming_node.rustCode
        return node


class TypeDependencyGraph:
    def __init__(self, nodes, adjacency):
        self.nodes = list(nodes)
        self.adjacency = {key: set(adjacency.get(key, set())) for key in self.nodes}
        self.reverse_adjacency = {key: set() for key in self.nodes}
        for source, targets in self.adjacency.items():
            for target in targets:
                self.reverse_adjacency.setdefault(target, set()).add(source)
        self._topo_batches = None
        self._flattened_topo_order = None

    def closure(self, root_keys):
        visited = set()
        queue = deque([key for key in root_keys if key in self.adjacency])
        while queue:
            current = queue.popleft()
            if current in visited:
                continue
            visited.add(current)
            for dependency in self.adjacency.get(current, set()):
                if dependency not in visited:
                    queue.append(dependency)
        return visited

    def topo_batches(self):
        if self._topo_batches is None:
            self._topo_batches = self._compute_topo_batches()
        return self._topo_batches

    def flattened_topo_order(self):
        if self._flattened_topo_order is None:
            ordered = []
            for batch in self.topo_batches():
                ordered.extend(sorted(batch, key=lambda key: (_TYPE_KIND_PRIORITY[key.kind], key.name)))
            self._flattened_topo_order = ordered
        return self._flattened_topo_order

    def ordered_closure(self, root_keys):
        closure_keys = self.closure(root_keys)
        return [key for key in self.flattened_topo_order() if key in closure_keys]

    def predecessors_of_batch(self, batch):
        predecessors = set()
        batch_set = set(batch)
        for key in batch:
            predecessors |= self.adjacency.get(key, set())
        return predecessors - batch_set

    def _compute_topo_batches(self):
        sccs = self._tarjan_scc()
        component_index = {}
        for index, component in enumerate(sccs):
            for key in component:
                component_index[key] = index

        component_graph = {idx: set() for idx in range(len(sccs))}
        indegree = {idx: 0 for idx in range(len(sccs))}
        for source, dependencies in self.adjacency.items():
            source_component = component_index[source]
            for dependency in dependencies:
                dependency_component = component_index[dependency]
                if dependency_component == source_component:
                    continue
                if source_component not in component_graph[dependency_component]:
                    component_graph[dependency_component].add(source_component)
                    indegree[source_component] += 1

        ready = [
            idx for idx, degree in indegree.items() if degree == 0
        ]
        ready.sort(key=lambda idx: self._component_sort_key(sccs[idx]))
        ordered_components = []
        while ready:
            idx = ready.pop(0)
            ordered_components.append(idx)
            for dependent in sorted(component_graph[idx], key=lambda comp_idx: self._component_sort_key(sccs[comp_idx])):
                indegree[dependent] -= 1
                if indegree[dependent] == 0:
                    ready.append(dependent)
                    ready.sort(key=lambda comp_idx: self._component_sort_key(sccs[comp_idx]))

        return [sorted(sccs[idx], key=lambda key: (_TYPE_KIND_PRIORITY[key.kind], key.name)) for idx in ordered_components]

    def _component_sort_key(self, component):
        ordered = sorted(component, key=lambda key: (_TYPE_KIND_PRIORITY[key.kind], key.name))
        first = ordered[0]
        return (_TYPE_KIND_PRIORITY[first.kind], first.name)

    def _tarjan_scc(self):
        index_counter = [0]
        stack = []
        on_stack = set()
        index_map = {}
        lowlink_map = {}
        components = []

        def strongconnect(node):
            index_map[node] = index_counter[0]
            lowlink_map[node] = index_counter[0]
            index_counter[0] += 1
            stack.append(node)
            on_stack.add(node)

            for dependency in sorted(self.adjacency.get(node, set()), key=lambda key: (_TYPE_KIND_PRIORITY[key.kind], key.name)):
                if dependency not in index_map:
                    strongconnect(dependency)
                    lowlink_map[node] = min(lowlink_map[node], lowlink_map[dependency])
                elif dependency in on_stack:
                    lowlink_map[node] = min(lowlink_map[node], index_map[dependency])

            if lowlink_map[node] == index_map[node]:
                component = []
                while True:
                    current = stack.pop()
                    on_stack.remove(current)
                    component.append(current)
                    if current == node:
                        break
                components.append(component)

        for node in sorted(self.nodes, key=lambda key: (_TYPE_KIND_PRIORITY[key.kind], key.name)):
            if node not in index_map:
                strongconnect(node)

        return components
