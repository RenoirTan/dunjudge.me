#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  int da[n], qa[n];
  int* d = da;
  int* q = qa;
  bool ba[n];
  bool* b = ba;
  for (int i = 0; i < n; i++) {
    cin >> *(d+i);
  };
  for (int i = 0; i < n; i++) {
    cin >> *(q+i);
    *(b+i) = true;
  };
  int c;
  cin >> c;
  int pa[n];
  int* p = pa;
  int closest;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (*(b+j) == true) {
        closest = j;
        cout << "available: " << j << '\n';
        break;
      };
    };
    for (int j = 0; j < n; j++) {
      cout << "i: " << i << " j: " << j << " closest: " << closest << " can?: " << *(b+j) << '\n';
      if (*(b+j) == true) {
        if ( (c-((*(d+i)) + (*(q+j)))) < (c-((*(d+i)) + (*(q+closest)))) ) {
          closest = j;
          *(b+j) = false;
        };
      };
    };
    *(p+i) = *(q+closest);
  };
  for (int i = 0; i < n; i++) {
    cout << *(d+i);
    if (i < n-1) {
      cout << ' ';
    };
  };
  cout << '\n';
  for (int i = 0; i < n; i++) {
    cout << *(p+i);
    if (i < n-1) {
      cout << ' ';
    };
  };
};
