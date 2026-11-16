pub fn distance(p: Point, c: Cluster) -> f64 {
    ((p.x - c.x) * (p.x - c.x) + (p.y - c.y) * (p.y - c.y)).sqrt()
}
