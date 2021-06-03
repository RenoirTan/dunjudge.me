#include <bits/stdc++.h>
using namespace std;

#define i32 int
#define u32 unsigned int
#define usize size_t

vector<i32> minimiseTaxicab(vector<vector<i32>> &locations, u32 dimensions)
{
    vector<i32> middle(dimensions);
    usize total = locations.size();
    for (usize coordinate = 0; coordinate < dimensions; coordinate++) {
        i32 sum = 0;
        for (auto &location: locations) {
            sum += location[coordinate];
        }
        middle[coordinate] = sum/total;
    }
    return middle;
}

int main()
{
    const u32 dimensions = 2; // Cartesian plane
    usize participants;
    cin >> participants;
    vector<vector<i32>> people(participants);
    for (usize i = 0; i < participants; i++) {
        i32 x, y;
        cin >> x >> y;
        people[i].push_back(x);
        people[i].push_back(y);
    }
    auto minimums = minimiseTaxicab(people, dimensions);
    cout << minimums[0] << " " << minimums[1];
    return 0;
}