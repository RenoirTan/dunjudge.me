#include <bits/stdc++.h>
using namespace std;

int main()
{
    int size;
    cin >> size;
    int x[size], y[size];
    for (size_t i = 0; i < size; i++) {
        cin >> x[i];
    }
    for (size_t i = 0; i < size; i++) {
        cin >> y[i];
    }
    sort(x, x+size);
    sort(y, y+size);
    long long int sum = 0;
    for (size_t i = 0; i < size; i++) {
        int j = size-i-1;
        sum += x[i]*y[j];
    }
    cout << sum;
    return 0;
}