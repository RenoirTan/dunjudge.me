#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include "stringfunctions.h"
using namespace std;

int main() {
  cout << "Winter Clothes Scorer" << endl << "---------------------" << endl;
  string filename;
  ifstream infile;
  cout << "Enter name of file: ";
  cin >> filename;
  infile.open(filename + ".txt");
  cout << endl << "Processing...";
  if (infile.is_open()) {
    vector< string > filelines;
    string inputline;
    while (getline (infile, inputline)) {
      filelines.push_back( inputline );
    };
    cout << endl;
    if (filelines.size() <= 2) {
      cout << "Max Score: 0";
    } else {
      int numclothes = (filelines.size() - 1);
      int clothes[numclothes][2];
      int i, j, count;
      int maxcount = 0;
      string line;
      for (i = 0; i < numclothes; ++i) {
        line = filelines.at(i + 1);
        clothes[i][0] = stringtoint(line.substr(0, line.find(' ')));
        line.erase(0, (line.find(' ') + 1));
        clothes[i][1] = stringtoint(line);
      };
      for (i = 0; i < numclothes; ++i) {
        j = 0;
        count = 0;
        while (j < numclothes) {
          if (i == j) {
            ++j;
          } else {
            if (clothes[i][0] <= clothes[j][0] && clothes[i][1] >= clothes[j][1]) {
              ++count;
            };
          };
          ++j;
          //cout << "Count: " << count << endl;
        };
        if (count > maxcount) {
          maxcount = count;
        };
      };
      cout << "Max Score: " << maxcount;
    };
  } else {
    cout << endl << "File cannot be opened.";
  };
};
