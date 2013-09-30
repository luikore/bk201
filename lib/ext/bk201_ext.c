#include "ruby.h"
#include <memory.h>

static VALUE bk201;

// acquire memory, depends on operating system
static char* 
acquire_runnable_memory (unsigned int sz)
{
	return malloc (sz);
}

#define reverse_dw_bytes(p, i) \
	*p++ = i & 0xff;\
	*p++ = (i & 0xff00) >> 8;\
	*p++ = (i & 0xff0000) >> 16;\
	*p++ = (i & 0xff000000) >> 24;

#define reverse_w_bytes(p, i) \
	*p++ = i & 0xff;\
	*p++ = (i & 0xff00) >> 8;

// op dword -> string
static VALUE
opb_dword (VALUE self, VALUE opb, VALUE num) {
	int i = NUM2INT (num);
	char s[5];
	char* p = s;
	*p++ = FIX2INT(opb);
	reverse_dw_bytes (p, i);
	return rb_str_new (s, 5);
}

// op(2byte) dword -> string
static VALUE
opb2_dword (VALUE self, VALUE opb1, VALUE opb2, VALUE num) {
	int i = NUM2INT (num);
	char s[6];
	char* p = s;
	*p++ = FIX2INT (opb1);
	*p++ = FIX2INT (opb2);
	reverse_dw_bytes (p, i);
	return rb_str_new (s, 6);
}

static VALUE
opb_word (VALUE self, VALUE opb, VALUE num) {
	int i = NUM2INT (num);
	char s[3];
	char* p = s;
	*p++ = FIX2INT (opb);
	reverse_w_bytes (p, i);
	return rb_str_new (s, 3);
}

static VALUE
opb2_word (VALUE self, VALUE opb1, VALUE opb2, VALUE num) {
	int i = NUM2INT (num);
	char s[4];
	char* p = s;
	*p++ = FIX2INT (opb1);
	*p++ = FIX2INT (opb2);
	reverse_w_bytes (p, i);
	return rb_str_new (s, 4);
}

// compile an asm string into method
static VALUE 
asm_method (VALUE self, VALUE klass,
		VALUE vstr_name, VALUE vsym_ty, VALUE vn_params, 
		VALUE vstr_code)
{
	// prepare
	char* str_name = StringValueCStr (vstr_name);
	unsigned int len_code = RSTRING_LEN (vstr_code);
	// a little bit more
	char* str_code = acquire_runnable_memory(len_code + 20);
	unsigned int n_params = NUM2INT(vn_params);
	char* pcode = str_code;

#	define x(n) \
		*pcode = n; ++pcode;
	x(0x55);								// push ebp
	x(0x8B); x(0xEC);						// mov ebp, esp

	// copy body
	memcpy (pcode, RSTRING_PTR (vstr_code), len_code);
	pcode += len_code;

	x(0x5D);								// pop ebp
	x(0xC3);								// ret
#	undef x
	
	// define method for klass
	rb_define_method (klass, str_name, RUBY_METHOD_FUNC (str_code), n_params);
	return Qnil;
}

#define def(method, n) \
	rb_define_module_function (bk201, #method,\
			RUBY_METHOD_FUNC (method), n)

// Entry point
#ifdef __cplusplus
extern "C" 
void __declspec (dllexport)
#else
void
#endif
Init_bk201_ext ()
{
	bk201 = rb_define_module ("Bk201");
	def (asm_method, 5);
	def (opb_dword, 2);
	def (opb2_dword, 3);
	def (opb_word, 2);
	def (opb2_word, 3);
}
