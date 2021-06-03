#include <bits/stdc++.h>
using namespace std;

int main () {
  // Gather Input
  /*
    VARIABLE DEFINITIONS:
    points: number of nodes
    roads: number of edges
    start: starting node
    end: ending node
    nodes: array of nodes with their adjacency vectors
    weights: array of nodes and lowest in between cost
  */
  int points, roads, start, end;
  cin >> points >> roads >> start >> end;
  cout << "Nodes: " << points << '\n';
  cout << "Edges: " << roads << '\n';
  cout << "Beginning node: " << start << '\n';
  cout << "Ending node: " << end << '\n';
  // Create adjacency vectors
  /*
    FORM OF ADJACENCY VECTORS:
    { node1 = {{nodeadj, cost}, {nodeadj, cost}, ...}, node2 = {...}}
  */
  // declare array (nodes) of vectors (adjacents) of array (adjacent, cost)
  vector<pair<int,int>> nodes[points];
  // declare temporary input variables
  int tempstartnode, tempendnode, tempedgecost;
  for (int i = 0; i < roads; i++) {
    cout << "Edge " << (i+1) << ", please enter: ";
    cin >> tempstartnode >> tempendnode >> tempedgecost;
    /* at tempstartnode,
    create new adjacency
    with tempendnode
    that uses tempedgecost */
    nodes[(tempstartnode-1)].push_back({tempendnode, tempedgecost});
    cout << "Start node: " << tempstartnode << '\n';
    cout << "Adjacent node: " << tempendnode << '\n';
    cout << "Edge cost: " << tempedgecost << '\n';
  };
  // Dijnker
  /*
    DIJNKER ALGORITHM:
    Find lowest cost by checking cheapest unvisited nodes and updating lowest
    cost to the list to be used later
  */
  // declare array for checking
  // architecture: {tonode = {cost, previouslyfrom, visited?},...}
  int weights[points][3];
  // other details
  int shortestunvisited = start; // default starting point would be shortest duh
  bool allvisited; // all visited?
  int parsenode; // node that is being explored from another node
  int cost; // cost of going to parsenode through currently visited node
  // initialise array
  for (int i = 0; i < points; i++) {
    // find starting node
    if (i != start) {
      // if node is not starting node, set it to undiscovered node
      weights[i][0] = 2147483647; // infinite cost (unknown)
      weights[i][1] = -1; // from nowhere
      weights[i][2] = 0; // not visited
    } else {
      // if node is starting node, give it default discovered node information
      weights[i][0] = 0; // no cost (same place, no cost!)
      weights[i][1] = start; // previously from same place aka starting point
      weights[i][2] = 0; // visited
    };
  };
  // search through all unvisited nodes
  do {
    // search for lowest unvisited
    shortestunvisited = -1;
    for (int i = 0; i < points; i++) {
      if (weights[i][2] == 0) {
        if
        (weights[i][0] < weights[shortestunvisited][0] || shortestunvisited == -1)
        {
          shortestunvisited = i;
        };
      };
    };
    // search all adjacent unvisited nodes
    for (int i = 0; i < nodes[shortestunvisited].size(); i++) {
      // if adjacent node has not been visited
      parsenode = nodes[shortestunvisited][i].first;
      cost = nodes[shortestunvisited][i].second;
      if (weights[parsenode][2] == 0) {
        // check if this route is cheapest route
        // (old cost > new cost)
        if (weights[parsenode][0] > (weights[i][0]+cost)) {
          weights[parsenode][0] = (weights[i][0]+cost); // replace with cheaper
        };
      };
    };
    // check if all nodes have been visited
    allvisited = true;
    for (int i = 0; i < points; i++) {
      if (weights[i][2] == 0) {
        allvisited = false;
      };
    };
  } while (!allvisited);
  // Output
  cout << weights[end][0];
};
