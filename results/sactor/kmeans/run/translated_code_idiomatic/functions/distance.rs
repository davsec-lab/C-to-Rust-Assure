pub fn distance(p: Point, c: Cluster) -> f64 {
    let dx = p.x - c.x;
    let dy = p.y - c.y;
    (dx * dx + dy * dy).sqrt()
}
