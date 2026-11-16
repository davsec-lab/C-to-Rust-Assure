pub fn cJSON_Delete(item: Option<Box<cJSON>>) {
    let mut current = item;
    while let Some(mut node) = current {
        current = node.next.take();
        drop(node);
    }
}
