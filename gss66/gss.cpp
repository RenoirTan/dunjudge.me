#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  int c[n];
  int* p = c;
  for (int i = 0; i < n; i++) {
    cin >> *(p+i);
  };
  int tmp;
  bool ns;
  do {
    ns = false;
    for (int i = 0; i < n-1; i++) {
      if (*(p+i) < *(p+i+1)) {
        tmp = *(p+i+1);
        *(p+i+1) = *(p+i);
        *(p+i) = tmp;
        ns = true;
      };
    };
  } while (ns);
  int sum = 0;
  for (int i = 0; i < n; i++) {
    if ((i+1)%4 != 0) {
      sum += *(p+i);
    };
  };
  cout << sum;
}
