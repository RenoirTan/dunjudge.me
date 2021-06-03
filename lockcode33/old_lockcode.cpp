#include <bits/stdc++.h>
using namespace std;

bool isprime(int n) {
  bool p = true;
  if (n > 1) {
    for (int i = 2; i < sqrt(n); i++) {
      if (n%i == 0) {
        p = false;
      };
    };
  } else {
    p = false;
  };
  return p;
};

int main () {
  int s;
  bool b = true;
  for (int i = 0; i < 4; i++) {
    cin >> s;
    if (!isprime(s)) {
      b = false;
    };
  };
  if (b) {
    cout << "Opening...";
  } else {
    cout << "Wrong code";
  };
};
