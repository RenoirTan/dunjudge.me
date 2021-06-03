#include <bits/stdc++.h>
using namespace std;

int main () {
    int numTowns, numConns, startTown, endTown;
    cin >> numTowns >> numConns >> startTown >> endTown;
    vector<pair<int, int>> adjMatrix[numTowns];
    int a, b, c;
    for (int i = 0; i < numConns; i++) {
        cin >> a >> b >> c;
        adjMatrix[a].emplace_back(b, c);
        adjMatrix[b].emplace_back(a, c);
    };
};