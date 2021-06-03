#include <bits/stdc++.h>
using namespace std;

int findMin(int n, int a[]) {
  int m = 2000001;
  int* p = a;
  for (int i = 0; i < n; i++) {
    if (*(p+i) < m) {
      m = *(p+i);
    };
  };
  return m;
}
