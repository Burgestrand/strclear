#include <ruby.h>
#include <string.h>

/* call-seq: String#clear!
 *
 * Zero out the string contents.
 */
VALUE rb_str_clear_bang(VALUE str)
{
  memset(RSTRING_PTR(str), 0, RSTRING_LEN(str));
  return str;
}

void Init_strclear()
{
  rb_define_method(rb_cString, "clear!", rb_str_clear_bang, 0);
}
