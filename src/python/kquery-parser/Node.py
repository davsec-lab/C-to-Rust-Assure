import re


class Node:

    NODE_ID = 0

    @classmethod
    def reset_node_id(cls):
        cls.NODE_ID = 0

    def process_value(self, value):
        if not value:
            return value
        if value.startswith("const_arr"):
            return "const_arr"
        return value

    def check_klee_offset(self, value):
        if not value:
            return False
        if bool(re.fullmatch(r'\d{20}', value)):
            return True
        else:
            return False

    def fetch_klee_offset_type(self, G, value):
        if G.offset_converter.fetch_base_offset(value):
            return "normal_klee_offset"
        else:
            return "other_klee_offset"

    def convert_real_offset(self, G, value):
        offset = G.offset_converter.fetch_base_offset(value)
        if offset:
            return offset
        else:
            return "klee_offset"

    def __init__(self, value, type_value, G):
        # We maintain a reference to the networkx graph in each Node
        self.G = G

        # NetworkX seems to need an unique ID per node, or it "merges" the two nodes
        # with same value.
        Node.NODE_ID+=1
        self.node_id = Node.NODE_ID
        self.children = [] # List of Nodes
        attr = {}

        if self.check_klee_offset(value):
            self.value = self.convert_real_offset(G, value)
            self.type_value = self.fetch_klee_offset_type(G, value)
        else:
            self.value = self.process_value(value)
            self.type_value = type_value

        if self.value:
            attr = {'label': self.value}
        if self.type_value:
            attr['type'] = self.type_value
        self.G.add_node(self.node_id, **attr)

    def deep_copy(self):
        # When we encounter a definition (NO, for example)
        # We will deep copy the tree that is rooted at that definition
        # print("Calling deep copy for " + str(self))
        copied_node = Node(self.value, self.type_value, self.G)
        for child in self.children:
            copied_child = child.deep_copy()
            copied_node.children.append(copied_child)
            self.G.add_edge(copied_node.node_id, copied_child.node_id)
        return copied_node