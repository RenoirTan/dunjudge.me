#include <bits/stdc++.h>
using namespace std;

int main () {
  int n, m;
  cin >> n >> m;
  int c = 0;
  bool a = true;
  string s;
  for (int i = 0; i < m; i++) {
    cin >> s;
    if (s == "LAND") {
      c += 1;
    } else if (s == "LEAVE") {
      c -= 1;
    } else if (s == "EVACUATE") {
      c = 0;
    };
    if (c > n) {
      a = false;
      break;
    };
  };
  if (a) {
    cout << "PLAN ACCEPTED" << endl;
  } else {
    cout << "PLAN REJECTED" << endl;
  };
}
