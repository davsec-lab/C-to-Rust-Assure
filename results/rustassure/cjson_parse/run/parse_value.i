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
typedef struct internal_hooks
{
 void *(*allocate)(size_t size);
 void (*deallocate)(void *pointer);
 void *(*reallocate)(void *pointer, size_t size);
} internal_hooks;
typedef struct
{
 const unsigned char *content;
 size_t length;
 size_t offset;
 size_t depth;
 internal_hooks hooks;
} parse_buffer;
static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_array(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_object(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_array(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_number(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_object(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_string(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer)
{
 if ((input_buffer == ((void*)0)) || (input_buffer->content == ((void*)0)))
 {
  return ((cJSON_bool)0);
 }
 if (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 4) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "null", 4) == 0))
 {
  item->type = (1 << 2);
  input_buffer->offset += 4;
  return ((cJSON_bool)1);
 }
 if (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 5) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "false", 5) == 0))
 {
  item->type = (1 << 0);
  input_buffer->offset += 5;
  return ((cJSON_bool)1);
 }
 if (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 4) <= (input_buffer)->length)) && (strncmp((const char*)((input_buffer)->content + (input_buffer)->offset), "true", 4) == 0))
 {
  item->type = (1 << 1);
  item->valueint = 1;
  input_buffer->offset += 4;
  return ((cJSON_bool)1);
 }
 if (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '"'))
 {
  return parse_string(item, input_buffer);
 }
 if (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && ((((input_buffer)->content + (input_buffer)->offset)[0] == '-') || ((((input_buffer)->content + (input_buffer)->offset)[0] >= '0') && (((input_buffer)->content + (input_buffer)->offset)[0] <= '9'))))
 {
  return parse_number(item, input_buffer);
 }
 if (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '['))
 {
  return parse_array(item, input_buffer);
 }
 if (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == '{'))
 {
  return parse_object(item, input_buffer);
 }
 return ((cJSON_bool)0);
}
