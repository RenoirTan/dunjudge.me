#pragma once
#include <vector>

#ifndef ALGORITHMS_KNAPSACK_HPP
#   define ALGORITHMS_KNAPSACK_HPP

namespace Algorithms::Knapsack {
    struct Item {
        int weight;
        int value;
        Item();
        Item(int, int);
    };

    int compareWeights(Item *a, Item *b);
    int compareValues(Item *a, Item *b);

    int knapsack(int maximum, std::vector<Item> &items);
}

#endif