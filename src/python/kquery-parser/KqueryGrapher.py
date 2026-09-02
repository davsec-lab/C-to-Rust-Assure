from antlr4 import *
from sympy import false

from KqueryLexer import KqueryLexer 
from KqueryParser import KqueryParser
from KqueryVisitor import KqueryVisitor
from networkx.drawing.nx_pydot import write_dot
import os
import sys
from PostProcess import *
from Node import Node

sys.setrecursionlimit(5000)
module_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
sys.path.append(module_path)
from distance import *


# Command to generate the classes (need to do this because versions can be different.
# antlr4 -Dlanguage=Python3 -visitor Kquery.g4
current_dir = os.path.dirname(os.path.abspath(__file__))
log_file = os.path.join(current_dir, "post_process_log.log")

logging.basicConfig(filename=log_file,
                    level=logging.INFO, 
                    format='%(asctime)s - %(levelname)s - %(message)s',
                    )


def extract_unique_numbers_from_string(s):
    numbers_after_eq = set(re.findall(r'=(\d+)', s))

    if numbers_after_eq:
        return ','.join(sorted(numbers_after_eq, key=int))

    numbers_before_eq = set(re.findall(r'(\d+)=', s))

    return ','.join(sorted(numbers_before_eq, key=int)) if numbers_before_eq else ""

def extract_and_relabel_subtree(G: nx.DiGraph, root) -> nx.DiGraph:
    """
    1) Walk G in pre-order (root, then each successor in insertion order).
    2) Assign new labels 0,1,2,… in the order we see them.
    3) Copy over all node- and edge-attributes.
    """
    if root not in G:
        raise KeyError(f"Node {root!r} is not in the graph")

    H = nx.DiGraph()
    mapping = {}          # old_id -> new_label
    next_label = 0        # counter for new labels

    def dfs(u):
        nonlocal next_label

        # 1) assign a new label to u and copy its attrs
        mapping[u] = next_label
        H.add_node(next_label, **G.nodes[u])
        my_label = next_label
        next_label += 1

        # 2) visit each child *in the order it was originally inserted*
        for v in G.successors(u):
            dfs(v)
            # after v has a label, copy the edge over
            H.add_edge(my_label, mapping[v], **G.get_edge_data(u, v))

    dfs(root)
    return H

def is_duplicate_graph(new_graph, seen_list):
    for old_graph in seen_list:
        ged = compare_graph_optimize_edit_distance(new_graph, old_graph, "", True, False, 3)
        if ged == 0:
            return True
    return False


def get_last_field_number(s: str) -> int:
    match = re.search(r'field_(\d+)(?!.*field_)', s)
    return int(match.group(1)) if match else None

class OffsetConverter:

    def __init__(self, offset_map, base_address):
        self.offset_map = offset_map
        self.base_address = base_address

    def fetch_base_offset(self, input):
        for address in self.base_address:
            offset = int(input) - (2 ** 64 - address)
            if offset >= 0 and offset <= 100:
                return str(offset)
        return None

class KqueryASTVisitor(KqueryVisitor):

    def __init__(self):
        self.definition_map = {} # Map of definition to Node
        self.G = nx.DiGraph()
        self.G.update_list_value_node = []

    def visitIdentifier(self, ctx):
        identifier = ctx.getText()
        if identifier in self.definition_map:
            node = self.definition_map[identifier]
            return node.deep_copy()
        return Node(identifier, "", self.G)

    def visitNumber(self, ctx):
        # print("Number")
        number = ctx.getText()
        node =  Node(number, "", self.G)
        return node

    def visitDefinition(self, ctx):
        # Create the node and populate it in the definition_map
        # definition: IDENTIFIER ':' expr;
        identifier = ctx.getChild(0).getText()
        definition = self.visit(ctx.getChild(2))
        self.definition_map[identifier] = definition
        return definition

    def visitNumber_list(self, ctx):
        # number_list: NUMBER | NUMBER ',' number_list;
        node = Node("number_list", "", self.G)
        if ctx.getChildCount() == 1:
            node = Node(ctx.getChild(0).getText(), "", self.G)
            return node
        else:
            child_number = Node(ctx.getChild(0).getText(), "", self.G)
            child_number_list = self.visit(ctx.getChild(2))

            node = Node("NumberList", "", self.G)

            node.children.append(child_number)
            node.children.append(child_number_list)
            self.G.add_edge(node.node_id, child_number.node_id)
            self.G.add_edge(node.node_id, child_number_list.node_id)
        return node

    def visitArray_initializer(self, ctx):
        # array_initializer: 'symbolic' | '[' number_list ']';
        node = Node("array_initializer", "", self.G)
        if ctx.getChildCount() == 1:
            symbolic = ctx.getChild(0).getText()
            child = Node(symbolic, "", self.G)
            node.children.append(child)
            self.G.add_edge(node.node_id, child.node_id)
        else:
            number_list = self.visit(ctx.getChild(1))
            node.children.append(number_list)
            self.G.add_edge(node.node_id, number_list.node_id)

        return node

    def visitArray_declaration(self, ctx):
        # array_declaration: 'array' IDENTIFIER '[' NUMBER? ']' ':' TYPE '->' TYPE '=' array_initializer;
        array = ctx.getChild(0).getText()
        identifier = ctx.getChild(1).getText()
        node = Node(array, identifier, self.G)

        if ctx.getChildCount() == 11:
            array_initializer_index = 10
        else:
            array_initializer_index = 9
        array_initializer = self.visit(ctx.getChild(array_initializer_index))
        
        node.children.append(array_initializer)
        self.G.add_edge(node.node_id, array_initializer.node_id)

        return node

    def visitArithmetic_expr(self, ctx):
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        expr1 = ctx.getChild(3)
        expr2 = ctx.getChild(4)

        child_node1 = self.visit(expr1)
        child_node2 = self.visit(expr2)
        
        node = Node(expr_kind, value_type, self.G)
        node.children.append(child_node1)
        node.children.append(child_node2)

        # self.G.add_node(node)
        self.G.add_edge(node.node_id, child_node1.node_id)
        self.G.add_edge(node.node_id, child_node2.node_id)
        return node

    def visitBitwise_expr(self, ctx):
        # bitwise_expr: '(' bitwise_expr_kind (type)? expr expr ')';
        expr_kind = ctx.getChild(1).getText()
        if ctx.getChildCount() == 6:
            value_type = ctx.getChild(2).getText()
            expr1 = ctx.getChild(3)
            expr2 = ctx.getChild(4)

            child_node1 = self.visit(expr1)
            child_node2 = self.visit(expr2)

            node = Node(expr_kind, value_type, self.G)
            node.children.append(child_node1)
            node.children.append(child_node2)

            # self.G.add_node(node)
            self.G.add_edge(node.node_id, child_node1.node_id)
            self.G.add_edge(node.node_id, child_node2.node_id)
        elif ctx.getChildCount() == 5:
            expr1 = ctx.getChild(2)
            expr2 = ctx.getChild(3)

            child_node1 = self.visit(expr1)
            child_node2 = self.visit(expr2)

            node = Node(expr_kind, "", self.G)
            node.children.append(child_node1)
            node.children.append(child_node2)

            # self.G.add_node(node)
            self.G.add_edge(node.node_id, child_node1.node_id)
            self.G.add_edge(node.node_id, child_node2.node_id)
        return node

    def visitComparison_expr(self, ctx):
        # comparison_expr: '(' comparison_expr_kind (type)? expr expr ')';
        expr_kind = ctx.getChild(1).getText()

        if ctx.getChildCount() == 6:
            value_type = ctx.getChild(2).getText()
            node = Node(expr_kind, value_type, self.G)

            child1 = self.visit(ctx.getChild(3))
            child2 = self.visit(ctx.getChild(4))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node.node_id, child1.node_id)
            self.G.add_edge(node.node_id, child2.node_id)
        else:
            node = Node(expr_kind, "", self.G)

            child1 = self.visit(ctx.getChild(2))
            child2 = self.visit(ctx.getChild(3))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node.node_id, child1.node_id)
            self.G.add_edge(node.node_id, child2.node_id)
        return node

    def visitBv_expr(self, ctx):
        # bv_expr: '(' bv_expr_kind (type)? expr expr ')'; // Bitvector
        expr_kind = ctx.getChild(1).getText()

        if ctx.getChildCount() == 6:
            value_type = ctx.getChild(2).getText()
            node = Node(expr_kind, value_type, self.G)

            child1 = self.visit(ctx.getChild(3))
            child2 = self.visit(ctx.getChild(4))
            
            node.children.append(child1)
            node.children.append(child2)
            if child1:
                self.G.add_edge(node.node_id, child1.node_id)
            if child2:
                self.G.add_edge(node.node_id, child2.node_id)
        else:
            node = Node(expr_kind, "", self.G)

            child1 = self.visit(ctx.getChild(2))
            child2 = self.visit(ctx.getChild(3))
            
            node.children.append(child1)
            node.children.append(child2)
            self.G.add_edge(node.node_id, child1.node_id)
            self.G.add_edge(node.node_id, child2.node_id)
        return node


    def visitExtension_expr(self, ctx):
        # extension_expr: '(' extension_expr_kind type expr ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        child = self.visit(ctx.getChild(3))
        
        node = Node(expr_kind, value_type, self.G)

        node.children.append(child)

        self.G.add_edge(node.node_id, child.node_id)
        return node

    def visitRead_expr(self, ctx):
        # read_expr: '(' read_expr_kind type expr version ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()


        child = self.visit(ctx.getChild(3))
        version = self.visit(ctx.getChild(4))
        
        node = Node(expr_kind, value_type, self.G)

        node.children.append(child)
        node.children.append(version)

        self.G.add_edge(node.node_id, child.node_id)
        self.G.add_edge(node.node_id, version.node_id)
        return node

    def visitSelect_expr(self, ctx):
        # select_expr : '(' select_expr_kind type expr expr expr ')';
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        node = Node(expr_kind, value_type, self.G)

        expr1 = ctx.getChild(3)
        expr2 = ctx.getChild(4)
        expr3 = ctx.getChild(5)

        child1 = self.visit(expr1)
        child2 = self.visit(expr2)
        child3 = self.visit(expr3)

        node.children.append(child1)
        node.children.append(child2)
        node.children.append(child3)

        self.G.add_edge(node.node_id, child1.node_id)
        self.G.add_edge(node.node_id, child2.node_id)
        self.G.add_edge(node.node_id, child3.node_id)

        return node

    def visitNeg_expr(self, ctx):
        # neg_expr: '(' neg_expr_kind (type)? expr ')'
        expr_kind = ctx.getChild(1).getText()
        if ctx.getChildCount() == 5: 
            value_type = ctx.getChild(2).getText()
            node = Node(expr_kind, value_type, self.G)
            expr = ctx.getChild(3)
            child = self.visit(expr)
            node.children.append(child)
            self.G.add_edge(node.node_id, child.node_id)
        else:
            node = Node(expr_kind, "", self.G)
            expr = ctx.getChild(2)
            child = self.visit(expr)
            node.children.append(child)
            self.G.add_edge(node.node_id, child.node_id)
        pass

    def visitArray_read_expr(self, ctx):
        # array_read_expr : '(' array_read_expr_kind type expr version ')'
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        expr = ctx.getChild(3)
        version = ctx.getChild(4)

        child1 = self.visit(expr)
        child2 = self.visit(version) 

        node = Node(expr_kind, value_type, self.G)
        node.children.append(child1)
        node.children.append(child2)

        self.G.add_edge(node.node_id, child1.node_id)
        self.G.add_edge(node.node_id, child2.node_id)
        return node


    def visitArray_read_expr(self, ctx):
        # array_read_expr : '(' array_read_expr_kind type expr version ')'
        expr_kind = ctx.getChild(1).getText()
        value_type = ctx.getChild(2).getText()
        expr = ctx.getChild(3)
        version = ctx.getChild(4)

        child1 = self.visit(expr)
        child2 = self.visit(version) 

        node = Node(expr_kind, value_type, self.G)
        node.children.append(child1)
        node.children.append(child2)

        self.G.add_edge(node.node_id, child1.node_id)
        self.G.add_edge(node.node_id, child2.node_id)
        return node


    def visitUpdate_list(self, ctx):
        """
        update_list : expr '=' expr (',' expr '=' expr)*;
        The expr = expr on the left most is the most recent one.
        We will retain this convention.
        """
        update_node = Node("update_list", "", self.G)
        # print("Update list: " + ctx.getText())

        i = 0
        while i < ctx.getChildCount():
            # If it is a comma, skip it
            if ctx.getChild(i).getText() == ",":
                i += 1
                continue
            sub_node = Node("update_list_sub_node", "", self.G)
            lhs_expr_child = ctx.getChild(i)
            update_node.children.append(sub_node)
            self.G.add_edge(update_node.node_id, sub_node.node_id)
            rhs_expr_child = ctx.getChild(i + 2)
            # print("LHS: " + lhs_expr_child.getText())
            # print("RHS: " + rhs_expr_child.getText())
            if isinstance(lhs_expr_child, KqueryParser.ExprContext):
                lhs_expr_node = self.visit(lhs_expr_child)
                if bool(re.fullmatch(r'\d{1,2}', lhs_expr_child.getText())):
                    self.G.nodes[lhs_expr_node.node_id]['type'] = 'concrete_klee_offset'
                rhs_expr_node = self.visit(rhs_expr_child)
                sub_node.children.append(lhs_expr_node)
                sub_node.children.append(rhs_expr_node)

                # Add edges
                self.G.add_edge(sub_node.node_id, lhs_expr_node.node_id, label="offset")
                self.G.add_edge(sub_node.node_id, rhs_expr_node.node_id, label="value")
            i += 3
        return update_node
           

    def visitVersion(self, ctx):
        """
update_list : expr '=' expr (',' expr '=' expr)*;
version: '[' (update_list)? ']' '@' version
       | IDENTIFIER (':' expr)?
       ;
        """
        version_name = ctx.getText()
        version_node = None
        if not version_name or ctx.getChildCount() > 1:
            version_node = Node("version", "", self.G)
        else:
            version_node = Node(version_name, "", self.G)
        for i in range(ctx.getChildCount()):
            child = ctx.getChild(i)
            if isinstance(child, KqueryParser.Update_listContext):
                update_list_node = self.visit(child)
                version_node.children.append(update_list_node)
                self.G.add_edge(version_node.node_id, update_list_node.node_id)
            if isinstance(child, KqueryParser.IdentifierContext):
                identifier_node = self.visit(child)
                version_node.children.append(identifier_node)
                self.G.add_edge(version_node.node_id, identifier_node.node_id)
            if isinstance(child, KqueryParser.ExprContext):
                expr_node = self.visit(child)
                version_node.children.append(expr_node)
                self.G.add_edge(version_node.node_id, expr_node.node_id)
            if child.getText() == "@":
                version_target = ctx.getChild(i + 1).getText()
                final_node = Node(f'"target : {version_target}"', "", self.G)
                version_node.children.append(final_node)
                self.G.add_edge(version_node.node_id, final_node.node_id)

        return version_node

    def visitExpr(self, ctx):
        # print("Visit expr: " + ctx.getText())
        if ctx.getChildCount() > 1:
            for i in range(ctx.getChildCount()):
                child = ctx.getChild(i)
                self.visit(ctx.getChild(i))
        elif ctx.getChildCount() == 1:
            return self.visit(ctx.getChild(0))
        else:
            return self.visit(ctx)

def fetch_value(key, offset_map, G):
    if not offset_map:
        return None
    field = get_last_field_number(key)
    if field is None:
        return None
    cur = str(field)
    if cur not in offset_map:
        return None
    offset = offset_map[cur]
    if not offset:
        return None

    return find_target_value_node(G, offset)

def post_process_offset_node(G: nx.DiGraph, offset_map):
    for upd in list(G.nodes()):
        if upd not in G.nodes:
            continue
        if G.nodes[upd].get('label') == 'ReadLSB' or G.nodes[upd].get('label') == 'Read':
            succs = list(G.successors(upd))
            if not succs:
                continue
            left_root = succs[0]
            left_root_childs = list(G.successors(left_root))

            right_root = succs[1]

            if G.nodes[right_root].get('label').startswith("arg_value") and (not left_root_childs):
                left_node_value = G.nodes[left_root].get('label')
                if offset_map:
                    has_found_offset = False
                    for k, v in offset_map.items():
                        if v == left_node_value:
                            G.nodes[left_root]['label'] = k
                            has_found_offset = True
                            break

                    if not has_found_offset:
                        for k, v in offset_map.items():
                            offset = int(left_node_value) - int(v)
                            mod = offset % 12
                            multiple = offset / 12
                            if offset > 0 and mod == 0 and multiple > 0 and multiple < 4:
                                G.nodes[left_root]['label'] = k + "." + str(int(multiple))
                                break

def strip_wrappers(s: str) -> str:
    def skip_ws(t, i):
        while i < len(t) and t[i].isspace():
            i += 1
        return i

    def match_token(t, i, tok):
        i = skip_ws(t, i)
        if t.startswith(tok, i):
            return i + len(tok)
        return -1

    def match_wrapper(t, i, tokens):
        if i >= len(t) or t[i] != '(':
            return -1
        j = i + 1
        j = skip_ws(t, j)
        for tok in tokens:
            j = match_token(t, j, tok)
            if j == -1:
                return -1
        j = skip_ws(t, j)
        return j

    patterns = [
        ("Extract", "w32", "0"),
        ("SExt", "w64"),
        ("SExt", "w32"),
        ("ZExt", "w32"),
        ("Extract", "w64", "0"),
        ("SExt", "w128"),
    ]

    changed = True
    while changed:
        changed = False
        i = 0
        while i < len(s):
            start = s.find('(', i)
            if start == -1:
                break

            expr_start = -1
            matched_len_tokens = 0
            for toks in patterns:
                pos = match_wrapper(s, start, toks)
                if pos != -1:
                    expr_start = pos
                    matched_len_tokens = len(toks)
                    break

            if expr_start == -1:
                i = start + 1
                continue

            depth = 0
            j = start
            while j < len(s):
                if s[j] == '(':
                    depth += 1
                elif s[j] == ')':
                    depth -= 1
                    if depth == 0:
                        break
                j += 1
            if j >= len(s):
                i = start + 1
                continue

            expr_end = j
            while expr_end > expr_start and s[expr_end - 1].isspace():
                expr_end -= 1
            replacement = s[expr_start:expr_end]

            s = s[:start] + replacement + s[j+1:]
            changed = True
            i = max(0, start - 1)

    return s

def pre_process_expression(expression):
    return strip_wrappers(expression)

def convert_kquery_to_graph(expressions,
                            function_name,
                            output_dir,
                            seen_graphs,
                            offset_map,
                            base_address):
    # Create the directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    expression_index = 0
    for i in range(len(expressions)):
        Node.reset_node_id()
        expression = pre_process_expression(expressions[i])
    
        input_stream = InputStream(expression)
        lexer = KqueryLexer(input_stream)
        token_stream = CommonTokenStream(lexer)
        # lazy init, need to fill the token
        token_stream.fill()
        parser = KqueryParser(token_stream)
        
        tree = parser.prog()
        print(tree.toStringTree(recog=parser))

        # Create and apply the custom visitor
        print(f"processing expression {i}")
        visitor = KqueryASTVisitor()
        visitor.G.offset_converter = OffsetConverter(offset_map, base_address)
        try:
            visitor.visit(tree)
        except Exception as e:
            print(f"error expression {expression}")
            raise RuntimeError(f"error in expression {i}") from e
        print(f"finish processing expression {i}")
        post_process_offset_node(visitor.G, offset_map)
        removed_offset = simplify_update_list(visitor.G)

        # TODO : remove this logic.. we can remove extension by string operation
        removed = process_graph(visitor.G)
        removed_zext = process_graph_ZExt(visitor.G)
        removed_sub = process_graph_sub(visitor.G)
        removed_empty_extract = process_extract_with_single_node_subtree(visitor.G)
        removed_zext_eq = process_root_zext_eq_only(visitor.G)
        if removed_offset:
            target_value_nodes = fetch_value(output_dir, offset_map, visitor.G)
            if not target_value_nodes:
                output_file = os.path.join(output_dir,
                                           "output_graph_" + function_name + "_" + str(expression_index) + ".dot")
                write_dot(visitor.G, output_file)
                expression_index += 1
            else:
                for idx, current_node in enumerate(target_value_nodes):
                    output_file = os.path.join(output_dir,
                                               "output_graph_" + function_name + "_" + str(
                                                   expression_index + idx) + ".dot")
                    new_graph = extract_and_relabel_subtree(visitor.G, current_node)
                    write_dot(new_graph, output_file)
                expression_index = expression_index + len(target_value_nodes)
        else:
            output_file = os.path.join(output_dir, "output_graph_" + function_name + "_" + str(expression_index) + ".dot")
            write_dot(visitor.G, output_file)
            # convert to pdf
            """
            png_file = os.path.join(output_dir, "output_graph_" + function_name + "_" + str(expression_index) + ".png")
            os.system(f"dot -Tpng {output_file} -o {png_file}")
            """
            expression_index += 1

if __name__ == "__main__":
    kquery_expression = r"""(And w32 (AShr w32 (Extract w32 0 (Extract w64 0 (Add w128 (SExt w128 (Extract w64 0 (Mul w128 4
                                                                                                (SExt w128 N0:(Mul w64 5184443
                                                                                                                       (SExt w64 (AShr w32 (ReadLSB w32 0 arg_value_0)
                                                                                                                                           7)))))))
                                                            (SExt w128 (AShr w64 N0 22)))))
                    25)
          1)"""

    expressions = [
        kquery_expression,
    ]
    base_address = [138412375932928,
                    138414523416576,
                    138410228449280,
                    138409154707456]
    json_map = {
        "0": "0",
        "1": "4",
        "2": "8",
        "3": "24",
        "4": "798",
        "5": "846",
        "6": "44"
    }

    convert_kquery_to_graph(expressions, "abc", "arg_value_0.field_0", set(), json_map, base_address)

