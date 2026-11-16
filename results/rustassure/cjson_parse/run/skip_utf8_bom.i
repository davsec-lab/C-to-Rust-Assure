typedef long unsigned int size_t;
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
static parse_buffer *skip_utf8_bom(parse_buffer * const buffer);
static parse_buffer *skip_utf8_bom(parse_buffer * const buffer)
{
 if ((buffer == ((void*)0)) || (buffer->content == ((void*)0)) || (buffer->offset != 0))
 {
  return ((void*)0);
 }
 if (((buffer != ((void*)0)) && (((buffer)->offset + 4) < (buffer)->length)) && (strncmp((const char*)((buffer)->content + (buffer)->offset), "\xEF\xBB\xBF", 3) == 0))
 {
  buffer->offset += 3;
 }
 return buffer;
}
