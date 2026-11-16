
type __syscall_slong_t = i64;
type __time_t = i64;
pub type size_t = usize;
pub struct Edge {
    pub from: i32,
    pub to: i32,
    pub weight: i32,
}
pub struct Node {
    pub id: i32,
    pub edges: Vec<i32>,
    pub weights: Vec<i32>,
}

impl Node {
    pub fn new(id: i32) -> Self {
        Node {
            id,
            edges: Vec::new(),
            weights: Vec::new(),
        }
    }

    /// Equivalent of `edge_count`
    pub fn edge_count(&self) -> usize {
        self.edges.len()
    }

    /// Equivalent of `capacity`
    pub fn capacity(&self) -> usize {
        self.edges.capacity().min(self.weights.capacity())
    }

    /// Replaces the realloc + index assignment pattern:
    ///   node->edges = realloc(...); node->edges[node->edge_count] = to;
    ///   node->weights = realloc(...); node->weights[node->edge_count] = weight;
    ///   node->edge_count++;
    pub fn add_edge(&mut self, to: i32, weight: i32) {
        // Vec grows automatically (amortized), replacing realloc
        self.edges.push(to);
        self.weights.push(weight);
    }
}
pub struct Graph {
    pub nodes: Vec<Node>,
    pub edges: Vec<Edge>,
}