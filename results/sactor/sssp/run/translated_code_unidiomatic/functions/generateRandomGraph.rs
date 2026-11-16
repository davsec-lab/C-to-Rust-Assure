pub unsafe fn generateRandomGraph(graph: *mut Graph) {
    let n: libc::c_int = (*graph).node_count;
    let mut i: libc::c_int = 0;
    while i < n {
        let mut j: libc::c_int = i + 1;
        while j < n {
            if libc::rand() % 1000000 < 500000 {
                let weight: libc::c_int = (libc::rand() % 100) + 1;
                addEdge(graph, i, j, weight);
                addEdge(graph, j, i, weight);
            }
            j += 1;
        }
        i += 1;
    }
}
