#include <bits/stdc++.h>

#include "kadane.hpp"

template <unsigned int Items>
Algorithms::Kadane<Items>::Kadane(int arr[])
{
    for (int i = 0; i < Items; i++) {
        items[i] = arr[i];
    }
}

template <unsigned int Items>
int Algorithms::Kadane<Items>::maxsum(size_t end)
{
    if (end == 0) return items[0];
    return max(
        Algorithms::Kadane<Items>::maxsum(end - 1) + items[end],
        items[end]
    );
}

template <unsigned int Items>
int Algorithms::Kadane<Items>::kadane(size_t start, size_t end)
{
    return Algorithms::Kadane<Items>::maxsum(end) -
           Algorithms::Kadane<Items>::maxsum(start);
}