#include <bits/stdc++.h>
using namespace std;

int main () {
  string b;
  cin >> b;
  int d = 0;
  for (int i = 1; i <= b.length(); i++) {
    if (b[i-1] == '1') {
      d += pow(2,(b.length()-i));
    };
  };
  cout << d;
}
