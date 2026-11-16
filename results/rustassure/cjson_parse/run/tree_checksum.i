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
static double tree_checksum(const cJSON *item)
{
 double acc = 0.0;
 while (item != ((void*)0))
 {
  acc += item->valuedouble;
  if (item->valuestring != ((void*)0))
  {
   const char *p = item->valuestring;
   while (*p) { acc += (double)(unsigned char)*p++; }
  }
  if (item->string != ((void*)0))
  {
   const char *p = item->string;
   while (*p) { acc += (double)(unsigned char)*p++; }
  }
  if (item->child != ((void*)0))
  {
   acc += tree_checksum(item->child);
  }
  item = item->next;
 }
 return acc;
}
