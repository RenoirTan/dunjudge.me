/*
	STRINGFUNCTIONS.H
	-----------------
	stringfunctions.h contains functions
	that help make string processing easier.
	This code is not to shared or edited
	without permission from the author.
*/

#include <iostream>
#include <sstream>
#include <string>
using namespace std;

// Define self
#ifndef stringfunctions_h
#define stringfunctions_h

// Define countdelimiter
#ifndef countdelimiter_h
#define countdelimiter_h

int countdelimiter(string inputstring, string delimiter);

#endif

// Define stringsplit
#ifndef stringsplit_h
#define stringsplit_h

string stringsplit (string inputstring, string delimiter, int index);

#endif

// Define stringtoint
#ifndef stringtoint_h
#define stringtoint_h

int stringtoint (string s);

#endif

#endif
