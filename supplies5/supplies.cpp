#include <bits/stdc++.h>
using namespace std;

vector<int> dijkstra(
    vector<vector<pair<int, int>>> *matrix,
    const int nodes,
    const int start
)
{
    // In unvisited, the order of the pair is distance - node
    // whereas in matrix, the order is node - distance
    priority_queue<
        pair<int, int>,
        vector<pair<int, int>>,
        greater<pair<int, int>>
    > unvisited;
    auto distances = vector<int>((size_t) nodes);
    fill(distances.begin(), distances.end(), -1);
    unvisited.emplace(pair<int, int>(0, start));
    distances[start] = 0;
    while (!unvisited.empty()) {
        pair<int, int> current = unvisited.top(); unvisited.pop();
        if (current.first != distances[current.second])
            continue;
        for (auto destination: matrix->at(current.second)) {
            if (
                distances[destination.first] == -1 ||
                distances[destination.first] > (
                    current.first + destination.second
                ) // or less expensive route found
            ) {
                distances[
                    destination.first
                ] = current.first + destination.second;
                unvisited.emplace(
                    pair<int, int>(
                        distances[destination.first], destination.first
                    )
                );
            }
        }
    }
    return distances;
}

int main()
{
    int stations, routes, origin, destination;
    cin >> stations >> routes >> origin >> destination;
    auto map = vector<vector<pair<int, int>>>(stations);
    for (int i = 0; i < routes; i++) {
        int x, y, cost;
        cin >> x >> y >> cost;
        map.at(x).push_back(pair<int, int>(y, cost));
    }
    auto outsideLog = dijkstra(&map, stations, origin);
    auto insideLog = dijkstra(&map, stations, destination);
    int outside = outsideLog[destination];
    int inside = insideLog[origin];
    if (inside == -1 || outside == -1) {
        cout << -1;
    } else {
        cout << inside + outside;
    }
    return 0;
}