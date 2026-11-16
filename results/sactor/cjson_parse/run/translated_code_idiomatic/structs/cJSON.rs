#[derive(Clone, Debug, Default)]
pub struct cJSON {
    pub next: Option<Box<cJSON>>,
    pub child: Option<Box<cJSON>>,
    pub type_0: i32,
    pub valuestring: Option<String>,
    pub valueint: i32,
    pub valuedouble: f64,
    pub string: Option<String>,
}
