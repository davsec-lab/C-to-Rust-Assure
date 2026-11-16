pub fn addEdge(graph: &mut Graph, from: i32, to: i32, weight: i32) {
    let node = &mut graph.nodes[from as usize];
    node.add_edge(to, weight);
    graph.edges.push(Edge { from, to, weight });
}