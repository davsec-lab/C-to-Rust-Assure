fn tree_checksum(item: &CJsonLink) -> f64 {
    let mut acc: f64 = 0.0;
    let mut current: CJsonLink = item.clone();
    while let Some(node_rc) = current {
        let node = node_rc.borrow();
        acc += node.valuedouble;
        if let Some(vs) = &node.valuestring {
            acc += vs
                .iter()
                .take_while(|&&b| b != 0)
                .map(|&b| b as f64)
                .sum::<f64>();
        }
        if let Some(s) = &node.string {
            acc += s
                .iter()
                .take_while(|&&b| b != 0)
                .map(|&b| b as f64)
                .sum::<f64>();
        }
        if node.child.is_some() {
            acc += tree_checksum(&node.child);
        }
        let next = node.next.clone();
        drop(node);
        current = next;
    }
    acc
}