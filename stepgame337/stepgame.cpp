#include <bits/stdc++.h>
using namespace std;

long long int kadane(long long int stones[], unsigned int steps) {
    if (steps == 0) return 0;
    long long int bestSum = 0;
    long long int currentSum = 0;
    for (unsigned int i = 0; i < steps; i++) {
        currentSum = max(0LL, currentSum + stones[i]);
        bestSum = max(bestSum, currentSum);
    }
    return bestSum;
}

long long int antiKadane(long long int stones[], unsigned int steps) {
    if (steps == 0) return 0;
    long long int bestSum = LLONG_MAX;
    long long int currentSum = 0;
    for (unsigned int i = 0; i < steps; i++) {
        currentSum += stones[i];
        bestSum = min(bestSum, currentSum);
        currentSum = min(0LL, currentSum);
    }
    return bestSum;
}

// Kadane's Algorithm
int main()
{
    int steps;
    cin >> steps;
    long long int stones[steps];
    for (int i = 0; i < steps; i++) {
        long long int stone;
        cin >> stone;
        stones[i] = stone;
    }
    if (steps == 0) {
        cout << 0;
        return 0;
    }
    cout << antiKadane(stones, steps);
}