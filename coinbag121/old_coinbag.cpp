#include <bits/stdc++.h>
using namespace std;

int main () {
  int coins, bag; // number of types of coins || bag capacity
  cin >> coins >> bag;
  double weight[coins];
  double value[coins];
  double* w = weight;
  double* v = value;
  double minimum = 501; // minimum coin weight
  int sum = 0; // total cost
  double high; // most value-dense coin
  int j; // selected coin from high
  for (int i = 0; i < coins; i++) {
    cin >> *(w+i) >> *(v+i);
    if (*(w+i) < minimum) {
      minimum = *(w+i);
    };
  };
  // cout << minimum << '\n';
  while (bag >= minimum) {
    high = 0;
    j = 0;
    for (int i = 0; i < coins; i++) {
      if (bag >= *(w+i)) {
        if (high < ( *(v+i) / *(w+i) )) {
          high = ( *(v+i) / *(w+i) );
          j = i;
        };
      };
    };
    sum += *(v+j);
    bag -= *(w+j);
    // cout << sum << ' ' << bag << '\n';
  };
  cout << sum;
}
