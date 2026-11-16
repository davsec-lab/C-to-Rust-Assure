typedef long unsigned int size_t;
typedef struct {
 const unsigned char *json;
 size_t position;
} error;
static error global_error = { ((void*)0), 0 };
const char * cJSON_GetErrorPtr(void)
{
 return (const char*) (global_error.json + global_error.position);
}
