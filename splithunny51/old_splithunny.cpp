#include <bits/stdc++.h>
using namespace std;

int main () {
  int r, c;
  cin >> r >> c;
  char map[r][c];
  string input;
  for (int i = 0; i < r; i++) {
    cin >> input;
    for (int j = 0; j < c; j++) {
      map[i][j] = input[j];
    };
  };
  int sum = 0;
  for (int i = 0; i < r; i++) {
    for (int j = 0; j < c; j++) {
      if (i == 0 && j == 0) {
        if (map[i][j] == 'H') {
          sum++;
        };
      } else if (i == 0 && j != 0) {
        if (map[i][j] == 'H' && map[i][j-1] != 'H') {
          sum++;
        };
      } else if (i != 0 && j == 0) {
        if (map[i][j] == 'H' && map[i-1][j] != 'H') {
          sum++;
        };
      } else {
        if (map[i][j] == 'H' && map[i-1][j] != 'H' && map[i][j-1] != 'H') {
          sum++;
        };
      };
    };
  };
  cout << "Oh, bother. There are " << sum << " pools of hunny.";
}
