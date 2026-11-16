#[derive(Clone, Copy, Debug)]
pub struct parse_buffer<'a> {
    pub content: &'a [u8],
    pub offset: usize,
    pub depth: usize,
    pub hooks: internal_hooks,
}
