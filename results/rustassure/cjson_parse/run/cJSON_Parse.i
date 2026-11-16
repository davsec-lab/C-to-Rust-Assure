typedef struct cJSON
{
 struct cJSON *next;
 struct cJSON *prev;
 struct cJSON *child;
 int type;
 char *valuestring;
 int valueint;
 double valuedouble;
 char *string;
} cJSON;
typedef int cJSON_bool;
cJSON * cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cJSON_bool require_null_terminated);
cJSON * cJSON_Parse(const char *value)
{
 return cJSON_ParseWithOpts(value, 0, 0);
}
