#include <bits/stdc++.h>
#include <binarysearch.hpp>

using namespace std;
using namespace Algorithms;

int main() {
    int n;
    cout << "Number of numbers: ";
    cin >> n;
    int arr[n];
    for (int i = 0; i < n; i++) {
        int nm;
        cout << "Number " << i << ": ";
        cin >> nm;
        arr[i] = nm;
    }
    int target;
    cout << "Locate: ";
    cin >> target;
    int location = binarySearch(arr, 0, n-1, target);
    cout << "Target is at: " << location << '\n';
    cout << "Value found: " << arr[location] << '\n';
    return 0;
}