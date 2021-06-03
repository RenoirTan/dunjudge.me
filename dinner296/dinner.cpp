#include <bits/stdc++.h>
using namespace std;

int main () {
    int h, w;
    int potato = 0;
    int peanut = 0;
    char t;
    cin >> h >> w;
    for (int i = 0; i < (h*w); i++) {
        cin >> t;
        if (t == 'O') {
            potato++;
        } else if (t == 'N') {
            peanut++;
        }
    };
    cout << potato << ' ' << peanut;
    return 0;
}