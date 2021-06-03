#include <bits/stdc++.h>
using namespace std;

pair<int, int> initMaxes(vector<int> &meals, int picks)
{
    pair<int, int> maxes(INT32_MIN, INT32_MIN);
    for (int i = 0; i < picks; i++) {
        if (meals[i] > maxes.first && meals[i] > maxes.second) {
            maxes.second = maxes.first;
            maxes.first = meals[i];
        }
    }
}

int main()
{
    int food, picks;
    cin >> food >> picks;
    vector<int> meals(food);
    for (int i = 0; i < food; i++) {
        cin >> meals[i];
    }
    int firstmax = INT32_MIN; // Best meal in a bloc
    int secondmax = INT32_MIN; // Second best in the same bloc
    long long int satisfaction = 0;
    long long int potentialSatisfaction = 0;
    cout << satisfaction;
    return 0;
}