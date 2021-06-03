#pragma once
#include <bits/stdc++.h>

namespace Algorithms {
    template <unsigned int Items>
    class Kadane {
        private:
            array<int, Items> items;
            int maxsum(size_t end);
        public:
            Kadane<Items>(int arr[]);
            int kadane(size_t start, size_t end);
    };
};