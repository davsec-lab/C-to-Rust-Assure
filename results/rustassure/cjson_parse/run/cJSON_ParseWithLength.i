typedef long unsigned int size_t;
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
cJSON * cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length, const char **return_parse_end, cJSON_bool require_null_terminated);
cJSON * cJSON_ParseWithLength(const char *value, size_t buffer_length)
{
 return cJSON_ParseWithLengthOpts(value, buffer_length, 0, 0);
}
