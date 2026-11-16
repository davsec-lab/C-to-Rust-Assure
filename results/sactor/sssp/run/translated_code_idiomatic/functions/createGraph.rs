pub fn createGraph(node_count: i32) -> Graph {
    let nodes: Vec<Node> = (0..node_count.max(0))
        .map(|i| Node {
            id: i,
            edges: Vec::new(),
            weights: Vec::new(),
        })
        .collect();
    Graph {
        nodes,
        edges: Vec::new(),
        capacity: 0,
    }
}
