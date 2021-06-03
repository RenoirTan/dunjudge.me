#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  int r[n];
  int* p = r;
  int j;
  for (int i = 1; i <= n; i++) {
    cin >> j;
    *(p+j-1) = i;
  };
  for (int i = 0; i < n; i++) {
    cout << *(p+i);
    if (i < n-1) {
      cout << '\n';
    };
  };
};
