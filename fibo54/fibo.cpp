#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n, m;
    cin >> n >> m;
    int i1 = 0;
    int i2 = 1;
    int new_i;
    for (int i = 0; i < n; i++)
    {
        new_i = (i1 + i2) % m;
        i2 = i1;
        i1 = new_i;
    };
    cout << new_i;
};