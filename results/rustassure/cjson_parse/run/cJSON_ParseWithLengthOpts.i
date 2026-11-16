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
void cJSON_Delete(cJSON *item);
typedef struct {
 const unsigned char *json;
 size_t position;
} error;
static error global_error = { ((void*)0), 0 };
typedef struct internal_hooks
{
 void *(*allocate)(size_t size);
 void (*deallocate)(void *pointer);
 void *(*reallocate)(void *pointer, size_t size);
} internal_hooks;
static internal_hooks global_hooks = { malloc, free, ((void*)0) };
typedef struct
{
 const unsigned char *content;
 size_t length;
 size_t offset;
 size_t depth;
 internal_hooks hooks;
} parse_buffer;
static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);
static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);
static parse_buffer *skip_utf8_bom(parse_buffer * const buffer);
static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);
void cJSON_Delete(cJSON *item);
static cJSON *cJSON_New_Item(const internal_hooks * const hooks);
static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);
static parse_buffer *skip_utf8_bom(parse_buffer * const buffer);
cJSON * cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length, const char **return_parse_end, cJSON_bool require_null_terminated)
{
 parse_buffer buffer = { 0, 0, 0, 0, { 0, 0, 0 } };
 cJSON *item = ((void*)0);
 global_error.json = ((void*)0);
 global_error.position = 0;
 if ((value == ((void*)0)) || (buffer_length == 0))
 {
  goto fail;
 }
 buffer.content = (const unsigned char*)value;
 buffer.length = buffer_length;
 buffer.offset = 0;
 buffer.hooks = global_hooks;
 item = cJSON_New_Item(&global_hooks);
 if (item == ((void*)0))
 {
  goto fail;
 }
 if (!parse_value(item, buffer_skip_whitespace(skip_utf8_bom(&buffer))))
 {
  goto fail;
 }
 if (require_null_terminated)
 {
  buffer_skip_whitespace(&buffer);
  if ((buffer.offset >= buffer.length) || (((&buffer)->content + (&buffer)->offset)[0] != '\0'))
  {
   goto fail;
  }
 }
 if (return_parse_end != ((void*)0))
 {
  *return_parse_end = (const char*)((&buffer)->content + (&buffer)->offset);
 }
 return item;
fail:
 if (item != ((void*)0))
 {
  cJSON_Delete(item);
 }
 if (value != ((void*)0))
 {
  error local_error;
  local_error.json = (const unsigned char*)value;
  local_error.position = 0;
  if (buffer.offset < buffer.length)
  {
   local_error.position = buffer.offset;
  }
  else if (buffer.length > 0)
  {
   local_error.position = buffer.length - 1;
  }
  if (return_parse_end != ((void*)0))
  {
   *return_parse_end = (const char*)local_error.json + local_error.position;
  }
  global_error = local_error;
 }
 return ((void*)0);
}
