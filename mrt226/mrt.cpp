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
    // The -1 is useful here for stations not connected to the graph as for
    // unreachable stations, -1 is to be returned.
    fill(distances.begin(), distances.end(), -1);
    unvisited.emplace(pair<int, int>(0, start));
    distances[start] = 0;
    while (!unvisited.empty()) {
        pair<int, int> current = unvisited.top(); unvisited.pop();
        if (current.first != distances[current.second])
            continue;
        for (auto destination: matrix->at(current.second)) {
            if (
                distances[destination.first] == -1 || // If unvisited ;)
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
    int stations, segment, queries;
    cin >> stations >> segment >> queries;
    auto matrix = vector<vector<pair<int, int>>>(stations);
    for (size_t i = 0; i < segment; i++) {
        int x, y, time;
        cin >> x >> y >> time;
        matrix.at(x).push_back(pair<int, int>(y, time));
        matrix.at(y).push_back(pair<int, int>(x, time));
    }
    pair<int, int> trips[queries];
    for (size_t i = 0; i < queries; i++) {
        int x, y;
        cin >> x >> y;
        trips[i] = pair<int, int>(x, y);
    }

    vector<int> startingStations[stations];
    for (size_t i = 0; i < stations; i++) {
        startingStations[i] = dijkstra(&matrix, stations, i);
    }

    for (size_t i = 0; i < queries; i++) {
        cout << startingStations[trips[i].first][trips[i].second];
        if (i < queries-1) {
            cout << '\n';
        }
    }
    return 0;
}