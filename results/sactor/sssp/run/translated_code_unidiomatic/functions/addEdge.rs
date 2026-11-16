pub unsafe fn addEdge(graph: *mut Graph, from: libc::c_int, to: libc::c_int, weight: libc::c_int) {
    let node: *mut Node = (*graph).nodes.offset(from as isize);
    if (*node).edge_count >= (*node).capacity {
        (*node).capacity = if (*node).capacity == 0 {
            4
        } else {
            (*node).capacity * 2
        };
        (*node).edges = libc::realloc(
            (*node).edges as *mut libc::c_void,
            ((*node).capacity as usize) * std::mem::size_of::<libc::c_int>(),
        ) as *mut libc::c_int;
        (*node).weights = libc::realloc(
            (*node).weights as *mut libc::c_void,
            ((*node).capacity as usize) * std::mem::size_of::<libc::c_int>(),
        ) as *mut libc::c_int;
    }
    *(*node).edges.offset((*node).edge_count as isize) = to;
    *(*node).weights.offset((*node).edge_count as isize) = weight;
    (*node).edge_count += 1;
    if (*graph).edge_count >= (*graph).capacity {
        (*graph).capacity = if (*graph).capacity == 0 {
            1000
        } else {
            (*graph).capacity * 2
        };
        (*graph).edges = libc::realloc(
            (*graph).edges as *mut libc::c_void,
            ((*graph).capacity as usize) * std::mem::size_of::<Edge>(),
        ) as *mut Edge;
    }
    let e: *mut Edge = (*graph).edges.offset((*graph).edge_count as isize);
    (*e).from = from;
    (*e).to = to;
    (*e).weight = weight;
    (*graph).edge_count += 1;
}
