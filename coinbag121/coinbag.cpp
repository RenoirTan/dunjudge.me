#include <bits/stdc++.h>
using namespace std;

int knapsack(int capacity, int coins, int weights[], int values[]);

int knapsack(int capacity, int coins, int weights[], int values[])
{

    if (coins == 0)
        return 0;

    // Most valuable coin with zero weight
    int greatestZero = 0;
    for (int coin = 0; coin < coins; coin++) {
        if (weights[coin] > 0)
            continue;
        greatestZero = max(greatestZero, values[coin]);
    }

    if (capacity == 0 && coins > 0) {
        return greatestZero;
    }
    
    int matrix[coins+1][capacity+1];

    // let capacity: i32 = 5;
    // let coins: i32 = 3;
    // let weights: [i32; 3] = [5, 2, 1];
    // let values: [i32; 3] = [2, 1, 2];

    // let matrix =>
    /** --- increasing capacity of subbag -->
     * downwards: increasing number of coins used (with maximum value)
     * [[0, 0, 0, 0, 0, 0]
     *  [0, u, u, u, u, u]
     *  [0, u, u, u, u, u]
     *  [0, u, u, u, u, u]]
     * 
     * where `u` means undeclared
     */

    for (int coin = 0; coin <= coins; coin++) {
        matrix[coin][0] = 0;
    }
    for (int subbag = 1; subbag <= capacity; subbag++) {
        matrix[0][subbag] = greatestZero;
    }

    for (int coin = 0; coin <= coins; coin++) {
        for (int subbag = 0; subbag <= capacity; subbag++) {
            if (coin == 0 || subbag == 0)
                continue;
            // Since coin == 0 is skipped here, coin-1 >= 0
            // This segment only checks subbags whose capacity are above the
            // weights of a certain coin, therefore
            //     subbag-weights[coin-1] >= 0
            // 
            // If subbag cannot take the weight of the new coin,
            // then it takes the value of the subbag without that new coin.
            //
            // However if the coin fits, try and see if adding it to the subbag
            // makes things better (int max(int a, int b);)
            else if (weights[coin - 1] <= subbag) {
                int newValue = values[coin - 1];
                if (weights[coin - 1] == 0) {
                    newValue = greatestZero;
                }
                matrix[coin][subbag] = max(
                    newValue + matrix[coin - 1][subbag - weights[coin - 1]],
                    matrix[coin - 1][subbag]
                );
            }
            else
                matrix[coin][subbag] = matrix[coin-1][subbag];
#ifdef RUNTIME_DEBUG
            cout << "-------------------" << '\n';
            for (int i = 0; i <= coins; i++) {
                for (int j = 0; j <= capacity; j++) {
                    cout << matrix[i][j] << " ";
                }
                cout << '\n';
            }
#endif
        }
    }

    return matrix[coins][capacity];
}

int main()
{
    // n => coins
    // m => capacity
    int coins, capacity;
    cin >> coins >> capacity;
    int weights[coins], values[coins];
    for (int i = 0; i < coins; i++) {
        int weight, value;
        cin >> weight >> value;
        weights[i] = weight;
        values[i] = value;
    }
    cout << knapsack(capacity, coins, weights, values);
    return 0;
}