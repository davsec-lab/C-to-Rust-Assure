pub fn freeGraph(graph: Graph) {
    let mut graph = graph;
    for node in graph.nodes.iter_mut() {
        node.edges = Vec::new();
        node.weights = Vec::new();
    }
    graph.nodes = Vec::new();
    graph.edges = Vec::new();
    drop(graph);
}
