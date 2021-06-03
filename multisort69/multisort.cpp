#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
using namespace std;

int stringtoint(string s) {
	stringstream ss(s);
	int i;
	ss >> i;
	return i;
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

int main() {
  cout << "Multi-sorter" << endl << "------------" << endl;
  string filename;
  cout << "Enter file name: ";
  cin >> filename;
  cout << endl << "Opening file..." << endl;
  filename += ".txt";
  ifstream infile;
  infile.open(filename);
  if (infile.is_open()) {
    cout << "Processing...";
    string line;
    vector<string> inputlines;
    while(getline(infile,line)) {
      inputlines.push_back(line);
    };
    int numlines = stringtoint(stringsplit(inputlines.at(0), " ", 0));
    int numsort = stringtoint(stringsplit(inputlines.at(0), " ", 1));
    int items[numlines][numsort];
    int sorted[numlines][numsort];
    int i;
    for (i = 1; i <= numlines; ++i) {
      for (j = 0; j < numsort; ++j) {
        items[(numlines-1)][numsort] = stringtoint(
          stringsplit(inputlines.at(i), " ", j)
        );
      };
    };
    int max, k, found;
    for (i = 0; i < numlines; ++i) {
      for (j = 0; j < numsort; ++j) {
        for (k = 0; k < numsort; ++k) {
          if (items[i][k] > max) {
            max = items[i][k];
            found = k;
          };
        };
      };
    };
  } else {
    cout << "Could not open file. Exiting..."
  }
}
