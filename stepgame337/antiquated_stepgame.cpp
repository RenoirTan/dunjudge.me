#include <bits/stdc++.h>
using namespace std;

int main () {
    int n; // Number of places
    cin >> n;
    int places[n]; // Array of places
    int* p = places;
    // Obtain places
    for (int i = 0; i < n; i++) {
        cin >> *(p+i);
    };
    int minSum; // Declare minimum sum variable
    int curSum; // Declare current sum variable
    for (int i = 0; i < n; i++) {
        curSum = 0;
        for (int j = i; j < n; j++) {
            curSum += *(p+j);
        };
        // Set minSum to curSum if first iter or curSum lower than minSum
        if (curSum < minSum || i == 0) {
            minSum = curSum;
        };
    };
    cout << minSum;
}