#pragma once
#include <bits/stdc++.h>
using namespace std;

namespace Algorithms {

    template<unsigned int Nodes>
    array<int, Nodes> adaptedDijkstra(
        // pair<cost, oppositeNode>
        array<vector<pair<int, int>>, Nodes> *matrix,
        const int source
    );

    vector<int> getShortestDistances(
        vector<vector<pair<int, int>>> *matrix,
        const int nodes,
        const int start
    );
}
