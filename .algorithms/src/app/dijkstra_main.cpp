#include <bits/stdc++.h>
#include <dijkstra.hpp>

using namespace std;

/**
 * @brief This function is adapted from Infocomm's Dijkstra algorithm
 * implementation. Of course, as with all math or computer science-oriented
 * papers, the variable names are barely of any help. In addition, there are
 * inconsistencies between `u` (`current`) and `v` (`adjacent`). Both variables
 * are pair<int, int>. However, what these 2 numbers represent are not the same
 * or at least not in the same positions for some unknown reason. The following
 * table shows what the numbers in `u` and `v` mean:
 * 
 * Variable Name |     First     |    Second
 * --------------|---------------|--------------
 *       u       |     Cost      | Adjacent Node
 *       v       | Adjacent Node |     Cost
 * 
 * For my adaptation, it has been standardised that `First` will be the `Cost`,
 * while `Second` will be the `Adjacent Node` being pointed at. This is in line
 * with the line that constructs the `unvisited` `priority_queue`, which uses
 * the first element to compare 2 pairs.
 * 
 * Furthermore, I have annotated my function as detailedly as possible (unlike
 * what they did in Infocomm) so that it is easier to understand what is going
 * on.
 * 
 * @tparam Nodes: unsigned int
 * @param matrix: array<vector<pair<int, int>>, Nodes>
 * @param source: const int
 * @return array<int, Nodes> 
 */
template <unsigned int Nodes>
array<int, Nodes> Algorithms::adaptedDijkstra(
    // pair<cost, oppositeNode>
    array<vector<pair<int, int>>, Nodes> *matrix,
    const int source)
{
    // An array of all unvisited nodes,
    // sorted with lowest cost node at the top
    priority_queue<
        pair<int, int>, // Cost to adjacent node representation
        // Internal container
        // Apparently whoever did the C++ specifications decided that it would
        // be a great idea to put this as the second template parameter instead
        // of the third
        vector<pair<int, int>>,
        greater<pair<int, int>> // Sort lowest to highest
        >
        unvisited;

    // All distances. There is no need to store whether each node has been
    // visited or not because all unvisited nodes are in `unvisited`
    array<int, Nodes> distances;
    for (int i = 0; i < Nodes; i++)
    {
        distances[i] = -1;
    };                     // -1 is a placeholder
    distances[source] = 0; // Source to source requires 0 cost

    // Initialise `unvisited` with `distances[source] = 0;`
    unvisited.emplace(pair<int, int>(0, source));

    // While all the nodes have not been visited
    while (!unvisited.empty())
    {
        // Get current cheapest unvisited nodes
        auto current = unvisited.top();
        unvisited.pop();

        // If the cost of the node we are currently visiting is not the same as
        // the previously calculated cost to the current node, skip to the next
        // iteration
        //
        // I actually don't understand why this line is here I'm sorry
        if (current.first != distances[current.second])
            continue;

        // Iterate through all nodes adjacent to the current node
        for (auto adjacent : (*matrix)[current.second])
        {
            // If the cost for the adjacent node has not been calculated, or
            // the previously calculated cost for the adjacent node is greater
            // than the cost from the source to the current node then to the
            // adjacent node:
            //
            // Change the cost to go to the adjacent node
            if (
                distances[adjacent.second] == -1 ||
                distances[adjacent.second] > (current.first + adjacent.first))
            {
                distances[adjacent.second] = (current.first + adjacent.first);
                // Register adjacent node to `unvisited`
                // If this becomes the lowest cost node,
                // this node will become the next visited node in the next while
                // loop iteration
                unvisited.emplace(
                    pair<int, int>(
                        distances[adjacent.second],
                        adjacent.second));
            };
        };
    };
    // Result
    return distances;
};

using namespace Algorithms;

vector<vector<pair<int, int>>> generateMatrix() {
    vector<vector<pair<int, int>>> matrix;
    vector<pair<int, int>> start_0;
    vector<pair<int, int>> start_1;
    vector<pair<int, int>> start_2;
    vector<pair<int, int>> start_3;
    vector<pair<int, int>> start_4;

    start_0.push_back(pair<int, int>(1, 3));
    start_1.push_back(pair<int, int>(0, 3));
    start_0.push_back(pair<int, int>(2, 1));
    start_2.push_back(pair<int, int>(0, 1));
    start_1.push_back(pair<int, int>(2, 7));
    start_2.push_back(pair<int, int>(1, 7));
    start_1.push_back(pair<int, int>(3, 5));
    start_3.push_back(pair<int, int>(1, 5));
    start_1.push_back(pair<int, int>(4, 1));
    start_4.push_back(pair<int, int>(1, 1));
    start_2.push_back(pair<int, int>(3, 2));
    start_3.push_back(pair<int, int>(2, 2));
    start_3.push_back(pair<int, int>(4, 7));
    start_4.push_back(pair<int, int>(3, 7));


    matrix.push_back(start_0);
    matrix.push_back(start_1);
    matrix.push_back(start_2);
    matrix.push_back(start_3);
    matrix.push_back(start_4);
    return matrix;
};

array<vector<pair<int, int>>, 5> createMatrix() {
    array<vector<pair<int, int>>, 5> matrix;

    matrix[0].push_back(pair<int, int>(3, 1));
    matrix[1].push_back(pair<int, int>(3, 0));
    matrix[0].push_back(pair<int, int>(1, 2));
    matrix[2].push_back(pair<int, int>(1, 0));
    matrix[1].push_back(pair<int, int>(7, 2));
    matrix[2].push_back(pair<int, int>(7, 1));
    matrix[1].push_back(pair<int, int>(5, 3));
    matrix[3].push_back(pair<int, int>(5, 1));
    matrix[1].push_back(pair<int, int>(1, 4));
    matrix[4].push_back(pair<int, int>(1, 1));
    matrix[2].push_back(pair<int, int>(2, 3));
    matrix[3].push_back(pair<int, int>(2, 2));
    matrix[3].push_back(pair<int, int>(7, 4));
    matrix[4].push_back(pair<int, int>(7, 3));

    return matrix;
}

int main() {
    cout << "Dijkstra Test Executable" << '\n';
    auto matrix = createMatrix();
    cout << "Matrix generated." << '\n';
    auto distancesFrom0 = adaptedDijkstra(&matrix, 0);
    cout << "Shortest distances obtained." << '\n';
    for (auto node: distancesFrom0) {
        cout << "Cost: " << node << '\n';
    };
    return 0;
}
