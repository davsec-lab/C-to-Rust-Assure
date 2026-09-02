/* Merged cJSON benchmark library (extracted from cJSON 1.7.19).
 *
 * = cjson_parse/cjson_parse.c (parse path)
 * + cjson_write/cjson.c       (construct path)
 * with the shared cJSON core (struct / type macros / global_hooks /
 * cJSON_Delete / cJSON_New_Item) de-duplicated into a single copy.
 *
 * Self-contained benchmark (libbmp-style): cjson_parse.c and cjson_write.c
 * share this identical merged library + harness (byte-identical block above)
 * and differ ONLY in the ROI main() appended at the end -- exactly like
 * libbmp_parse.c vs libbmp_write/libbmp.c.
 */

#include "cjson.h"

#include <string.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <limits.h>
#include <ctype.h>
#include <time.h>

#ifdef ENABLE_LOCALES
#include <locale.h>
#endif

#define CJSON_PUBLIC(type) type

#define CJSON_VERSION_MAJOR 1
#define CJSON_VERSION_MINOR 7
#define CJSON_VERSION_PATCH 19

#ifndef CJSON_NESTING_LIMIT
#define CJSON_NESTING_LIMIT 1000
#endif

#ifndef CJSON_CIRCULAR_LIMIT
#define CJSON_CIRCULAR_LIMIT 10000
#endif

#ifdef true
#undef true
#endif
#define true ((cJSON_bool)1)

#ifdef false
#undef false
#endif
#define false ((cJSON_bool)0)

#ifndef isinf
#define isinf(d) (isnan((d - d)) && !isnan(d))
#endif
#ifndef isnan
#define isnan(d) (d != d)
#endif

#ifndef NAN
#ifdef _WIN32
#define NAN sqrt(-1.0)
#else
#define NAN 0.0/0.0
#endif
#endif

/* ======================================================================
 *  Error reporting (parse path)
 * ====================================================================== */
typedef struct {
    const unsigned char *json;
    size_t position;
} error;
static error global_error = { NULL, 0 };

CJSON_PUBLIC(const char *) cJSON_GetErrorPtr(void)
{
    return (const char*) (global_error.json + global_error.position);
}

/* ======================================================================
 *  Allocation hooks (shared) -- realloc kept (construct path) although
 *  neither path actually calls reallocate.
 * ====================================================================== */
typedef struct internal_hooks
{
    void *(*allocate)(size_t size);
    void (*deallocate)(void *pointer);
    void *(*reallocate)(void *pointer, size_t size);
} internal_hooks;

static internal_hooks global_hooks = { malloc, free, realloc };

/* ======================================================================
 *  Shared core
 * ====================================================================== */

/* Delete a cJSON structure. */
CJSON_PUBLIC(void) cJSON_Delete(cJSON *item)
{
    cJSON *next = NULL;
    while (item != NULL)
    {
        next = item->next;
        if (!(item->type & cJSON_IsReference) && (item->child != NULL))
        {
            cJSON_Delete(item->child);
        }
        if (!(item->type & cJSON_IsReference) && (item->valuestring != NULL))
        {
            global_hooks.deallocate(item->valuestring);
            item->valuestring = NULL;
        }
        if (!(item->type & cJSON_StringIsConst) && (item->string != NULL))
        {
            global_hooks.deallocate(item->string);
            item->string = NULL;
        }
        global_hooks.deallocate(item);
        item = next;
    }
}

/* Internal constructor. */
static cJSON *cJSON_New_Item(const internal_hooks * const hooks)
{
    cJSON* node = (cJSON*)hooks->allocate(sizeof(cJSON));
    if (node != NULL)
    {
        memset(node, '\0', sizeof(cJSON));
    }

    return node;
}

/* ======================================================================
 *  Parse path  (JSON text -> cJSON tree)
 * ====================================================================== */

/* get the decimal point character of the current locale */
static unsigned char get_decimal_point(void)
{
#ifdef ENABLE_LOCALES
    struct lconv *lconv = localeconv();
    return (unsigned char) lconv->decimal_point[0];
#else
    return '.';
#endif
}

typedef struct
{
    const unsigned char *content;
    size_t length;
    size_t offset;
    size_t depth; /* How deeply nested (in arrays/objects) is the input at the current offset. */
    internal_hooks hooks;
} parse_buffer;

/* check if the given size is left to read in a given parse buffer (starting with 1) */
#define can_read(buffer, size) ((buffer != NULL) && (((buffer)->offset + size) <= (buffer)->length))
/* check if the buffer can be accessed at the given index (starting with 0) */
#define can_access_at_index(buffer, index) ((buffer != NULL) && (((buffer)->offset + index) < (buffer)->length))
#define cannot_access_at_index(buffer, index) (!can_access_at_index(buffer, index))
/* get a pointer to the buffer at the position */
#define buffer_at_offset(buffer) ((buffer)->content + (buffer)->offset)

/* Predeclare internal prototypes. */
static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_array(cJSON * const item, parse_buffer * const input_buffer);
static cJSON_bool parse_object(cJSON * const item, parse_buffer * const input_buffer);
static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);
static parse_buffer *skip_utf8_bom(parse_buffer * const buffer);

/* Parse the input text to generate a number, and populate the result into item. */
static cJSON_bool parse_number(cJSON * const item, parse_buffer * const input_buffer)
{
    double number = 0;
    unsigned char *after_end = NULL;
    unsigned char *number_c_string = NULL;
    unsigned char decimal_point = get_decimal_point();
    size_t i = 0;
    size_t number_string_length = 0;
    cJSON_bool has_decimal_point = false;

    if ((input_buffer == NULL) || (input_buffer->content == NULL))
    {
        return false;
    }

    for (i = 0; can_access_at_index(input_buffer, i); i++)
    {
        switch (buffer_at_offset(input_buffer)[i])
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
                has_decimal_point = true;
                break;

            default:
                goto loop_end;
        }
    }
loop_end:
    number_c_string = (unsigned char *) input_buffer->hooks.allocate(number_string_length + 1);
    if (number_c_string == NULL)
    {
        return false;
    }

    memcpy(number_c_string, buffer_at_offset(input_buffer), number_string_length);
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
        return false;
    }

    item->valuedouble = number;

    if (number >= INT_MAX)
    {
        item->valueint = INT_MAX;
    }
    else if (number <= (double)INT_MIN)
    {
        item->valueint = INT_MIN;
    }
    else
    {
        item->valueint = (int)number;
    }

    item->type = cJSON_Number;
    input_buffer->offset += (size_t)(after_end - number_c_string);
    input_buffer->hooks.deallocate(number_c_string);

    return true;
}

/* parse 4 digit hexadecimal number */
static unsigned parse_hex4(const unsigned char * const input)
{
    unsigned int h = 0;
    size_t i = 0;

    for (i = 0; i < 4; i++)
    {
        if ((input[i] >= '0') && (input[i] <= '9'))
        {
            h += (unsigned int) input[i] - '0';
        }
        else if ((input[i] >= 'A') && (input[i] <= 'F'))
        {
            h += (unsigned int) 10 + input[i] - 'A';
        }
        else if ((input[i] >= 'a') && (input[i] <= 'f'))
        {
            h += (unsigned int) 10 + input[i] - 'a';
        }
        else
        {
            return 0;
        }

        if (i < 3)
        {
            h = h << 4;
        }
    }

    return h;
}

/* converts a UTF-16 literal to UTF-8 */
static unsigned char utf16_literal_to_utf8(const unsigned char * const input_pointer, const unsigned char * const input_end, unsigned char **output_pointer)
{
    long unsigned int codepoint = 0;
    unsigned int first_code = 0;
    const unsigned char *first_sequence = input_pointer;
    unsigned char utf8_length = 0;
    unsigned char utf8_position = 0;
    unsigned char sequence_length = 0;
    unsigned char first_byte_mark = 0;

    if ((input_end - first_sequence) < 6)
    {
        goto fail;
    }

    first_code = parse_hex4(first_sequence + 2);

    if ((first_code >= 0xDC00) && (first_code <= 0xDFFF))
    {
        goto fail;
    }

    if ((first_code >= 0xD800) && (first_code <= 0xDBFF))
    {
        const unsigned char *second_sequence = first_sequence + 6;
        unsigned int second_code = 0;
        sequence_length = 12;

        if ((input_end - second_sequence) < 6)
        {
            goto fail;
        }

        if ((second_sequence[0] != '\\') || (second_sequence[1] != 'u'))
        {
            goto fail;
        }

        second_code = parse_hex4(second_sequence + 2);
        if ((second_code < 0xDC00) || (second_code > 0xDFFF))
        {
            goto fail;
        }

        codepoint = 0x10000 + (((first_code & 0x3FF) << 10) | (second_code & 0x3FF));
    }
    else
    {
        sequence_length = 6;
        codepoint = first_code;
    }

    if (codepoint < 0x80)
    {
        utf8_length = 1;
    }
    else if (codepoint < 0x800)
    {
        utf8_length = 2;
        first_byte_mark = 0xC0;
    }
    else if (codepoint < 0x10000)
    {
        utf8_length = 3;
        first_byte_mark = 0xE0;
    }
    else if (codepoint <= 0x10FFFF)
    {
        utf8_length = 4;
        first_byte_mark = 0xF0;
    }
    else
    {
        goto fail;
    }

    for (utf8_position = (unsigned char)(utf8_length - 1); utf8_position > 0; utf8_position--)
    {
        (*output_pointer)[utf8_position] = (unsigned char)((codepoint | 0x80) & 0xBF);
        codepoint >>= 6;
    }

    if (utf8_length > 1)
    {
        (*output_pointer)[0] = (unsigned char)((codepoint | first_byte_mark) & 0xFF);
    }
    else
    {
        (*output_pointer)[0] = (unsigned char)(codepoint & 0x7F);
    }

    *output_pointer += utf8_length;

    return sequence_length;

fail:
    return 0;
}

/* Parse the input text into an unescaped string, and populate item. */
static cJSON_bool parse_string(cJSON * const item, parse_buffer * const input_buffer)
{
    const unsigned char *input_pointer = buffer_at_offset(input_buffer) + 1;
    const unsigned char *input_end = buffer_at_offset(input_buffer) + 1;
    unsigned char *output_pointer = NULL;
    unsigned char *output = NULL;

    if (buffer_at_offset(input_buffer)[0] != '"')
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

        allocation_length = (size_t) (input_end - buffer_at_offset(input_buffer)) - skipped_bytes;
        output = (unsigned char*)input_buffer->hooks.allocate(allocation_length + sizeof(""));
        if (output == NULL)
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

    item->type = cJSON_String;
    item->valuestring = (char*)output;

    input_buffer->offset = (size_t) (input_end - input_buffer->content);
    input_buffer->offset++;

    return true;

fail:
    if (output != NULL)
    {
        input_buffer->hooks.deallocate(output);
    }

    if (input_pointer != NULL)
    {
        input_buffer->offset = (size_t)(input_pointer - input_buffer->content);
    }

    return false;
}

/* Utility to jump whitespace and cr/lf */
static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer)
{
    if ((buffer == NULL) || (buffer->content == NULL))
    {
        return NULL;
    }

    if (cannot_access_at_index(buffer, 0))
    {
        return buffer;
    }

    while (can_access_at_index(buffer, 0) && (buffer_at_offset(buffer)[0] <= 32))
    {
        buffer->offset++;
    }

    if (buffer->offset == buffer->length)
    {
        buffer->offset--;
    }

    return buffer;
}

/* skip the UTF-8 BOM (byte order mark) if it is at the beginning of a buffer */
static parse_buffer *skip_utf8_bom(parse_buffer * const buffer)
{
    if ((buffer == NULL) || (buffer->content == NULL) || (buffer->offset != 0))
    {
        return NULL;
    }

    if (can_access_at_index(buffer, 4) && (strncmp((const char*)buffer_at_offset(buffer), "\xEF\xBB\xBF", 3) == 0))
    {
        buffer->offset += 3;
    }

    return buffer;
}

/* Parse an object - create a new root, and populate. */
CJSON_PUBLIC(cJSON *) cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length, const char **return_parse_end, cJSON_bool require_null_terminated)
{
    parse_buffer buffer = { 0, 0, 0, 0, { 0, 0, 0 } };
    cJSON *item = NULL;

    global_error.json = NULL;
    global_error.position = 0;

    if ((value == NULL) || (buffer_length == 0))
    {
        goto fail;
    }

    buffer.content = (const unsigned char*)value;
    buffer.length = buffer_length;
    buffer.offset = 0;
    buffer.hooks = global_hooks;

    item = cJSON_New_Item(&global_hooks);
    if (item == NULL)
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
        if ((buffer.offset >= buffer.length) || (buffer_at_offset(&buffer)[0] != '\0'))
        {
            goto fail;
        }
    }

    if (return_parse_end != NULL)
    {
        *return_parse_end = (const char*)buffer_at_offset(&buffer);
    }

    return item;

fail:
    if (item != NULL)
    {
        cJSON_Delete(item);
    }

    if (value != NULL)
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

        if (return_parse_end != NULL)
        {
            *return_parse_end = (const char*)local_error.json + local_error.position;
        }

        global_error = local_error;
    }

    return NULL;
}

CJSON_PUBLIC(cJSON *) cJSON_ParseWithOpts(const char *value, const char **return_parse_end, cJSON_bool require_null_terminated)
{
    size_t buffer_length = 0;

    if (value == NULL)
    {
        return NULL;
    }

    buffer_length = strlen(value) + sizeof("");

    return cJSON_ParseWithLengthOpts(value, buffer_length, return_parse_end, require_null_terminated);
}

CJSON_PUBLIC(cJSON *) cJSON_Parse(const char *value)
{
    return cJSON_ParseWithOpts(value, 0, 0);
}

CJSON_PUBLIC(cJSON *) cJSON_ParseWithLength(const char *value, size_t buffer_length)
{
    return cJSON_ParseWithLengthOpts(value, buffer_length, 0, 0);
}

/* Parser core - when encountering text, process appropriately. */
static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer)
{
    if ((input_buffer == NULL) || (input_buffer->content == NULL))
    {
        return false;
    }

    if (can_read(input_buffer, 4) && (strncmp((const char*)buffer_at_offset(input_buffer), "null", 4) == 0))
    {
        item->type = cJSON_NULL;
        input_buffer->offset += 4;
        return true;
    }
    if (can_read(input_buffer, 5) && (strncmp((const char*)buffer_at_offset(input_buffer), "false", 5) == 0))
    {
        item->type = cJSON_False;
        input_buffer->offset += 5;
        return true;
    }
    if (can_read(input_buffer, 4) && (strncmp((const char*)buffer_at_offset(input_buffer), "true", 4) == 0))
    {
        item->type = cJSON_True;
        item->valueint = 1;
        input_buffer->offset += 4;
        return true;
    }
    if (can_access_at_index(input_buffer, 0) && (buffer_at_offset(input_buffer)[0] == '"'))
    {
        return parse_string(item, input_buffer);
    }
    if (can_access_at_index(input_buffer, 0) && ((buffer_at_offset(input_buffer)[0] == '-') || ((buffer_at_offset(input_buffer)[0] >= '0') && (buffer_at_offset(input_buffer)[0] <= '9'))))
    {
        return parse_number(item, input_buffer);
    }
    if (can_access_at_index(input_buffer, 0) && (buffer_at_offset(input_buffer)[0] == '['))
    {
        return parse_array(item, input_buffer);
    }
    if (can_access_at_index(input_buffer, 0) && (buffer_at_offset(input_buffer)[0] == '{'))
    {
        return parse_object(item, input_buffer);
    }

    return false;
}

/* Build an array from input text. */
static cJSON_bool parse_array(cJSON * const item, parse_buffer * const input_buffer)
{
    cJSON *head = NULL;
    cJSON *current_item = NULL;

    if (input_buffer->depth >= CJSON_NESTING_LIMIT)
    {
        return false;
    }
    input_buffer->depth++;

    if (buffer_at_offset(input_buffer)[0] != '[')
    {
        goto fail;
    }

    input_buffer->offset++;
    buffer_skip_whitespace(input_buffer);
    if (can_access_at_index(input_buffer, 0) && (buffer_at_offset(input_buffer)[0] == ']'))
    {
        goto success;
    }

    if (cannot_access_at_index(input_buffer, 0))
    {
        input_buffer->offset--;
        goto fail;
    }

    input_buffer->offset--;
    do
    {
        cJSON *new_item = cJSON_New_Item(&(input_buffer->hooks));
        if (new_item == NULL)
        {
            goto fail;
        }

        if (head == NULL)
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
    while (can_access_at_index(input_buffer, 0) && (buffer_at_offset(input_buffer)[0] == ','));

    if (cannot_access_at_index(input_buffer, 0) || (buffer_at_offset(input_buffer)[0] != ']'))
    {
        goto fail;
    }

success:
    input_buffer->depth--;

    if (head != NULL)
    {
        head->prev = current_item;
    }

    item->type = cJSON_Array;
    item->child = head;

    input_buffer->offset++;

    return true;

fail:
    if (head != NULL)
    {
        cJSON_Delete(head);
    }

    return false;
}

/* Build an object from the text. */
static cJSON_bool parse_object(cJSON * const item, parse_buffer * const input_buffer)
{
    cJSON *head = NULL;
    cJSON *current_item = NULL;

    if (input_buffer->depth >= CJSON_NESTING_LIMIT)
    {
        return false;
    }
    input_buffer->depth++;

    if (cannot_access_at_index(input_buffer, 0) || (buffer_at_offset(input_buffer)[0] != '{'))
    {
        goto fail;
    }

    input_buffer->offset++;
    buffer_skip_whitespace(input_buffer);
    if (can_access_at_index(input_buffer, 0) && (buffer_at_offset(input_buffer)[0] == '}'))
    {
        goto success;
    }

    if (cannot_access_at_index(input_buffer, 0))
    {
        input_buffer->offset--;
        goto fail;
    }

    input_buffer->offset--;
    do
    {
        cJSON *new_item = cJSON_New_Item(&(input_buffer->hooks));
        if (new_item == NULL)
        {
            goto fail;
        }

        if (head == NULL)
        {
            current_item = head = new_item;
        }
        else
        {
            current_item->next = new_item;
            new_item->prev = current_item;
            current_item = new_item;
        }

        if (cannot_access_at_index(input_buffer, 1))
        {
            goto fail;
        }

        input_buffer->offset++;
        buffer_skip_whitespace(input_buffer);
        if (!parse_string(current_item, input_buffer))
        {
            goto fail;
        }
        buffer_skip_whitespace(input_buffer);

        current_item->string = current_item->valuestring;
        current_item->valuestring = NULL;

        if (cannot_access_at_index(input_buffer, 0) || (buffer_at_offset(input_buffer)[0] != ':'))
        {
            goto fail;
        }

        input_buffer->offset++;
        buffer_skip_whitespace(input_buffer);
        if (!parse_value(current_item, input_buffer))
        {
            goto fail;
        }
        buffer_skip_whitespace(input_buffer);
    }
    while (can_access_at_index(input_buffer, 0) && (buffer_at_offset(input_buffer)[0] == ','));

    if (cannot_access_at_index(input_buffer, 0) || (buffer_at_offset(input_buffer)[0] != '}'))
    {
        goto fail;
    }

success:
    input_buffer->depth--;

    if (head != NULL)
    {
        head->prev = current_item;
    }

    item->type = cJSON_Object;
    item->child = head;

    input_buffer->offset++;
    return true;

fail:
    if (head != NULL)
    {
        cJSON_Delete(head);
    }

    return false;
}

/* ======================================================================
 *  Construct path  (kv pairs -> cJSON tree)
 * ====================================================================== */

static unsigned char* cJSON_strdup(const unsigned char* string, const internal_hooks * const hooks)
{
    size_t length = 0;
    unsigned char *copy = NULL;

    if (string == NULL)
    {
        return NULL;
    }

    length = strlen((const char*)string) + sizeof("");
    copy = (unsigned char*)hooks->allocate(length);
    if (copy == NULL)
    {
        return NULL;
    }
    memcpy(copy, string, length);

    return copy;
}

static void* cast_away_const(const void* string)
{
    return (void*)string;
}

static void suffix_object(cJSON *prev, cJSON *item)
{
    prev->next = item;
    item->prev = prev;
}

cJSON * cJSON_CreateString(const char *string)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if(item)
    {
        item->type = cJSON_String;
        item->valuestring = (char*)cJSON_strdup((const unsigned char*)string, &global_hooks);
        if(!item->valuestring)
        {
            cJSON_Delete(item);
            return NULL;
        }
    }

    return item;
}

cJSON * cJSON_CreateObject(void)
{
    cJSON *item = cJSON_New_Item(&global_hooks);
    if (item)
    {
        item->type = cJSON_Object;
    }
    return item;
}

int add_item_to_array(cJSON *array, cJSON *item)
{
    cJSON *child = NULL;
    if ((item == NULL) || (array == NULL) || (array == item))
    {
        return false;
    }
    child = array->child;
    /*
     * To find the last item in array quickly, we use prev in array
     */
    if (child == NULL)
    {
        /* list is empty, start new one */
        array->child = item;
        item->prev = item;
        item->next = NULL;
    }
    else
    {
        /* append to the end */
        if (child->prev)
        {
            suffix_object(child->prev, item);
            array->child->prev = item;
        }
    }
    return true;
}

static int add_item_to_object(cJSON * const object, const char * const string, cJSON * const item, const internal_hooks * const hooks, const int constant_key)
{
    char *new_key = NULL;
    int new_type = cJSON_Invalid;

    if ((object == NULL) || (string == NULL) || (item == NULL) || (object == item))
    {
        return false;
    }

    if (constant_key)
    {
        new_key = (char*)cast_away_const(string);
        new_type = item->type | cJSON_StringIsConst;
    }
    else
    {
        new_key = (char*)cJSON_strdup((const unsigned char*)string, hooks);
        if (new_key == NULL)
        {
            return false;
        }

        new_type = item->type & ~cJSON_StringIsConst;
    }

    if (!(item->type & cJSON_StringIsConst) && (item->string != NULL))
    {
        hooks->deallocate(item->string);
    }

    item->string = new_key;
    item->type = new_type;

    return add_item_to_array(object, item);
}

int cJSON_AddItemToObject(cJSON *object, const char *string, cJSON *item)
{
    return add_item_to_object(object, string, item, &global_hooks, false);
}

/* ======================================================================
 *  Benchmark harness (shared; each ROI main() uses the subset it needs)
 * ====================================================================== */

/* parse ROI: recursively walk every node and accumulate a checksum so the
   tree cannot be optimized away. Mixes double values and string byte sums. */
double tree_checksum(const cJSON *item)
{
    double acc = 0.0;
    while (item != NULL)
    {
        acc += item->valuedouble;
        if (item->valuestring != NULL)
        {
            const char *p = item->valuestring;
            while (*p) { acc += (double)(unsigned char)*p++; }
        }
        if (item->string != NULL)
        {
            const char *p = item->string;
            while (*p) { acc += (double)(unsigned char)*p++; }
        }
        if (item->child != NULL)
        {
            acc += tree_checksum(item->child);
        }
        item = item->next;
    }
    return acc;
}

/* write ROI: build a flat object from `size` key/value string pairs. */
cJSON *create_objects(char **keys, char **values, int size)
{
    cJSON *root = cJSON_CreateObject();
    for (int i = 0; i < size; i++)
    {
        cJSON_AddItemToObject(root, keys[i], cJSON_CreateString(values[i]));
    }
    return root;
}

/* write ROI: hash a constructed object's members and print the Checksum line. */
void print_json_object(const cJSON *root)
{
    unsigned long long checksum = 0;
    int entry_count = 0;
    if (root != NULL)
    {
        for (const cJSON *item = root->child; item != NULL; item = item->next)
        {
            entry_count++;
            if (item->string != NULL)
            {
                for (const char *p = item->string; *p != '\0'; p++)
                {
                    checksum = checksum * 131u + (unsigned char)*p;
                }
            }
            checksum = checksum * 131u + (unsigned char)'=';
            if (item->valuestring != NULL)
            {
                for (const char *p = item->valuestring; *p != '\0'; p++)
                {
                    checksum = checksum * 131u + (unsigned char)*p;
                }
            }
            checksum = checksum * 131u + (unsigned char)';';
        }
    }
    printf("create_objects entries: %d\n", entry_count);
    printf("Checksum: %llu\n", checksum);
}

/* write ROI: build + checksum one object once (setup verification before the
   timed construction loop). Verbatim from the original cjson_write benchmark. */
int test_create_objects(char **keys, char **values, int size)
{
    cJSON *root = create_objects(keys, values, size);
    if (root == NULL)
    {
        printf("test_create_objects failed: create_objects returned NULL.\n");
        return -1;
    }

    printf("create_objects JSON:\n");
    print_json_object(root);
    cJSON_Delete(root);
    return 0;
}

int main(int argc, char *argv[])
{
    FILE *f = NULL;
    long length = 0;
    char *content = NULL;
    cJSON *root = NULL;
    double checksum = 0.0;
    long i = 0;
    long iterations = 5000;

    if (argc != 3)
    {
        fprintf(stderr, "Usage: %s <file.json> <iterations>\n", argv[0]);
        return 1;
    }

    iterations = atol(argv[2]);
    if (iterations <= 0)
    {
        fprintf(stderr, "Invalid iterations: %s\n", argv[2]);
        return 1;
    }

    f = fopen(argv[1], "rb");
    if (f == NULL)
    {
        fprintf(stderr, "Error: cannot open '%s'\n", argv[1]);
        return 1;
    }

    fseek(f, 0, SEEK_END);
    length = ftell(f);
    fseek(f, 0, SEEK_SET);

    if (length < 0)
    {
        fprintf(stderr, "Error: cannot determine file size\n");
        fclose(f);
        return 1;
    }

    content = (char *)malloc((size_t)length + 1);
    if (content == NULL)
    {
        fprintf(stderr, "Error: out of memory\n");
        fclose(f);
        return 1;
    }

    if (fread(content, 1, (size_t)length, f) != (size_t)length)
    {
        fprintf(stderr, "Error: failed to read file\n");
        free(content);
        fclose(f);
        return 1;
    }
    fclose(f);
    content[length] = '\0';

    struct timespec start_time = {0, 0};
    struct timespec end_time = {0, 0};
    clock_gettime(CLOCK_MONOTONIC, &start_time);

    for (i = 0; i < iterations; i++)
    {
        root = cJSON_ParseWithLength(content, (size_t)length + 1);
        if (root == NULL)
        {
            const char *err = cJSON_GetErrorPtr();
            fprintf(stderr, "Parse error near: %s\n", err != NULL ? err : "(unknown)");
            free(content);
            return 1;
        }
        checksum += tree_checksum(root);
        cJSON_Delete(root);
    }

    clock_gettime(CLOCK_MONOTONIC, &end_time);
    double elapsed_time = (double)(end_time.tv_sec - start_time.tv_sec)
                        + (double)(end_time.tv_nsec - start_time.tv_nsec) / 1000000000.0;
    printf("Computation time: %.6f seconds\n", elapsed_time);

    free(content);

    printf("Checksum: %.0f\n", checksum);
    return 0;
}