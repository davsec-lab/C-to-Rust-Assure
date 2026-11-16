pub fn createGraph(node_count: i32) -> Graph {
    let count = if node_count > 0 { node_count as usize } else { 0 };
    let mut nodes: Vec<Node> = Vec::with_capacity(count);
    for i in 0..node_count.max(0) {
        nodes.push(Node::new(i));
    }
    Graph {
        nodes,
        edges: Vec::new(),
    }
}