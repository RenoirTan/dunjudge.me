#include "knapsack.hpp"
#include <algorithm>
#include <iostream>
#include <vector>

using namespace Algorithms::Knapsack;
using std::cin;
using std::cout;
using std::max;
using std::vector;

Item::Item()
{
    this->weight = 0;
    this->value = 0;
}

Item::Item(int w, int v)
{
    this->weight = w;
    this->value = v;
}

int compareWeights(Item *a, Item *b)
{
    return a->weight > b->weight ? 1 : a->weight == b->weight ? 0 : -1;
}

int compareValues(Item *a, Item *b)
{
    return a->value > b->value ? 1 : a->value == b->value ? 0 : -1;
}

int Algorithms::Knapsack::knapsack(int maximum, vector<Item> &items)
{
    int number = items.size();
    // Explanation of matrix
    //     Let [number+1] be horizontal and
    //         [maximum+1] be vertical.
    //     
    //     As you go along the horizontal axis, item i-1 may or may not
    //     be in the knapsack.
    //     By default, you can simply ignore the item and use the previous
    //     subknapsack (where its `i` is this iteration's `i-1`).
    //     If it can fit inside a subset knapsack of weight w (with positive
    //     value),
    //         Find the subknapsack of weight w - the weight of this item.
    //         Let it be called sk1.
    //         sk1 contains the max value obtainable with its capacity.
    //         Let this value be called sk1v.
    //         If sk1v is greater than the default, use that number.
    int matrix[number+1][maximum+1];
    // Iterate through each item
    // Here i starts at 1, and any cell where i = 0 will be set to 0.
    for (int i = 0; i <= number; i++) {
	// Iterate through each intermediate weight
        for (int w = 0; w <= maximum; w++) {
            if (i == 0 || w == 0) {
                matrix[i][w] = 0;
            } else if (items[i-1].weight <= maximum) {
                matrix[i][w] = max(
                    items[i-1].value + matrix[i-1][maximum-items[i-1].weight],
                    matrix[i-1][w]
                );
            } else {
                matrix[i][w] = matrix[i-1][w];
            }
        }
    }
    return matrix[number][maximum];
}

#ifdef ALGORITHMS_TESTS

int main()
{
    int total;
    cout << "How many items are there in total: " << std::flush;
    cin >> total;
    int capacity;
    cout << "What is the maximum capacity: " << std::flush;
    cin >> capacity;
    vector<Item> items;
    items.reserve(total);
    for (int i = 0; i < total; i++) {
        int w, v;
        cin >> w >> v;
        items.push_back(Item(w, v));
    }
    cout << "Calculating...\n";
    int value = Algorithms::Knapsack::knapsack((int)capacity, items);
    cout << "Max value: " << value << ".\n";
    return 0;
}

#endif
