def find_cost(nodes,start,end,adjancency):
    """
    dijnker.find_cost(
        nodes = number of nodes,
        edges = number of edges,
        start = starting node,
        end = ending node,
        adjacency = adjacency dictionary !FIRST NODE IS 0!
    )
    """
    # Create adjacency list
    adjlist = adjacency
    # Add missing nodes
    for i in range(nodes):
        if i is not in adjacency.keys():
            adjlist[i] = []
    # Find and add all missing edges
    for i in range(nodes): # for each i in nodes
        for j in adjlist[i]: # for each declared edge from i
            corresponding_exist = False
            for k in adjlist[adjlist[i][j][0]]: # find corresponding edge
                if k[0] == i: # if corresponding edge found
                    corresponding_exist = True
            if corresponding_exist: # if corresponding edge is not found
                pass
            else:
                adjlist[adjlist[i][j][0]].append([i,adjlist[i][j][1]])
    checklist = []
    # Initialise checklist
    for i in range(nodes):
        if i == start:
            checklist.append(
                {
                    "visited": False,
                    "cost": 0,
                    "previous": i
                }
            )
        else:
            checklist.append(
                {
                    "visited": False,
                    "cost": None,
                    "previous": None
                }
            )
    # Begin Dijnker
    not_visited = list(range(nodes))
    while len(non_visited) == 0:
        # Find cheapest unvisited node
        cheapest_unvisited = None
        for i in not_visited:
            if (cheapest_unvisited == None or
                checklist[i]["cost"] < checklist[cheapest_unvisited]["cost"]):
                cheapest_unvisited = i
        # Find cheapest route
        for i in adjacency[cheapest_unvisited]: # For all available edges
            if checklist[i[0]]["cost"] == None: # If adjacent node is empty
                pass
            else:
                # If current cost is more expensive than new cost:
                new_cost = checklist[cheapest_unvisited]["cost"] + i[1]
                if checklist[i[0]]["cost"] > new_cost:
                    checklist[i[0]]["cost"] = new_cost # Set new cost
        not_visited.remove(cheapest_unvisited) # Remove from unvisited list
    # Output
    return checklist[end]["cost"]
