pub fn tree_checksum(item: Option<&cJSON>) -> f64 {
    let mut acc: f64 = 0.0;
    let mut cur = item;
    while let Some(node) = cur {
        acc += node.valuedouble;
        if let Some(s) = node.valuestring.as_ref() {
            acc += s
                .as_bytes()
                .iter()
                .take_while(|&&b| b != 0)
                .map(|&b| b as f64)
                .sum::<f64>();
        }
        if let Some(s) = node.string.as_ref() {
            acc += s
                .as_bytes()
                .iter()
                .take_while(|&&b| b != 0)
                .map(|&b| b as f64)
                .sum::<f64>();
        }
        if node.child.is_some() {
            acc += tree_checksum(node.child.as_deref());
        }
        cur = node.next.as_deref();
    }
    acc
}
