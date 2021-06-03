/*
	5 5 1
	0 1 1
	1 2 1
	2 3 2
	3 4 1
	2 4 6
	2 4
*/

#include <bits/stdc++.h>
using namespace std;


int dijkstra(vector<pair<int,int>> *adjlist, int start, int end)
{
	int n = adjlist->size();
	int cost[n];
	/**
	 * Cost of going to each node from starting node
	 */
	fill(cost, cost + n, 2147483647);
	cost[start] = 0; // Make sure cost for going to start node is 0
	vector<int> visited;
	vector<int> unvisited;
	int stillUnvisited = n;
	for (int i = 0; i < n; i++)
	{
		unvisited.push_back(i);
	};
	int lowestCostNode; // The lowest cost node tells us where to look next
	int currentNode = start; // Start by visiting the current node
	int nextNode; // Node currently looking from our current node
	pair<int, int> minNextNode; // Next node to visit (next node, minimum value)
	int weightage; // Cost of going to that node
	int currentCalculatedCost; // Current calculated cost
	while (unvisited.size() > 1)
	{
		minNextNode.first = currentNode;
		minNextNode.second = 2147483647;
		// For each neighbour in current node
		for (pair<int, int> node : adjlist[currentNode])
		{
			if (
				find(
					visited.begin(),
					visited.end(),
					node.first
				) != visited.end()
			)
			{
				continue;
				// If node already visited then continue to the next one
			};
			nextNode = node.first;
			weightage = node.second;
			/**
			 * If previously calculated cost exceeds current calculated cost,
			 * change it
			*/
			currentCalculatedCost = cost[currentNode] + weightage;
			if (cost[nextNode] > currentCalculatedCost)
			{
				cost[nextNode] = currentCalculatedCost;
			};
			// Choose the lowest node to visit next
			if (currentCalculatedCost < minNextNode.second)
			{
				minNextNode.first = nextNode;
				minNextNode.second = currentCalculatedCost;
			};
		};
		unvisited.erase(find(unvisited, unvisited + n, currentNode));
		currentNode = minNextNode.first;
	};
};


int main ()
{
	int n; // Number of stations
	int segments; // Segments: e
	int nQueries; // Number of queries: Q
	cin >> n >> segments >> nQueries;
	vector<pair<int,int>> adjlist[n];
	/**
	 * Implement adjacency list with each station as row
	 * (destination, cost)
	*/
	int firstStation, secondStation, weightage;
	/**
	 * Initialise here so don't have to reinitialise in loops
	*/
	for (int i = 0; i < segments; i++)
	{
		cin >> firstStation >> secondStation >> weightage;
		adjlist[firstStation].emplace_back(secondStation, weightage);
		adjlist[secondStation].emplace_back(firstStation, weightage);
	};
};