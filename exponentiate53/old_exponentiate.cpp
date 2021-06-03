#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  long long int aa[n], ba[n], ma[n];
  long long int* a = aa;
  long long int* b = ba;
  long long int* m = ma;
  long long int t;
  for (int i = 0; i < n; i++) {
    cin >> *(a+i) >> *(b+i) >> *(m+i);
  };
  for (int i = 0; i < n; i++) {
    t = 1;
    for (int j = 0; j < *(b+i); j++) {
      t *= *(a+i);
    };
    cout << fmod(t, *(m+i));
    if (i < n-1) {
      cout << '\n';
    };
  };
};
