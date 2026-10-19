"""Split file-scope declarations that define a struct, union or enum and declare
variables of it in the same statement:

    struct GenState { uint32_t regs; } GEN_STATE;
    -> struct GenState { uint32_t regs; };
       struct GenState GEN_STATE;

The per-function files the extractor builds from ctags ranges keep the variable as the
line its name is on, ``} GEN_STATE;``, once the struct is pruned as unused: the file no
longer parses and every function in it is dropped without a word (jccc kept 1 of 57
functions, libpsbt 36 of 59). Split, the two declarations are ones it handles.

An anonymous type gets a tag, ``__anon_<kind>_<first variable>``, so the variable can
name it. typedefs, declarations without a variable, and declarations inside functions
are left as they are.
"""
from tree_sitter import Language, Parser
import tree_sitter_c

_C = Language(tree_sitter_c.language())
_TAG_SPECIFIERS = ("struct_specifier", "union_specifier", "enum_specifier")


def _firstIdentifier(node, data):
    if node.type == "identifier":
        return data[node.start_byte:node.end_byte].decode()
    for child in node.children:
        found = _firstIdentifier(child, data)
        if found:
            return found
    return ""


def splitTagDefinitionsWithDeclarators(source):
    """Return ``(newSource, count)``: ``source`` with every such declaration split."""
    data = source.encode()
    tree = Parser(_C).parse(data)
    edits = []
    for node in tree.root_node.children:
        if node.type != "declaration":
            continue
        spec = node.child_by_field_name("type")
        if spec is None or spec.type not in _TAG_SPECIFIERS or spec.child_by_field_name("body") is None:
            continue
        declarator = node.child_by_field_name("declarator")
        if declarator is None:
            continue
        kind = spec.type.split("_")[0]
        specText = data[spec.start_byte:spec.end_byte].decode()
        nameNode = spec.child_by_field_name("name")
        if nameNode is not None:
            tag = data[nameNode.start_byte:nameNode.end_byte].decode()
            definition = specText
        else:
            tag = "__anon_%s_%s" % (kind, _firstIdentifier(declarator, data) or "%d" % node.start_byte)
            definition = kind + " " + tag + specText[len(kind):]
        declText = data[node.start_byte:node.end_byte].decode()
        specStart, specEnd = spec.start_byte - node.start_byte, spec.end_byte - node.start_byte
        declaration = declText[:specStart] + kind + " " + tag + declText[specEnd:]
        edits.append((node.start_byte, node.end_byte, (definition + ";\n" + declaration).encode()))
    for start, end, text in reversed(edits):
        data = data[:start] + text + data[end:]
    return data.decode(), len(edits)


def splitTagDefinitionsInFile(path):
    """Rewrite ``path`` in place if it has such declarations. Returns how many."""
    with open(path, errors="replace") as f:
        source = f.read()
    newSource, count = splitTagDefinitionsWithDeclarators(source)
    if count:
        with open(path, "w") as f:
            f.write(newSource)
    return count
