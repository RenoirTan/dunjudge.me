#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  int va[n], vb[n];
  int* a = va;
  int* b = vb;
  for (int i = 0; i < n; i++) {
    cin >> *(a+i);
  };
  for (int i = 0; i < n; i++) {
    cin >> *(b+i);
  };
  bool unsorted = true;
  int t;
  while (unsorted) {
    unsorted = false;
    for (int i = 0; i < n-1; i++) {
      if (*(a+i) < *(a+i+1)) {
        t = *(a+i+1);
        *(a+i+1) = *(a+i);
        *(a+i) = t;
        unsorted = true;
      };
    };
  };
  unsorted = true;
  while (unsorted) {
    unsorted = false;
    for (int i = 0; i < n-1; i++) {
      if (*(b+i) > *(b+i+1)) {
        t = *(b+i+1);
        *(b+i+1) = *(b+i);
        *(b+i) = t;
        unsorted = true;
      };
    };
  };
  int s = 0;
  for (int i = 0; i < n; i++) {
    s += (*(a+i)) * (*(b+i));
  };
  cout << s;
};