#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  int m, a;
  int r = 1;
  for (int i = 0; i < n; i++) {
    cin >> a;
    if (i == 0) {
      m = a;
    } else if (a > m) {
      m = a;
      r++;
    };
  };
  cout << r;
};
