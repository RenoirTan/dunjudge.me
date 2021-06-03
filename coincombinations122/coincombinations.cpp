#include <bits/stdc++.h>
using namespace std;

int totalCombinations(int denominations[], int coins, int value) { 
    int combinations[value+1];
    for (int i = 1; i <= value; i++) {
        combinations[i] = 0;
    }
    // If value is 0, the only combination possible is giving no coins at all
    combinations[0] = 1;

    // Build up the combinations array by adding the number of combinations
    // needed to create smaller values
    for (int coin; coin < coins; coin++) {
        for (
            int subvalue = denominations[coin];
            subvalue <= value;
            subvalue++
        ) {
            combinations[subvalue] += combinations[
                subvalue-denominations[coin]
            ];
        }
    }

    return combinations[value];
}

int main()
{
    int coins, value;
    cin >> coins >> value;
    int denominations[coins];
    for (size_t i = 0; i < coins; i++) {
        cin >> denominations[i];
    }
    sort(denominations, denominations+coins);
    cout << totalCombinations(denominations, coins, value) % 13371337;
    return 0;
}