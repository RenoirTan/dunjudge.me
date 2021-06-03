#include <bits/stdc++.h>
using namespace std;

int main () {
  string s;
  bool t = true;
  cin >> s;
  for (int i = 0; i < s.length(); i++) {
    if (!isdigit(s.at(i))) {
      t = false;
      break;
    };
  };
  int a;
  if (t) {
    istringstream(s) >> a;
    a *= 2;
    cout << a;
  } else {
    transform(s.begin(), s.end(), s.begin(), ::toupper);
    cout << s;
  };
};
