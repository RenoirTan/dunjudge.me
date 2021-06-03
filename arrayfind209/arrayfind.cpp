#include <algorithm>
#include <iostream>
using namespace std;

extern "C" {
    typedef struct FoundBound {
        size_t smaller;
        size_t larger;
    } FoundBound;

    size_t binarySearch(
        int numbers[],
        const size_t start,
        const size_t end,
        const int query)
    {
        if (end < start)
            return start;
        else if (start == end)
            return start;
        
        const size_t middle = start + (end-start)/2;
        if (numbers[middle] == query)
            return middle;
        else if (numbers[middle] > query)
            return binarySearch(numbers, start, middle-1, query);
        else
            return binarySearch(numbers, middle+1, end, query);
    }

    FoundBound arrayfind(
        int *numbers,
        const size_t total,
        const int query)
    {
        if (query > numbers[total-1])
            return FoundBound {total, 0};
        else if (query < numbers[0])    
            return FoundBound {0, total};

        const size_t found = binarySearch(numbers, 0, total-1, query);
        if (query > numbers[found]) {
            return FoundBound {found+1, total-found-1};
        } else if (query < numbers[found]) {
            return FoundBound {found, total-found};
        } else {
            size_t lowerBound = found;
            size_t upperBound = found;
            while (lowerBound >= 0 && numbers[lowerBound] == query) {
                lowerBound--;
            }
            while (upperBound < total && numbers[upperBound] == query) {
                upperBound++;
            }
            return FoundBound {lowerBound+1, total-upperBound};
        }
    }
}

int main()
{
    int n;
    cin >> n;
    int numbers[n];
    for (int i = 0; i < n; i++) {
        cin >> numbers[i];
    }
    sort(numbers, numbers+n);
    /*
    cout << "Sorted: ";
    for (int i = 0; i < n; i++) {
        cout << numbers[i] << ' ';
    }
    cout << '\n';
    */
    int q;
    cin >> q;
    int queries[q];
    for (int i = 0; i < q; i++) {
        cin >> queries[i];
    }

    for (int i = 0; i < q; i++) {
        FoundBound bounds = arrayfind(numbers, n, queries[i]);
        cout << "Smaller: " << bounds.smaller << ", Greater: " << bounds.larger;
        // cout << binarySearch(numbers, 0, n-1, queries[i]);
        if (i < q-1)
            cout << '\n';
    }
}