#include <bits/stdc++.h>
using namespace std;

int currency[] = {
    1,
    5,
    10,
    50,
    100,
    500,
    1000,
    5000,
    10000,
    50000,
    100000,
    500000,
    1000000
};

const int denominations = 13;

int minCoins(long long int cost)
{
    if (cost == 0)
        return 0;
    
    int result = INT32_MAX;
    for (size_t i = 0; i < denominations; i++) {
        if (cost >= currency[i])
        {
            int innerResult = 1+minCoins(cost-currency[i]);
            result = min(result, innerResult);
        }
    }

    return result;
}

int main()
{
    unsigned long long int cost;
    cin >> cost;
    cout << minCoins(cost);
    return 0;
}