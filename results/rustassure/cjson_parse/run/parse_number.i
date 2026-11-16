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
static unsigned char get_decimal_point(void);
static cJSON_bool parse_number(cJSON * const item, parse_buffer * const input_buffer)
{
 double number = 0;
 unsigned char *after_end = ((void*)0);
 unsigned char *number_c_string = ((void*)0);
 unsigned char decimal_point = get_decimal_point();
 size_t i = 0;
 size_t number_string_length = 0;
 cJSON_bool has_decimal_point = ((cJSON_bool)0);
 if ((input_buffer == ((void*)0)) || (input_buffer->content == ((void*)0)))
 {
  return ((cJSON_bool)0);
 }
 for (i = 0; ((input_buffer != ((void*)0)) && (((input_buffer)->offset + i) < (input_buffer)->length)); i++)
 {
  switch (((input_buffer)->content + (input_buffer)->offset)[i])
  {
   case '0':
   case '1':
   case '2':
   case '3':
   case '4':
   case '5':
   case '6':
   case '7':
   case '8':
   case '9':
   case '+':
   case '-':
   case 'e':
   case 'E':
    number_string_length++;
    break;
   case '.':
    number_string_length++;
    has_decimal_point = ((cJSON_bool)1);
    break;
   default:
    goto loop_end;
  }
 }
loop_end:
 number_c_string = (unsigned char *) input_buffer->hooks.allocate(number_string_length + 1);
 if (number_c_string == ((void*)0))
 {
  return ((cJSON_bool)0);
 }
 memcpy(number_c_string, ((input_buffer)->content + (input_buffer)->offset), number_string_length);
 number_c_string[number_string_length] = '\0';
 if (has_decimal_point)
 {
  for (i = 0; i < number_string_length; i++)
  {
   if (number_c_string[i] == '.')
   {
    number_c_string[i] = decimal_point;
   }
  }
 }
 number = strtod((const char*)number_c_string, (char**)&after_end);
 if (number_c_string == after_end)
 {
  input_buffer->hooks.deallocate(number_c_string);
  return ((cJSON_bool)0);
 }
 item->valuedouble = number;
 if (number >= 2147483647)
 {
  item->valueint = 2147483647;
 }
 else if (number <= (double)(-2147483647 -1))
 {
  item->valueint = (-2147483647 -1);
 }
 else
 {
  item->valueint = (int)number;
 }
 item->type = (1 << 3);
 input_buffer->offset += (size_t)(after_end - number_c_string);
 input_buffer->hooks.deallocate(number_c_string);
 return ((cJSON_bool)1);
}
