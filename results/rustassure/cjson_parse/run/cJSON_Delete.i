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
void cJSON_Delete(cJSON *item);
typedef struct internal_hooks
{
 void *(*allocate)(size_t size);
 void (*deallocate)(void *pointer);
 void *(*reallocate)(void *pointer, size_t size);
} internal_hooks;
static internal_hooks global_hooks = { malloc, free, ((void*)0) };
void cJSON_Delete(cJSON *item)
{
 cJSON *next = ((void*)0);
 while (item != ((void*)0))
 {
  next = item->next;
  if (!(item->type & 256) && (item->child != ((void*)0)))
  {
   cJSON_Delete(item->child);
  }
  if (!(item->type & 256) && (item->valuestring != ((void*)0)))
  {
   global_hooks.deallocate(item->valuestring);
   item->valuestring = ((void*)0);
  }
  if (!(item->type & 512) && (item->string != ((void*)0)))
  {
   global_hooks.deallocate(item->string);
   item->string = ((void*)0);
  }
  global_hooks.deallocate(item);
  item = next;
 }
}
