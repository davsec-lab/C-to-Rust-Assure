pub unsafe fn createGraph(node_count: libc::c_int) -> *mut Graph {
    let graph = libc::malloc(std::mem::size_of::<Graph>()) as *mut Graph;
    (*graph).nodes =
        libc::malloc((node_count as usize).wrapping_mul(std::mem::size_of::<Node>())) as *mut Node;
    (*graph).node_count = node_count;
    (*graph).edges = std::ptr::null_mut();
    (*graph).edge_count = 0;
    (*graph).capacity = 0;
    let mut i: libc::c_int = 0;
    while i < node_count {
        let node = (*graph).nodes.offset(i as isize);
        (*node).id = i;
        (*node).edges = std::ptr::null_mut();
        (*node).weights = std::ptr::null_mut();
        (*node).edge_count = 0;
        (*node).capacity = 0;
        i += 1;
    }
    graph
}
