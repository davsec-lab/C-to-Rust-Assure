pub unsafe fn freeGraph(graph: *mut Graph) {
    let mut i: libc::c_int = 0;
    while i < (*graph).node_count {
        let node = (*graph).nodes.offset(i as isize);
        libc::free((*node).edges as *mut libc::c_void);
        libc::free((*node).weights as *mut libc::c_void);
        i += 1;
    }
    libc::free((*graph).nodes as *mut libc::c_void);
    libc::free((*graph).edges as *mut libc::c_void);
    libc::free(graph as *mut libc::c_void);
}
