#include <bits/stdc++.h>
using namespace std;

int main()
{
    int width, height, mx, my;
    cin >> width >> height >> mx >> my;
    mx -= 1;
    my = height - my;
    cout << "Width: " << width << '\n';
    cout << "Height: " << height << '\n';
    cout << "Starting x: " << mx << '\n';
    cout << "Starting y: " << my << '\n';
    bool grid[height][width];
    for (int i = 0; i < height; i++) {
        string row;
        cin >> row;
        for (int j = 0; j < width; j++) {
            // basically ignores boulders
            grid[i][j] = !(row[j] == '.');
        }
    }
    int week = 0;
    queue<pair<int, int>> unvisited;
    unvisited.emplace(pair<int, int>(mx, my));
    while (!unvisited.empty()) {
        int anyAdded = 0;
        cout << "Week: " << week << '\n';
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                cout << grid[i][j];
            }
            cout << '\n';
        }
        pair<int, int> portion = unvisited.front();
        cout << "x: " << portion.first << " y: " << portion.second << '\n';
        unvisited.pop();
        if (grid[portion.second][portion.first])
            continue;
        grid[portion.second][portion.first] = true;
        // nw
        if (portion.first > 0 && portion.second > 0) {
            if (!grid[portion.second-1][portion.first-1]) {
                unvisited.emplace(
                    pair<int, int>(portion.first-1, portion.second-1)
                );
                anyAdded++;
            }
        }
        // sw
        if (portion.first > 0 && portion.second < height-1) {
            if (!grid[portion.second+1][portion.first-1]) {
                unvisited.emplace(
                    pair<int, int>(portion.first-1, portion.second+1)
                );
                anyAdded++;
            }
        }
        // ne
        if (portion.first < width-1 && portion.second > 0) {
            if (!grid[portion.second-1][portion.first+1]) {
                unvisited.emplace(
                    pair<int, int>(portion.first+1, portion.second-1)
                );
                anyAdded++;
            }
        }
        // se
        if (portion.first < width-1 && portion.second < height-1) {
            if (!grid[portion.second+1][portion.first+1]) {
                unvisited.emplace(
                    pair<int, int>(portion.first+1, portion.second+1)
                );
                anyAdded++;
            }
        }
        // w
        if (portion.first > 0) {
            if (!grid[portion.second][portion.first-1]) {
                unvisited.emplace(
                    pair<int, int>(portion.first-1, portion.second)
                );
                anyAdded++;
            }
        }
        // e
        if (portion.first < width-1) {
            if (!grid[portion.second][portion.first+1]) {
                unvisited.emplace(
                    pair<int, int>(portion.first+1, portion.second)
                );
                anyAdded++;
            }
        }
        // s
        if (portion.second < height-1) {
            if (grid[portion.second+1][portion.first]) {
                unvisited.emplace(
                    pair<int, int>(portion.first, portion.second+1)
                );
                anyAdded++;
            }
        }
        // n
        if (portion.second > 0) {
            if (!grid[portion.second-1][portion.first]) {
                unvisited.emplace(
                    pair<int, int>(portion.first, portion.second-1)
                );
                anyAdded++;
            }
        }
        if (anyAdded > 0)
            week++;
    }
    week--;
    cout << week;
    return 0;
}