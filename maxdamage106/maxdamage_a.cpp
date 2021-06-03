/*
Weapon
Primary Secondary
1 2 3 4
*/

#include <iostream>
#include <cstdlib>
#include <ctype.h>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <stdio.h>
using namespace std;

int stringToInt(string s) {
	stringstream ss(s);
	int i;
	ss >> i;
	return i;
};

int main () {
	cout << "Max Damage Calculator" << endl << "---------------------" << endl;
	string inputs[3];
	ifstream inputFile;
	string inputFileName;
	cout << "Input file name: ";
	cin >> inputFileName;
	cout << "Input received. ";
	inputFileName += ".txt";
	inputFile.open(inputFileName);
	if (inputFile.is_open()) {
		cout << "File opened." << endl;
		int parsedLines = 0;
		string anInput;
		while (getline (inputFile,anInput)) {
			if (parsedLines < 3) {
				inputs[parsedLines] = anInput;
			};
			++parsedLines;
		};
		int i;
		cout << "File contents: " << endl;
		for (i=0; i<3; ++i) {
			cout << inputs[i] << endl;
		};
		cout << "-------------------" << endl;
		string weapon = inputs[0];
		int primary = stringToInt(inputs[1].substr(0,inputs[1].find(' ')));
		inputs[1].erase(0, inputs[1].find(' ') + 1);
		int secondary = stringToInt(inputs[1].substr(0,inputs[1].find(' ')));
		int numOfSpaces = 0;
		string aString = inputs[2];
		for (i=0; aString[i]!='\0'; ++i) {
			if (aString[i] == ' ') {
				++numOfSpaces;
			};
		};
		cout << "Weapon: " << weapon << endl << "Primary: " << primary << endl << "Secondary: " << secondary << endl << "Attacks: ";
		int attacks;
		int totalAttacks = 0;
		for (i=0; i <= numOfSpaces; ++i) {
			attacks = stringToInt(inputs[2].substr(0,inputs[2].find(' ')));
			inputs[2].erase(0, inputs[2].find(' ') + 1);
			cout << attacks << ' ';
			inputs[2].erase(0,inputs[1].find(' ') + 1);
			totalAttacks += attacks;
		};
		cout << endl << "Total attacks: " << totalAttacks << endl;
		float attackTotal = totalAttacks;
		double maxDamage;
		maxDamage = (((4 * primary) + secondary) * (attackTotal/100));
		cout << "Damage before multiplier: " << maxDamage << endl;
		if (weapon == "G") {
			maxDamage *= 1.6;
		} else if (weapon == "K") {
			maxDamage *= 1.7;
		};
		cout << "ACTUAL DAMAGE (grand total): " << maxDamage << endl;
	} else {
		cout << "Error" << endl;
		exit(EXIT_FAILURE);
	};
	cout << "Runtime complete.";
	return 0;
};