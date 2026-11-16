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
static unsigned char utf16_literal_to_utf8(const unsigned char * const input_pointer, const unsigned char * const input_end, unsigned char **output_pointer);
static cJSON_bool parse_string(cJSON * const item, parse_buffer * const input_buffer)
{
 const unsigned char *input_pointer = ((input_buffer)->content + (input_buffer)->offset) + 1;
 const unsigned char *input_end = ((input_buffer)->content + (input_buffer)->offset) + 1;
 unsigned char *output_pointer = ((void*)0);
 unsigned char *output = ((void*)0);
 if (((input_buffer)->content + (input_buffer)->offset)[0] != '"')
 {
  goto fail;
 }
 {
  size_t allocation_length = 0;
  size_t skipped_bytes = 0;
  while (((size_t)(input_end - input_buffer->content) < input_buffer->length) && (*input_end != '"'))
  {
   if (input_end[0] == '\\')
   {
    if ((size_t)(input_end + 1 - input_buffer->content) >= input_buffer->length)
    {
     goto fail;
    }
    skipped_bytes++;
    input_end++;
   }
   input_end++;
  }
  if (((size_t)(input_end - input_buffer->content) >= input_buffer->length) || (*input_end != '"'))
  {
   goto fail;
  }
  allocation_length = (size_t) (input_end - ((input_buffer)->content + (input_buffer)->offset)) - skipped_bytes;
  output = (unsigned char*)input_buffer->hooks.allocate(allocation_length + sizeof(""));
  if (output == ((void*)0))
  {
   goto fail;
  }
 }
 output_pointer = output;
 while (input_pointer < input_end)
 {
  if (*input_pointer != '\\')
  {
   *output_pointer++ = *input_pointer++;
  }
  else
  {
   unsigned char sequence_length = 2;
   if ((input_end - input_pointer) < 1)
   {
    goto fail;
   }
   switch (input_pointer[1])
   {
    case 'b':
     *output_pointer++ = '\b';
     break;
    case 'f':
     *output_pointer++ = '\f';
     break;
    case 'n':
     *output_pointer++ = '\n';
     break;
    case 'r':
     *output_pointer++ = '\r';
     break;
    case 't':
     *output_pointer++ = '\t';
     break;
    case '"':
    case '\\':
    case '/':
     *output_pointer++ = input_pointer[1];
     break;
    case 'u':
     sequence_length = utf16_literal_to_utf8(input_pointer, input_end, &output_pointer);
     if (sequence_length == 0)
     {
      goto fail;
     }
     break;
    default:
     goto fail;
   }
   input_pointer += sequence_length;
  }
 }
 *output_pointer = '\0';
 item->type = (1 << 4);
 item->valuestring = (char*)output;
 input_buffer->offset = (size_t) (input_end - input_buffer->content);
 input_buffer->offset++;
 return ((cJSON_bool)1);
fail:
 if (output != ((void*)0))
 {
  input_buffer->hooks.deallocate(output);
 }
 if (input_pointer != ((void*)0))
 {
  input_buffer->offset = (size_t)(input_pointer - input_buffer->content);
 }
 return ((cJSON_bool)0);
}
