#!/usr/bin/env python3
"""FILE* adapter for split-stage per-function .rs files (runs/adapter-experiment, 2026-09-06).

When a translation abstracts a C `FILE *` parameter into `dyn`/`impl` Read|Write|Seek,
the backend cannot measure the function: a `dyn` fat pointer gets a symbolic vtable
(KLEE dies on the first vtable call) and an `impl` generic is never instantiated
(SymbolizerPass segfaults). `wrap_file_params` renames the translation `<fn>_impl`
(body untouched) and appends a wrapper with the C signature that wraps the
`*mut c_void` in `CFile`, a concrete Read/Write/Seek over libc fread/fputc/fseek.
Only parameters whose C counterpart mentions FILE are touched. The wrapper's `fp`
must be `*mut c_void`, not `*mut libc::FILE`: the zero-sized `{[0 x i8]}` pointee makes
SymbolizerPass read one byte from a 0-byte object in main (out-of-bound).

Shared by split_merged.py (run_eval path) and split_perfassure_merged.py (perfassure_result path).
Disable with ASSURE_FILE_ADAPTER=0 or the scripts' --no-file-adapter flag.
"""
import os
import re

from tree_sitter import Language, Parser
import tree_sitter_c
import tree_sitter_rust

RUST = Language(tree_sitter_rust.language())
C_LANG = Language(tree_sitter_c.language())


def enabled_by_env():
    return os.environ.get("ASSURE_FILE_ADAPTER", "1").strip().lower() not in ("0", "false", "no", "off")


TRAIT_PARAM = re.compile(r"\b(?:dyn|impl)\b[^,)]*\b(?:Read|Write|Seek)\b")

CFILE_ADAPTER = '''
/// FILE* adapter (split_perfassure_merged.py): a concrete Read/Write/Seek over libc so the
/// translation's dyn/impl parameter gets a real vtable / a monomorphisation, and its side
/// effects land on the same libc calls the C side makes.
pub struct CFile(pub *mut libc::FILE);
impl std::io::Read for CFile {
    fn read(&mut self, buf: &mut [u8]) -> std::io::Result<usize> {
        let n = unsafe { libc::fread(buf.as_mut_ptr() as *mut libc::c_void, 1, buf.len(), self.0) };
        Ok(n as usize)
    }
}
impl std::io::Write for CFile {
    fn write(&mut self, buf: &[u8]) -> std::io::Result<usize> {
        for &b in buf {
            if unsafe { libc::fputc(b as i32, self.0) } == -1 {
                return Err(std::io::ErrorKind::Other.into());
            }
        }
        Ok(buf.len())
    }
    fn flush(&mut self) -> std::io::Result<()> { Ok(()) }
}
impl std::io::Seek for CFile {
    fn seek(&mut self, pos: std::io::SeekFrom) -> std::io::Result<u64> {
        let (off, whence) = match pos {
            std::io::SeekFrom::Start(n) => (n as i64, libc::SEEK_SET),
            std::io::SeekFrom::End(n) => (n, libc::SEEK_END),
            std::io::SeekFrom::Current(n) => (n, libc::SEEK_CUR),
        };
        if unsafe { libc::fseek(self.0, off, whence) } != 0 {
            return Err(std::io::ErrorKind::Other.into());
        }
        Ok(unsafe { libc::ftell(self.0) } as u64)
    }
}
'''


def c_param_types(i_src: bytes, fn: str):
    """Parameter type strings of C function `fn` in a .i (None if not found)."""
    tree = Parser(C_LANG).parse(i_src)

    def text(n):
        return i_src[n.start_byte:n.end_byte].decode()

    def find_ident(n):
        if n.type == "identifier":
            return n
        for c in n.children:
            r = find_ident(c)
            if r:
                return r
        return None

    stack = [tree.root_node]
    while stack:
        n = stack.pop()
        if n.type == "function_definition":
            decl = n.child_by_field_name("declarator")
            ident = decl and find_ident(decl)
            if ident and text(ident) == fn:
                plist = next((c for c in decl.children if c.type == "parameter_list"), None)
                if plist is None:          # pointer declarator wraps it
                    for c in decl.children:
                        plist = next((g for g in c.children if g.type == "parameter_list"), None)
                        if plist:
                            break
                if plist is None:
                    return []
                out = []
                for p in plist.children:
                    if p.type == "parameter_declaration":
                        out.append(text(p))
                return out
        stack.extend(n.children)
    return None


def wrap_file_params(rs_text: str, fn: str, i_src: bytes):
    """If `fn` has dyn/impl Read|Write|Seek parameters whose C counterpart is `FILE *`,
    rename it `<fn>_impl` and append a C-signature wrapper + CFile. Returns
    (new_text, n_wrapped) — n_wrapped == 0 means the text is unchanged."""
    src = rs_text.encode()
    tree = Parser(RUST).parse(src)
    node = next((n for n in tree.root_node.children if n.type == "function_item"
                 and src[n.child_by_field_name("name").start_byte:
                         n.child_by_field_name("name").end_byte] == fn.encode()), None)
    if node is None:
        return rs_text, 0
    text = lambda n: src[n.start_byte:n.end_byte].decode()
    params = [p for p in node.child_by_field_name("parameters").children if p.type == "parameter"]
    ctypes = c_param_types(i_src, fn) or []
    wrapper_params, call_args, prelude = [], [], []
    for idx, p in enumerate(params):
        pat, ty = text(p.child_by_field_name("pattern")), text(p.child_by_field_name("type"))
        c_is_file = idx < len(ctypes) and "FILE" in ctypes[idx]
        if TRAIT_PARAM.search(ty) and c_is_file:
            wrapper_params.append(f"{pat}: *mut std::ffi::c_void")
            prelude.append(f"    let mut __{pat} = CFile({pat} as *mut libc::FILE);")
            call_args.append(f"&mut __{pat}")
        else:
            if TRAIT_PARAM.search(ty):
                print(f"[split] {fn}: trait parameter `{pat}: {ty}` has no FILE* counterpart in C "
                      f"({ctypes[idx] if idx < len(ctypes) else '?'}); left as is")
            wrapper_params.append(f"{pat}: {ty}")
            call_args.append(pat)
    if not prelude:
        return rs_text, 0
    name = node.child_by_field_name("name")
    ret = node.child_by_field_name("return_type")
    renamed = src[:name.start_byte] + f"{fn}_impl".encode() + src[name.end_byte:]
    wrapper = (f"\npub unsafe fn {fn}({', '.join(wrapper_params)})"
               f"{' -> ' + text(ret) if ret else ''} {{\n"
               + "\n".join(prelude) + f"\n    {fn}_impl({', '.join(call_args)})\n}}\n")
    return renamed.decode().rstrip("\n") + "\n" + CFILE_ADAPTER + wrapper, len(prelude)
