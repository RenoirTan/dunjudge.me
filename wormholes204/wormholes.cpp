#include <iostream>
#include <queue>
#include <utility>
#include <vector>
using namespace std;

extern "C" vector<int> dijkstra(
    vector<vector<pair<int, int>>> *matrix,
    const int nodes,
    const int start)
{
    // In unvisited, the order of the pair is distance - node
    // whereas in matrix, the order is node - distance
    priority_queue<
        pair<int, int>,
        vector<pair<int, int>>,
        greater<pair<int, int>>>
        unvisited;
    auto distances = vector<int>((size_t)nodes);
    // The -1 is useful here for stations not connected to the graph as for
    // unreachable stations, -1 is to be returned.
    fill(distances.begin(), distances.end(), -1);
    unvisited.emplace(pair<int, int>(0, start));
    distances[start] = 0;
    while (!unvisited.empty())
    {
        pair<int, int> current = unvisited.top();
        unvisited.pop();
        if (current.first != distances[current.second])
            continue;
        for (auto destination : matrix->at(current.second))
        {
            if (
                distances[destination.first] == -1 || // If unvisited ;)
                distances[destination.first] > (
                    current.first + destination.second
                ) // or less expensive route found
            )
            {
                distances[destination.first] = current.first + destination.second;
                unvisited.emplace(
                    pair<int, int>(
                        distances[destination.first], destination.first));
            }
        }
    }
    return distances;
}

int main()
{
    int planets, wormholes;
    cin >> planets;
    cin >> wormholes;
    auto matrix = vector<vector<pair<int, int>>>(planets);
    for (size_t planet = 1; planet < planets; planet++) {
        matrix.at(planet-1).push_back(pair<int, int>(planet, 1));
    }
    for (size_t wormhole = 0; wormhole < wormholes; wormhole++) {
        int origin, destination;
        cin >> origin >> destination;
        matrix.at(origin).push_back(pair<int, int>(destination, 1));
    }
    auto distances = dijkstra(&matrix, planets, 0);
    cout << distances[planets-1];
    return 0;
}