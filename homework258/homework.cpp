#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    cin >> n;
    int homework[n];
    for (int i = 0; i < n; i++) {
        int h;
        cin >> h;
        homework[i] = h;
    };
    sort(homework, homework + n);
    for (int i = 0; i < n; i++) {
        int h = homework[i];
        cout << h;
        if (i < n-1) {
            cout << ' ';
        }
    }
    return 0;
};