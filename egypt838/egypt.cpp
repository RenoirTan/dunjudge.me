#include <bits/stdc++.h>
using namespace std;

int main () {
	int n;
	cin >> n;
	for (int i = 1; i <= 2*n-1; i++) {
		for (int j = 1; j <= 2*n-1; j++) {
			if (i <= n && j <= n) {
				if (i < j) {
					cout << i;
				} else {
					cout << j;
				};
			} else if (i <= n && j > n) {
				if (i < 2*n-j) {
					cout << i;
				} else {
					cout << 2*n-j;
				};
			} else if (i > n && j < n) {
				if (j < 2*n-i) {
					cout << j;
				} else {
					cout << 2*n-i;
				};
			} else {
				if (i > j) {
					cout << (2*n - i);
				} else {
					cout << (2*n - j);
				};
			};
			if (j == 2*n-1 && i < 2*n-1) {
				cout << '\n';
			};
		};
	};
}
