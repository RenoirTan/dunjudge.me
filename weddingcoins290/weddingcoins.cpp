#include <bits/stdc++.h>
using namespace std;

typedef unsigned long int u32;
typedef unsigned long long int u64;

int denominations[] = {
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

const int coins = 13;

u64 minCoins(u64 cost)
{
    if (cost == 0)
        return 0;
    u64 covered = cost;
    u64 total = 0;
    while (covered > 0) {
        for (int coin = coins-1; coin >= 0; coin--) {
            if (covered >= denominations[coin]) {
                covered -= denominations[coin];
                total++;
            }
        }
    }
    return total;
}

int main()
{
    u64 cost;
    cin >> cost;
    cout << minCoins(cost);
    return 0;
}