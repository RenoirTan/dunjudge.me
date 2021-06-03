#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  if (n > 1)
    cout << (int)log2(n);
  else
    cout << 0;
}
