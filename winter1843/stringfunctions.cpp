//stringfunctions.cpp from stringfunctions.h
#include <iostream>
#include <sstream>
#include <string>
#include "stringfunctions.h"
using namespace std;

int countdelimiter(string inputstring, string delimiter) {
	/*
		COUNTDELIMITER
		--------------
		Find how many instances of a string is in a string
	*/
	/*
		int i: For loop
		int lastfound: Integer of where the delimiter was last found to prevent recounting
		int foundindex: Where the next delimiter was found
		int totalfound: How many delimiters was counted
	*/
	int i, lastfound, foundindex, previousindex, totalfound;
	totalfound = 0;
	for (i = 0; i < inputstring.length(); ++i) { // Search throughout string
		foundindex = inputstring.find(delimiter,i); // Find delimiter
		if (foundindex != -1 && foundindex != previousindex) { // If delimiter is found and is found at a different location from last time
			previousindex = foundindex; // Set this index as last found
			++totalfound; // Add to count
		};
	}
	return totalfound; // Return count
};

string stringsplit (string inputstring, string delimiter, int index) {
	/*
		STRINGSPLIT
		-----------
		Return the string before the int indexth of a string
	*/
	int delimitercount = countdelimiter(inputstring, delimiter); // Count number of delimiters
	if (delimitercount < index) {
		throw "Index exceeds delimiter count."; // Index out of bounds
	} else if (index == 0) {
		if (delimitercount == 0) {
			return inputstring; // If there are no delimiters and the user just wants the first instance, return the original string and fulfill their weird desires
		} else {
			return inputstring.substr(0,inputstring.find(delimiter)); // Return first substring
		};
	} else {
		int i;
		string plaintext; // Make new string because you can't change original input
		// Erase previous substrings until you reach desired string
		for (i == 0; i < index; ++i) {
			plaintext.erase(0, (plaintext.find(delimiter) + delimiter.length()));
		};
		return plaintext.substr(0,plaintext.find(delimiter));
	};
};

int stringtoint (string s) {
	/*
		STRINGTOINT
		-----------
		Use stringstream to convert string to int
	*/
	stringstream ss(s);
	int i;
	ss >> i;
	return i;
};
