pub fn freeGraph(graph: Graph) {
    // Taking ownership of the graph; all nodes' edges/weights vectors,
    // the nodes vector, and the edges vector are dropped automatically.
    let mut graph = graph;
    for node in graph.nodes.iter_mut() {
        node.edges = Vec::new();
        node.weights = Vec::new();
    }
    graph.nodes.clear();
    graph.edges.clear();
    drop(graph);
}