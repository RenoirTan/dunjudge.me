#include <iostream>
#include <cstdlib>
#include <fstream>
#include <sstream>
#include <vector>
using namespace std;

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

int stringtoint(string s) {
	stringstream ss(s);
	int i;
	ss >> i;
	return i;
};

int main () {
  cout << "Cat Communication System" << endl << "------------------------" << endl;
  string filename;
  cout << "Input event file: ";
  cin >> filename;
  filename += ".txt";
  cout << endl << "Processing...";
  ifstream eventfile;
  eventfile.open(filename)
  if (eventfile.is_open()) {
    string inputline, temporary;
    vector<string> inputlines;
    while ( getline (eventfile, inputline) ) {
      inputlines.push_back(inputline);
    };
    int lencats = stringtoint ( stringsplit (inputlines.at(0), " ", 0 ) );
    int leninstr = stringtoint ( stringsplit (inputlines.at(0), " ", 1 ) );
    int startcat;
    int endcat;
    int cat;
    bool cats[lencats];
    bool cantrans;
    int i, j;
    ofstream output ("output_"+filename);
    for (i = 0; i < lencats; ++i) {
      cats[i] = true;
    };
    for (i = 1; i <= leninstr; ++i) {
      if (stringsplit (inputlines.at(i), " ", 0) == "TRANSMIT") {
        startcat = stringtoint (stringsplit (inputlines.at(i), " ", 1) );
        endcat = stringtoint (stringsplit (inputlines.at(i), " ", 2) );
        cantrans = true;
        for (j = startcat; j <= endcat; ++j) {
          if (!cats) {
            cantrans = false;
          };
        };
        if (cantrans) {
          output << inputlines.at(i) + ": YES" << endl;
        } else {
          output << inputlines.at(i) + ": NO" << endl;
        };
      } else if () {

      } else if () {

      } else {
        break;
      };
    };
  } else {
    exit(EXIT_FAILURE);
  };
  return 0;
};
