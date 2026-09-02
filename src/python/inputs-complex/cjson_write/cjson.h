#ifndef CJSON_H
#define CJSON_H

/* Merged cJSON benchmark library (extracted from cJSON 1.7.19).
 *
 * One shared library (this cjson.c/.h, byte-identical in cjson_parse/ and
 * cjson_write/) is exercised by two ROI benchmarks whose main() lives only in
 * each directory's performance_information.json -- mirroring libbmp, where one
 * libbmp.c/.h is driven by bmp_img_read (parse) vs bmp_img_write (write), each
 * with its own input:
 *   - parse ROI : JSON text -> cJSON tree   (reads pokedex.json; cJSON_Parse* + tree_checksum)
 *   - write ROI : kv pairs   -> cJSON tree   (random kv from <iterations> <size>; create_objects + print_json_object)
 *
 * It is the union of the functions that previously lived in
 *   cjson_parse/cjson_parse.c   (parse path + tree_checksum)
 *   cjson_write/cjson.c          (construct path + create_objects/print_json_object/test_create_objects)
 * with the duplicated cJSON core de-duplicated into one place (cjson.c).
 */

#include <stddef.h> /* size_t */

/* cJSON types */
#define cJSON_Invalid (0)
#define cJSON_False   (1 << 0)
#define cJSON_True    (1 << 1)
#define cJSON_NULL    (1 << 2)
#define cJSON_Number  (1 << 3)
#define cJSON_String  (1 << 4)
#define cJSON_Array   (1 << 5)
#define cJSON_Object  (1 << 6)
#define cJSON_Raw     (1 << 7)

#define cJSON_IsReference   256
#define cJSON_StringIsConst 512

typedef int cJSON_bool;

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

/* ---- shared ---- */
void cJSON_Delete(cJSON *item);

/* ---- parse ROI (JSON text -> cJSON tree) ---- */
cJSON *cJSON_Parse(const char *value);
cJSON *cJSON_ParseWithLength(const char *value, size_t buffer_length);
cJSON *cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cJSON_bool require_null_terminated);
cJSON *cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length, const char **return_parse_end, cJSON_bool require_null_terminated);
const char *cJSON_GetErrorPtr(void);

/* ---- write/construct ROI (kv pairs -> cJSON tree) ---- */
cJSON *cJSON_CreateObject(void);
cJSON *cJSON_CreateString(const char *string);
int    cJSON_AddItemToObject(cJSON *object, const char *string, cJSON *item);

/* ---- benchmark harness (used by the two ROI main() drivers) ---- */
/* parse ROI: walk a parsed tree and accumulate an optimization-proof checksum */
double tree_checksum(const cJSON *item);
/* write ROI: build a flat object from `size` key/value string pairs */
cJSON *create_objects(char **keys, char **values, int size);
/* write ROI: hash a constructed object's members (prints the Checksum line) */
void   print_json_object(const cJSON *root);
/* write ROI: build + checksum one object once (setup verification before timing) */
int    test_create_objects(char **keys, char **values, int size);

#endif /* CJSON_H */
