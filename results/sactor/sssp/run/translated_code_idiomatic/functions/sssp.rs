pub fn sssp(graph: &Graph, start: i32) -> i32 {
    let inf: i32 = i32::MAX;
    let node_count = graph.nodes.len();
    let mut distances: Vec<i32> = vec![inf; node_count];
    if start >= 0 {
        if let Some(d) = distances.get_mut(start as usize) {
            *d = 0;
        }
    }
    for _ in 0..node_count.saturating_sub(1) {
        let mut updated = false;
        for edge in graph.edges.iter() {
            let df = distances[edge.from as usize];
            if df != inf && df.wrapping_add(edge.weight) < distances[edge.to as usize] {
                distances[edge.to as usize] = df.wrapping_add(edge.weight);
                updated = true;
            }
        }
        if !updated {
            break;
        }
    }
    distances.iter().filter(|&&d| d != inf).count() as i32
}
