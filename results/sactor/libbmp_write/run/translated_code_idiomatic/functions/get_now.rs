pub fn get_now() -> (i64, i64) {
    use std::sync::OnceLock;
    use std::time::Instant;
    static START: OnceLock<Instant> = OnceLock::new();
    let start = *START.get_or_init(Instant::now);
    let d = Instant::now().duration_since(start);
    (d.as_secs() as i64, d.subsec_nanos() as i64)
}
