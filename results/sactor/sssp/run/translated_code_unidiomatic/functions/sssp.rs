pub unsafe fn sssp(graph: *mut Graph, start: libc::c_int) -> libc::c_int {
    let g = &*graph;
    let inf: libc::c_int = libc::c_int::MAX;
    let distances = libc::malloc((g.node_count as usize) * std::mem::size_of::<libc::c_int>())
        as *mut libc::c_int;
    let mut i: libc::c_int = 0;
    while i < g.node_count {
        *distances.offset(i as isize) = inf;
        i += 1;
    }
    *distances.offset(start as isize) = 0;
    let mut iteration: libc::c_int = 0;
    while iteration < g.node_count - 1 {
        let mut updated = false;
        let mut j: libc::c_int = 0;
        while j < g.edge_count {
            let edge = &*g.edges.offset(j as isize);
            let df = *distances.offset(edge.from as isize);
            if df != inf && df.wrapping_add(edge.weight) < *distances.offset(edge.to as isize) {
                *distances.offset(edge.to as isize) = df.wrapping_add(edge.weight);
                updated = true;
            }
            j += 1;
        }
        if !updated {
            break;
        }
        iteration += 1;
    }
    let mut reachable: libc::c_int = 0;
    let mut k: libc::c_int = 0;
    while k < g.node_count {
        if *distances.offset(k as isize) != inf {
            reachable += 1;
        }
        k += 1;
    }
    libc::free(distances as *mut libc::c_void);
    reachable
}
