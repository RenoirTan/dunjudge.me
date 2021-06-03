#include <bits/stdc++.h>
using namespace std;

int main()
{
    cout << fixed;
    cout << setprecision(1);
    int m, c;
    cin >> m >> c;
    if (c == 0) {
        cout << 0.0;
        return 0;
    }
    double intercept = -((double)c/(double)m);
    cout << intercept;
    return 0;
}