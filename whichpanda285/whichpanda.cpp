#include <bits/stdc++.h>
using namespace std;

int main()
{
    int pandas;
    cin >> pandas;
    int bambooshoots[pandas+1];
    bambooshoots[0] = 0;
    int first = 0;
    int second = 0;
    for (int i = 1; i <= pandas; i++) {
        cin >> bambooshoots[i];
        if (bambooshoots[i] >= bambooshoots[first]) {
            second = first;
            first = i;
        }
    }
    if (bambooshoots[first] == bambooshoots[second])
        cout << "MMMMMEEEEOOOOOWWWW!!!!!";
    else
        cout << first;
}