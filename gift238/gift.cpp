#include <bits/stdc++.h>
using namespace std;

int main () {
  int n, k;
  cin >> n >> k;
  int t = 0;
  int p, c;
  for (int i = 0; i < n; i++) {
    p = c;
    cin >> c;
    if (i != 0 && (c+k) <= p) {
      t += 1;
    };
  };
  cout << t;
};
