#[derive(Clone, Debug)]
pub struct error {
    pub json: Vec<u8>,
    pub position: usize,
}
