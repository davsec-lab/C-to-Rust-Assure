import ast
import pathlib
import textwrap


SAMPLE = """#[repr(C)]
pub struct internal_hooks {
    pub allocate: Option<unsafe extern "C" fn(size: usize) -> *mut c_void>,
    pub deallocate: Option<unsafe extern "C" fn(pointer: *mut c_void)>,
    pub reallocate: Option<unsafe extern "C" fn(pointer: *mut c_void, size: usize) -> *mut c_void>,
}

extern "C" {
    fn malloc(size: usize) -> *mut c_void;
    fn free(pointer: *mut c_void);
    fn realloc(pointer: *mut c_void, size: usize) -> *mut c_void;
}

pub static mut global_hooks: internal_hooks = internal_hooks {
    allocate: Some(malloc),
    deallocate: Some(free),
    reallocate: Some(realloc),
};
"""


def load_clean_code_functions(source_path: pathlib.Path):
    source = source_path.read_text()
    module = ast.parse(source)
    translator_class = next(
        node for node in module.body
        if isinstance(node, ast.ClassDef) and node.name == "Translator"
    )
    method_names = {"strip_fence", "cleanCode"}
    selected_methods = []
    for node in translator_class.body:
        if isinstance(node, ast.FunctionDef) and node.name in method_names:
            selected_methods.append(textwrap.dedent(ast.get_source_segment(source, node)))

    namespace = {}
    exec("import re\n\n" + "\n\n".join(selected_methods), namespace)
    return namespace["strip_fence"], namespace["cleanCode"]


class ProbeTranslator:
    pass


def main():
    source_path = pathlib.Path(__file__).with_name("gpt_translation").joinpath("translator.py")
    strip_fence, clean_code = load_clean_code_functions(source_path)

    ProbeTranslator.strip_fence = strip_fence
    ProbeTranslator.cleanCode = clean_code

    translator = ProbeTranslator()
    print(translator.cleanCode(SAMPLE))


if __name__ == "__main__":
    main()
