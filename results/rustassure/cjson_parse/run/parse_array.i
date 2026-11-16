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
static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);
static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);
void cJSON_Delete(cJSON *item);
static cJSON *cJSON_New_Item(const internal_hooks * const hooks);
static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_array(cJSON * const item, parse_buffer * const input_buffer)
{
 cJSON *head = ((void*)0);
 cJSON *current_item = ((void*)0);
 if (input_buffer->depth >= 1000)
 {
  return ((cJSON_bool)0);
 }
 input_buffer->depth++;
 if (((input_buffer)->content + (input_buffer)->offset)[0] != '[')
 {
  goto fail;
 }
 input_buffer->offset++;
 buffer_skip_whitespace(input_buffer);
 if (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == ']'))
 {
  goto success;
 }
 if ((!((input_buffer != ((void*)0)) && (((input_buffer)->offset + 0) < (input_buffer)->length))))
 {
  input_buffer->offset--;
  goto fail;
 }
 input_buffer->offset--;
 do
 {
  cJSON *new_item = cJSON_New_Item(&(input_buffer->hooks));
  if (new_item == ((void*)0))
  {
   goto fail;
  }
  if (head == ((void*)0))
  {
   current_item = head = new_item;
  }
  else
  {
   current_item->next = new_item;
   new_item->prev = current_item;
   current_item = new_item;
  }
  input_buffer->offset++;
  buffer_skip_whitespace(input_buffer);
  if (!parse_value(current_item, input_buffer))
  {
   goto fail;
  }
  buffer_skip_whitespace(input_buffer);
 }
 while (((input_buffer != ((void*)0)) && (((input_buffer)->offset + 0) < (input_buffer)->length)) && (((input_buffer)->content + (input_buffer)->offset)[0] == ','));
 if ((!((input_buffer != ((void*)0)) && (((input_buffer)->offset + 0) < (input_buffer)->length))) || (((input_buffer)->content + (input_buffer)->offset)[0] != ']'))
 {
  goto fail;
 }
success:
 input_buffer->depth--;
 if (head != ((void*)0))
 {
  head->prev = current_item;
 }
 item->type = (1 << 5);
 item->child = head;
 input_buffer->offset++;
 return ((cJSON_bool)1);
fail:
 if (head != ((void*)0))
 {
  cJSON_Delete(head);
 }
 return ((cJSON_bool)0);
}
