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

int matrixInput(
    vector<vector<pair<int, int>>> *matrix,
    pair<int, int> both,
    int cost
)
{
    bool done = false;
    for (
        auto destination = matrix->at(both.first).begin();
        destination != matrix->at(both.first).end();
        destination++
    ) {
        if (destination->first == both.second) {
            destination->second = min(destination->second, cost);
            done = true;
        }
    }
    for (
        auto destination = matrix->at(both.second).begin();
        destination != matrix->at(both.second).end();
        destination++
    ) {
        if (destination->first == both.first) {
            destination->second = min(destination->second, cost);
            done = true;
        }
    }
    if (done) return 0;
    matrix->at(both.first).push_back(pair<int, int>(both.second, cost));
    matrix->at(both.second).push_back(pair<int, int>(both.first, cost));
    return 0;
}

void printMatrix(vector<vector<pair<int, int>>> *matrix)
{
    cout << "printMatrix" << '\n';
    for (size_t i = 0; i < matrix->size(); i++) {
        cout << "Starting: " << i << '\n';
        for (auto j = matrix->at(i).begin(); j != matrix->at(i).end(); j++) {
            cout << j->first << '~' << j->second << ' ';
        }
        cout << '\n';
    }
}

int main()
{
    int nodes, edges, start, end;
    cin >> nodes >> edges >> start >> end;
    vector<vector<pair<int, int>>> matrix(nodes);
    for (int i = 0; i < edges; i++) {
        int beginning, ending, cost;
        cin >> beginning >> ending >> cost;
        matrixInput(&matrix, pair<int, int>(beginning-1, ending-1), cost);
    }
    // printMatrix(&matrix);
    auto minimums = dijkstra(&matrix, nodes, start-1);
    cout << minimums.at(end-1);
    return 0;
}