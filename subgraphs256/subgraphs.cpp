#include <bits/stdc++.h>
using namespace std;

int subgraphs(vector<vector<int>> &matrix, int nodes)
{
    int total = 0;
    if (nodes <= 1)
        return nodes;
    bool visited[nodes];
    fill(visited, visited+nodes, false);
    for (int node = 0; node < nodes; node++) {
        if (!visited[node]) {
            total++;
            queue<int> unvisited;
            unvisited.emplace(node);
            while (!unvisited.empty()) {
                int current = unvisited.front(); unvisited.pop();
                visited[current] = true;
                for (auto &adjacent: matrix[current]) {
                    if (!visited[adjacent]) {
                        unvisited.emplace(adjacent);
                    }
                }
            }
        }
    }
    return total;
}

int main()
{
    int nodes, edges;
    cin >> nodes >> edges;
    vector<vector<int>> matrix(nodes);
    for (int i = 0; i < edges; i++) {
        int a, b;
        cin >> a >> b;
        matrix.at(a).push_back(b);
        matrix.at(b).push_back(a);
    }
    cout << subgraphs(matrix, nodes);
    return 0;
}