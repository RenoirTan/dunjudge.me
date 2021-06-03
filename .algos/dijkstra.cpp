#include <bits/stdc++.h>
using namespace std;

#include "dijkstra.hpp"

/**
 * This function gets the shortest distances from a starting node to all other
 * nodes in a graph.
 * 
 * @param vector<vector<pair<int, int>>> *matrix - Matrix vector. With the
 * first value in the vector being the destination node and the second value
 * being the cost.
 * @param const int nodes - Number of available nodes.
 * @param const int start - Starting node.
*/
vector<int> Algorithms::getShortestDistances(
    vector<vector<pair<int, int>>> *matrix,
    const int nodes,
    const int start
) {
    // Array of visited pairs
    pair<bool, int> visited[nodes];
    // Initialise array
    fill(visited, visited + nodes, pair<bool, int>(false, INT_MAX));
    visited[start].first = true;
    visited[start].second = 0;

    // Iterate through all unvisited nodes
    int current = start;
    int lowestAdjacentNode = 0;
    // -1 is the fail case for `lowestAdjacentNode`
    while (lowestAdjacentNode != -1) {
        cout << "Current node being explored: " << current << '\n';
        // Stores the value of which adjacent node to visit next
        lowestAdjacentNode = -1;
        // Visit all adjacent nodes
        for (
            auto adjacent = matrix->at(current).begin();
            adjacent != matrix->at(current).end();
            adjacent++
        ) {
            // Split the pair into variables with useful names
            int &adjacentNode = adjacent->first;
            int &cost = adjacent->second;
            // If already visited, check out the next adjacent node
            if (visited[adjacentNode].first) continue;
            // If the currently stored value is more than the new calculated
            // cost where:
            //     the current node from start + the current node to adjacent
            //     node
            if (visited[adjacentNode].second > (
                    visited[current].second + cost
                )
            ) {
                visited[adjacentNode].second = visited[current].second + cost;
            };
            // If current adjacent node's cost is smaller than the cost of the
            // existing node's cost, replace lowestAdjacentNode with current
            // adjacent node.
            
            if (
                (
                    visited[adjacentNode].second < 
                    visited[lowestAdjacentNode].second
                ) ||
                (lowestAdjacentNode == -1)
            ) {
                lowestAdjacentNode = adjacentNode;
            };
        };
        current = lowestAdjacentNode;
    };

    // Write data to vector
    vector<int> completed;
    for (int i = 0; i < nodes; i++) {
        completed.push_back(visited[i].second);
    }
    return completed;
};