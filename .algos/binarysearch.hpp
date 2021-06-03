#pragma once
#include <bits/stdc++.h>

namespace Algorithms {
    /**
     * @brief Finds a number (`target`) in an array of integers using binary
     * search. If the number is found, then the index is returned. If not found,
     * the index of the next number that is higher than `target` is returned.
     * If the `target` is higher than all of the numbers in the array,
     * `finish` is returned.
     * 
     * The array is assumed to already have been sorted in ascending order.
     * 
     * @param numbers 
     * @param start 
     * @param finish
     * @param target 
     * @return int 
     */
    int binarySearch(int numbers[], int start, int finish, int target);
}