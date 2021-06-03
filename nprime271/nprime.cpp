#include <bits/stdc++.h>
using namespace std;

bool isprime (int a) {
  if (a < 2) {
    return false;
  };
  int m = a/2;
  for (int i = 2; i <= (m); i++) {
    if (a%i == 0) {
      return false;
      break;
    };
  };
  return true;
};

int main () {
  int n;
  cin >> n;
  int j = 0;
  int c = 1;
  while (c <= n) {
    j++;
    if (isprime(j)) {
      c++;
    };
  };
  cout << j;
};
