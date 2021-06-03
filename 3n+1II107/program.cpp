#include <bits/stdc++.h>
using namespace std;

int main()
{
    int length, iterations;
    cin >> length >> iterations;
    for (int i = 1; i < iterations; i++) {
        if (length == 1) {
            cout << -1;
            return 0;
        }
        if (length % 2 == 0)
            length /= 2;
        else
            length = 3*length + 1;
    }
    cout << length;
}