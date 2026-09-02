/* Coverage goals for extractor / type graph tests:
 * - builtin typedef aliases and alias chains
 * - typedef enum with named tag
 * - typedef enum with anonymous tag
 * - typedef struct with char* / void* fields (rich struct)
 * - forward-declared plain struct that depends on typedef + enum + rich struct
 * - file-scope static definitions that depend on typedef / enum / struct
 * - static helper functions that should not be extracted as file-scope variables
 * - function dependency chain for merged translation order
 */

typedef unsigned char Bool;
typedef unsigned char UChar;
typedef unsigned short UInt16;
typedef unsigned int UInt32;
typedef int Int32;
typedef UInt32 Count;

typedef enum ParseMode {
   MODE_RAW = 0,
   MODE_RLE = 1,
   MODE_DICT = 2
} ParseMode;

typedef enum {
   TAG_EMPTY = 0,
   TAG_BUFFER = 1,
   TAG_CHAIN = 2
} NodeTag;

typedef struct PlainNode PlainNode;

typedef struct RichBuffer {
   char *cursor;
   void *owner;
   Count length;
   ParseMode mode;
   NodeTag tag;
   PlainNode *link;
} RichBuffer;

struct PlainNode {
   UInt32 id;
   Count weight;
   RichBuffer *payload;
   PlainNode *next;
   ParseMode preferred_mode;
};

static UInt32 g_lookup[4] = { 1U, 3U, 7U, 15U };
static Count g_total_nodes = 0U;
static NodeTag g_last_tag = TAG_EMPTY;
static PlainNode *g_head = (PlainNode *)0;
static RichBuffer g_active_buffer = {
   (char *)0,
   (void *)0,
   0U,
   MODE_RAW,
   TAG_EMPTY,
   (PlainNode *)0
};

static UInt32 fold_byte ( UInt32 seed, UChar value )
{
   return (seed << 5) ^ seed ^ (UInt32)value;
}

static ParseMode normalize_mode ( ParseMode mode )
{
   switch (mode) {
      case MODE_RLE:
         return MODE_DICT;
      case MODE_DICT:
         return MODE_DICT;
      default:
         return MODE_RAW;
   }
}

static void bind_payload ( PlainNode *node, RichBuffer *buf )
{
   buf->owner = (void *)node;
   buf->link = node;
   if (buf->cursor != (char *)0 && buf->length > 0U) {
      buf->cursor[0] = (char)(node->id & 0xFFU);
   }
   node->payload = buf;
}

static UInt32 measure_payload ( RichBuffer *buf )
{
   UInt32 checksum = 0U;
   UInt32 i;
   for (i = 0U; i < buf->length && i < 4U; ++i) {
      checksum = fold_byte(checksum ^ g_lookup[i], (UChar)buf->cursor[i]);
   }
   return checksum;
}

UInt32 process_node ( PlainNode *node, RichBuffer *incoming, Bool keep_global )
{
   Count total = 0U;
   if (node == (PlainNode *)0 || incoming == (RichBuffer *)0) return 0U;

   incoming->mode = normalize_mode(incoming->mode);
   bind_payload(node, incoming);

   total += node->weight;
   total += measure_payload(incoming);
   g_total_nodes += 1U;
   g_last_tag = incoming->tag;

   if (keep_global) {
      g_active_buffer = *incoming;
      g_head = node;
   }

   if (incoming->tag == TAG_BUFFER && incoming->link != (PlainNode *)0) {
      total += incoming->link->weight;
   }

   return total + g_total_nodes;
}

UInt16 snapshot_mode_id ( PlainNode *node )
{
   if (node == (PlainNode *)0) {
      return (UInt16)MODE_RAW;
   }
   return (UInt16)node->preferred_mode;
}

UInt32 run_pipeline ( PlainNode *node )
{
   g_active_buffer.mode = MODE_RLE;
   g_active_buffer.tag = TAG_BUFFER;
   return process_node(node, &g_active_buffer, (Bool)1);
}
