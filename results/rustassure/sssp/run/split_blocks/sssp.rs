pub fn sssp(graph: &Graph, start: i32) -> i32 {
    let node_count = graph.nodes.len();
    let mut distances: Vec<i32> = vec![2147483647; node_count];
    distances[start as usize] = 0;
    for _iteration in 0..node_count.saturating_sub(1) {
        let mut updated = false;
        for edge in graph.edges.iter() {
            let from = edge.from as usize;
            let to = edge.to as usize;
            if distances[from] != 2147483647
                && distances[from].wrapping_add(edge.weight) < distances[to]
            {
                distances[to] = distances[from].wrapping_add(edge.weight);
                updated = true;
            }
        }
        if !updated {
            break;
        }
    }
    let mut reachable = 0;
    for i in 0..node_count {
        if distances[i] != 2147483647 {
            reachable += 1;
        }
    }
    reachable
}