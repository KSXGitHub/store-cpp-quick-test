
/* Require C++ language */
#ifndef __cplusplus
	#error C++ is required

/* Require C++ 14 standard */
#elif __cplusplus < 201402L
	#error Full C++14 features is required

/* Everything is OK */
#else
	#include "__main_directives.cc"
	#include "__main.cc"

#endif