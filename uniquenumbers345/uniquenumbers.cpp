#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    cin >> n;
    int numbers[n];
    for (int i = 0; i < n; i++) {
        int nm;
        cin >> nm;
        numbers[i] = nm;
    }
    if (n == 1) {
        cout << 1;
        return 0;
    }
    sort(numbers, numbers + n);
    int unique = 0;
    for (int i = 0; i < n; i++) {
        if (numbers[i] == numbers[i+1])
            continue;
        unique++;
    }
    cout << unique;
    return 0;
}