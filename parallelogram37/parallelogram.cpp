#include <bits/stdc++.h>
using namespace std;

int main () {
	int n;
	cout << "How many times do you want to print? ";
	cin >> n;
	string s;
	cout << "Enter string: ";
	cin >> s;
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < i; j++) {
			cout << ' ';
		};
		cout << s;
		if (i < n-1) {
			cout << endl;
		};
	};
	string dum;
	cout << endl << "Enter a character to quit: ";
	cin >> dum;
}
