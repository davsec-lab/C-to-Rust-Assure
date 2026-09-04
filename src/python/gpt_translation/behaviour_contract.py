"""The behaviour-preservation contract for the C -> Rust function prompt.

The metric is a symbolic-tree comparison, so two programs that "do the same
thing" but compute it differently fail. The contract states that explicitly and
enumerates the rewrites the model most often makes in the name of idiom.
"""

C_SEMANTIC_FIDELITY_CONTRACT = """
============================================================
BEHAVIOUR-PRESERVATION CONTRACT - read this before writing code
============================================================
This translation is checked by running the C and the Rust under a symbolic
executor and comparing, argument by argument, the symbolic expression each
one leaves behind. Two programs that "do the same thing" but compute it
differently FAIL. Transliterate; do not improve.

1. TYPES ARE FIXED BY THE C DECLARATION.
   Every parameter, local, struct field and return value keeps the width and
   signedness of its C type: `int`->`i32`, `unsigned int`->`u32`,
   `unsigned char`->`u8`, `long`->`i64`, `size_t`->`usize`, `char *`->`*mut
   c_char`.
   - A C `int` used as a flag is STILL an `int`. Never introduce `bool` for
     it. `int f = p->flag; ... p->flag = f;` must round-trip the original
     value; `let f: bool = p.flag != 0; ... p.flag = f as i32;` rewrites
     every value other than 0 and 1 into 1 and is a behaviour change.
   - Test integers in place (`if f != 0`), do not change how they are stored.
   - Do not widen, narrow, or re-sign an intermediate result.

2. EVALUATION ORDER AND CALL COUNT ARE PART OF THE BEHAVIOUR.
   - Never hoist a subexpression out of the branch that guards it. C's
     `if (a) {...} else if (f(c)) {...}` calls `f` only when `a` is false;
     a `let fc = f(c);` above the chain calls it on every path. Compute each
     condition at the point the C computes it, inside the arm that needs it.
   - `&&` and `||` short-circuit; `?:` evaluates exactly one arm. Keep that.
   - The sequence of calls made on each path must match the C exactly, both
     which callee and how many times.

3. STATEMENT SCOPE IS PART OF THE BEHAVIOUR.
   Keep every statement at the nesting depth the C puts it at. If the C reads
   `if (cb) cb(x); s1; s2;` then `s1` and `s2` run unconditionally - they do
   NOT move inside `if let Some(f) = cb { ... }`. This is easy to get wrong in
   preprocessed sources, where a macro expands to a call plus its fixed-up
   state updates on a single line. Re-read any line containing several `;`.

4. DO NOT ADD DEFENSIVE CODE, AND DO NOT REMOVE CHECKS.
   No null checks, bounds checks, `Option`/`Result` early returns, overflow
   guards, `checked_*`/`saturating_*` substitutions, or `assert!`s that the C
   does not have - each one prunes a path the C would take. Equally, keep
   every check the C does have, in the same place. Where C arithmetic would
   wrap, use `wrapping_add`/`wrapping_sub`/`wrapping_mul` rather than adding
   a guard around it.

5. CONTROL FLOW MAPS ONE TO ONE.
   `while`, `do/while`, `for`, `break`, `continue`, early `return`, and
   `switch` (including fallthrough) keep their shape and their trip counts.
   A `switch` on a value with a `default: break;` keeps the default arm.

6. MEMORY SHAPE IS PART OF THE BEHAVIOUR.
   Raw pointer parameters stay raw pointers; keep `*mut T` / `*const T` and
   the C's pointer arithmetic rather than converting to `&mut T`, slices,
   `Vec`, or `String`. An `unsafe` block is the correct answer when the
   alternative is restructuring which bytes get read or written. Struct
   fields keep their declared order.

Idiomatic Rust is welcome ONLY where it is observationally identical to the
C. If in doubt, write the boring, literal translation.
============================================================
"""
