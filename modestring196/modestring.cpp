#include <bits/stdc++.h>
using namespace std;

extern "C" {
    const int maxNumber = 1001;
}

int main()
{
    int numbers, limit;
    cin >> numbers >> limit;
    int hashing[maxNumber];
    fill(hashing, hashing+maxNumber, 0);
    for (size_t i = 0; i < numbers; i++) {
        int num;
        cin >> num;
        hashing[num]++;
    }
    int maximum = 0;
    for (size_t i = 0; i < maxNumber; i++) {
        int currentMax = max(hashing[i], maximum);
        if (currentMax <= limit)
            maximum = currentMax;
    }
    cout << maximum;
    return 0;
}