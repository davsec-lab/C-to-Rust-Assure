static unsigned parse_hex4(const unsigned char * const input);
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
