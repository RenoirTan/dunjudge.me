#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  string w[n];
  string* p = w;
  for (int i = 0; i < n; i++) {
    cin >> *(p+i);
  };
  bool s;
  string t;
  do {
    s = false;
    for (int i = 0; i < n-1; i++) {
      if ((*(p+i)).length() < (*(p+i+1)).length()) {
        t = *(p+i);
        *(p+i) = *(p+i+1);
        *(p+i+1) = t;
        s = true;
      };
    };
  } while (s);
  for (int i = 0; i < n; i++) {
    cout << *(p+i);
    if (i < n-1) {
      cout << '\n';
    };
  };
};
