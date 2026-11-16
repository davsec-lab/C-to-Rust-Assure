pub fn addEdge(graph: &mut Graph, from: i32, to: i32, weight: i32) {
    {
        let node = &mut graph.nodes[from as usize];
        node.edges.push(to);
        node.weights.push(weight);
    }
    if graph.edges.len() as i64 >= graph.capacity as i64 {
        graph.capacity = if graph.capacity == 0 {
            1000
        } else {
            graph.capacity * 2
        };
        let target = graph.capacity as usize;
        let len = graph.edges.len();
        if target > len {
            graph.edges.reserve(target - len);
        }
    }
    graph.edges.push(Edge { from, to, weight });
}
