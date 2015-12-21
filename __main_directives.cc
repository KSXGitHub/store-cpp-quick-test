
/* standard libraries */

#include <iostream>
#include <bitset>
#include <vector>
#include <list>
#include <array>
#include <map>
#include <set>
#include <iterator>
#include <functional>
#include <complex>
#include <cstring>
#include <cstdio>
#include <cstdint>
#include <csetjmp>
#include <typeinfo>
#include <type_traits>
#include <tchar.h>
#include <conio.h>

/* API libraries */

#include <windows.h>
#include <gl/gl.h>

/* from ../../include/ */

#include "utilities.hpp"
#include "abbreviation.hpp"
#include "winutil.hpp"

/* macros */

#define USINGNS(ns) using namespace ns
#define USINGALLNS USINGNS(std); USINGNS(util); USINGNS(shorten); USINGNS(winutil); USINGNS(__);