#include <bits/stdc++.h>
using namespace std;


int main()
{
    int height, width;
    cin >> height >> width;
    // This a 2D array of spilled and unspilled tiles, with the char portion
    // determining whether the tile is spilled and bool determining whether the
    // tile has already been visited.
    // 
    // The bool portion is especially important to tell the BFS algorithm
    // whether to check out the child node
    pair<char, bool> map[height][width];
    for (int i = 0; i < height; i++) {
        string row;
        cin >> row;
        for (int j = 0; j < width; j++) {
            map[i][j] = pair<char, bool>(row[j], false);
        }
    }

    int puddles = 0;
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            if (
                map[i][j].first == '.' ||
                (map[i][j].first == 'H' && map[i][j].second)
            )
                continue;
            else {
                // BFS boi
                queue<pair<int, int>> unvisited;
                int y = i;
                int x = j;
                map[y][x].second = true;
                unvisited.emplace(pair<int, int>(x, y));
                while (!unvisited.empty()) {
                    pair<int, int> visitingNode = unvisited.front();
                    x = visitingNode.first;
                    y = visitingNode.second;
                    map[y][x].second = true;
                    unvisited.pop();
                    // Push top
                    if (y > 0) {
                        if (
                            map[y-1][x].first == 'H' &&
                            !map[y-1][x].second
                        ) {
                            unvisited.emplace(pair<int, int>(x, y-1));
                        }
                    }
                    // Push bottom
                    if (y+1 < height) {
                        if (
                            map[y+1][x].first == 'H' &&
                            !map[y+1][x].second
                        ) {
                            unvisited.emplace(pair<int, int>(x, y+1));
                        }
                    }
                    // Push left
                    if (x > 0) {
                        if (
                            map[y][x-1].first == 'H' &&
                            !map[y][x-1].second
                        ) {
                            unvisited.emplace(pair<int, int>(x-1, y));
                        }
                    }
                    // Push right
                    if (x+1 < width) {
                        if (
                            map[y][x+1].first == 'H' &&
                            !map[y][x+1].second
                        ) {
                            unvisited.emplace(pair<int, int>(x+1, y));
                        }
                    }
                }
                puddles++;
            }
        }
    }

    cout << "Oh, bother. There are " << puddles << " pools of hunny.";

    return 0;
}