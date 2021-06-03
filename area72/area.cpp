#include <bits/stdc++.h>
using namespace std;

int main () {
    int n;
    cin >> n;
    int h, w;
    long long int s = 0;
    for (int i = 0; i < n; i++) {
        cin >> h >> w;
        s += h*w;
    };
    cout << s;
}
