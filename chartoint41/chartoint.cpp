#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  char m[n];
  char* p = m;
  for (int i = 0; i < n; i++) {
    cin >> *(p+i);
  };
  int c;
  for (int i = 0; i < n; i++) {
    c = *(p+i);
    cout << c;
    if (i < n-1) {
      cout << '\n';
    };
  };
};
