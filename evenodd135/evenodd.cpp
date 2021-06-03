#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    cin >> n;
    bool parity[n];

    for (int i = 0; i < n; i++) {
        string number;
        cin >> number;
        char lastDigit = *(number.end()-1);
        parity[i] = (bool) ((lastDigit-'0') % 2);
    }

    for (int i = 0; i < n; i++) {
        if (parity[i])
            cout << "odd";
        else
            cout << "even";
        if (i < n-1)
            cout << '\n';
    }

    return 0;
}