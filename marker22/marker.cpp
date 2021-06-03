#include <bits/stdc++.h>
using namespace std;

int main () {
  int n;
  cin >> n;
  string suma[n][5];
  string sumb[n][5];
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < 5; j++) {
      cin >> suma[i][j];
    };
  };
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < 5; j++) {
      cin >> sumb[i][j];
    };
  };
  int scora = 0;
  int scorb = 0;
  int a, b, c;
  for (int i = 0; i < n; i++) {
    stringstream sa(suma[i][0]);
    sa >> a;
    stringstream sb(suma[i][2]);
    sb >> b;
    stringstream sc(suma[i][4]);
    sc >> c;
    if (suma[i][1] == "+") {
      if (a+b == c) {
        scora++;
      };
    } else if (suma[i][1] == "-") {
      if (a-b == c) {
        scora++;
      };
    };
  };
  for (int i = 0; i < n; i++) {
    stringstream sa(sumb[i][0]);
    sa >> a;
    stringstream sb(sumb[i][2]);
    sb >> b;
    stringstream sc(sumb[i][4]);
    sc >> c;
    if (sumb[i][1] == "+") {
      if (a+b == c) {
        scorb++;
      };
    } else if (sumb[i][1] == "-") {
      if (a-b == c) {
        scorb++;
      };
    };
  };
  cout << "Spongebob: " << scora << '\n';
  cout << "Patrick: " << scorb;
};
