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
typedef struct internal_hooks
{
 void *(*allocate)(size_t size);
 void (*deallocate)(void *pointer);
 void *(*reallocate)(void *pointer, size_t size);
} internal_hooks;
static cJSON *cJSON_New_Item(const internal_hooks * const hooks)
{
 cJSON* node = (cJSON*)hooks->allocate(sizeof(cJSON));
 if (node != ((void*)0))
 {
  memset(node, '\0', sizeof(cJSON));
 }
 return node;
}
