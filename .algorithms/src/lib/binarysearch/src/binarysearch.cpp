#include <bits/stdc++.h>

#include "binarysearch.hpp"

using namespace std;

int Algorithms::binarySearch(
    int numbers[],
    int start,
    int finish,
    int target
) {
    if (finish < start) return -1;
    else if (finish == start) {
        if (numbers[start] > target) return start;
        else return finish;
    }
    int middleIndex = start + (finish - start)/2;
    if (numbers[middleIndex] == target) return middleIndex;
    else if (numbers[middleIndex] > target)
        return Algorithms::binarySearch(
            numbers,
            start,
            middleIndex - 1,
            target
        );
    else
        return Algorithms::binarySearch(
            numbers,
            middleIndex + 1,
            finish,
            target
        );
}