#include <bits/stdc++.h>
using namespace std;

int maxDevastation(int devastation[], const int trees, const int efficacy) {
    int maximum = 0;
    for (size_t i = efficacy; i <= trees; i++) {
        maximum = max(maximum, devastation[i]-devastation[i-efficacy]);
    }
    return maximum;
}

int main()
{
    int trees, efficacy;
    cin >> trees >> efficacy;
    int devastation[trees+1];
    devastation[0] = 0;
    for (size_t i = 1; i <= trees; i++) {
        int tree;
        cin >> tree;
        devastation[i] = tree + devastation[i-1];
    }
    cout << maxDevastation(devastation, trees, efficacy);
    return 0;
}