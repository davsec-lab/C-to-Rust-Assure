pub fn cJSON_New_Item() -> Option<Box<cJSON>> {
    Some(Box::new(cJSON::default()))
}
