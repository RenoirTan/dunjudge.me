#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  string s, lw;
  lw = "";
  for (int i = 0; i < n; i++) {
    cin >> s;
    if (s.length() > lw.length()) {
      lw = s;
    };
  };
  cout << lw;
}
