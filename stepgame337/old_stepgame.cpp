#include <bits/stdc++.h>
using namespace std;

int main()
{
    int steps;
    cin >> steps;
    if (steps == 0) {
        cout << 0;
        return 0;
    }
    long long int subarraySums[steps + 1];
    subarraySums[0] = 0;
    for (int i = 1; i <= steps; i++) {
        long long int penalty;
        cin >> penalty;
        subarraySums[i] = subarraySums[i-1] + penalty;
    }
    long long int minimum = LLONG_MAX;
    for (int ending = 2; ending <= steps; ending++) {
        for (int starting = 1; starting < ending; starting++) {
            minimum = min(
                minimum,
                subarraySums[ending] - subarraySums[starting]
            );
        }
    }
    cout << minimum;
    return 0;
}