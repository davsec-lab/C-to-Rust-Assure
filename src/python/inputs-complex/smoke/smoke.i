# 1 "smoke.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 357 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "smoke.c" 2
# 14 "smoke.c"
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
