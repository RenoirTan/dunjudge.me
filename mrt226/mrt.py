nodes, edges, n_queries = 5, 5, 1

adjlist = {i: {} for i in range(nodes)}
adjlist[0][1] = 1
adjlist[1][0] = 1
adjlist[1][2] = 1
adjlist[2][1] = 1
adjlist[2][3] = 2
adjlist[3][2] = 2
adjlist[3][4] = 1
adjlist[4][3] = 1
adjlist[2][4] = 6
adjlist[4][2] = 6

queries = [
    (2, 4)
]

print(adjlist)
print(queries)