#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  int c[n];
  int* p = c;
  for (int i = 0; i < n; i++) {
    *(p+i) = i;
  }
  int s;
  cin >> s;
  int t, s1, s2;
  for (int i = 0; i < s; i++) {
    cin >> s1 >> s2;
    t = *(p+s1);
    *(p+s1) = *(p+s2);
    *(p+s2) = t;
  };
  for (int i = 0; i < n; i++) {
    cout << *(p+i);
    if (i < n-1) {
      cout << '\n';
    };
  };
}
