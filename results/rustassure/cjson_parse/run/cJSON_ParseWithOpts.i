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
cJSON * cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cJSON_bool require_null_terminated)
{
 size_t buffer_length = 0;
 if (value == ((void*)0))
 {
  return ((void*)0);
 }
 buffer_length = strlen(value) + sizeof("");
 return cJSON_ParseWithLengthOpts(value, buffer_length, return_parse_end, require_null_terminated);
}
