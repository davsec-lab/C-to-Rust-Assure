#[derive(Clone, Debug, Default)]
pub struct Node {
    pub id: i32,
    pub edges: Vec<i32>,
    pub weights: Vec<i32>,
}
