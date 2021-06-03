#include <iostream>
#include <string>
using namespace std;

int main () {
	cout << "Echo Overlap Counter" << endl << "--------------------" << endl;
	int i, firstback, secondback, maxcheck;
	firstback = 0;
	secondback = 0;
	string firstmoo, secondmoo;
	cout << "Input first moo: ";
	cin >> firstmoo;
	if (firstmoo.length() == 0) {
		throw "Moo cannot be empty.";
	};
	cout << endl << "Input second moo: ";
	cin >> secondmoo;
	if (secondmoo.length() == 0) {
		throw "Moo cannot be empty.";
	};
	if (firstmoo.length() <= secondmoo.length()) {
		maxcheck = (firstmoo.length() - 1);
	} else {
		maxcheck = (secondmoo.length() - 1);
	};
	i = maxcheck;
	while ( firstmoo.substr(i, (maxcheck - i)) != secondmoo.substr(0, i) ) {
		--i;
	};
	firstback = i;
	i = maxcheck;
	while ( secondmoo.substr(i, (maxcheck - i)) != firstmoo.substr(0, i) ) {
		--i;
	};
	secondback = i;
	cout << endl << "Maximum echo overlap: ";
	if (firstback >= secondback) {
		cout << firstback;
	} else {
		cout << secondback;
	}
	return 0;
};