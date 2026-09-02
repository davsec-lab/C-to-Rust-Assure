/* smoke — the minimal smoke-test corpus for run_eval (DESIGN.md §10 "validate's three gates").
 *
 * Goal: **run the whole 5-step pipeline in seconds**, so that "the chain is broken" is caught
 * before any real evaluation cost is spent.
 *
 * Lesson from 2026-08-20: the image was missing klee-stats, and it took a full 21 minutes of KLEE
 * before blowing up at step 5/5. A smoke test that is too expensive cannot act as a gate — so this
 * one is deliberately built to have:
 *
 *   · no #include              tiny preprocessed output, no libc modeling cost
 *   · no loops                 KLEE exhausts every path and terminates at once, never hits max-time
 *   · a struct dependency      still covers the struct-replay branch of the prompt
 *   · pointer params + branches  still produces several symbols, covering the differential comparison
 */

struct smoke_box {
    int lo;
    int hi;
};

int smoke_span(struct smoke_box *b)
{
    return b->hi - b->lo;
}

int smoke_clamp(struct smoke_box *b, int v)
{
    if (v < b->lo) {
        return b->lo;
    }
    if (v > b->hi) {
        return b->hi;
    }
    return v;
}
