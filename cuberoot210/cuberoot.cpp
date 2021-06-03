#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  long long int c[n];
  long long int* p = c;
  for (int i = 0; i < n; i++) {
    cin >> *(p+i);
  };
  for (int i = 0; i < n; i++) {
    cout << cbrt(*(p+i));
    if (i < n-1) {
      cout << '\n';
    };
  };
};
