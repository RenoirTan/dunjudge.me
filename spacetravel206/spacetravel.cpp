#include <bits/stdc++.h>
using namespace std;

int main () {
  int n, s;
  cin >> n >> s;
  int travel[n];
  int* t = travel;
  for (int i = 0; i < n; i++) {
    cin >> *(t+i);
  };

  bool sorted = false;
  int temporary;
  while (!sorted) {
    sorted = true;
    for (int i = 0; i < (n-1); i++) {
      if (*(t+i) < *(t+i+1)) {
        temporary = *(t+i);
        *(t+i) = *(t+i+1);
        *(t+i+1) = temporary;
        sorted = false;
      };
    };
  }

  int time = 0;
  for (int i = 0; i < n; i++) {
    if (s >= 1) {
      time += *(t+i);
      s--;
    } else {
      time += (2*(*(t+i)));
    };
  };
  cout << time;
}
