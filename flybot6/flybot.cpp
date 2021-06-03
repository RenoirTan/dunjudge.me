#include <bits/stdc++.h>
using namespace std;

typedef long long int i64;
typedef int i32;
typedef unsigned int u32;
typedef size_t usize;
#define Matrix vector<vector<char>>

u32 combinatorics(
    Matrix &map,
    const usize height,
    const usize width,
    const char obst,
    const char path,
    const int limit)
{
    if (height == 1 || width == 1)
        return 1 % limit;
    if (map.at(height-1).at(width-1) == obst)
        return 0;

    u32 combinations[height][width];
    if (map.at(0).at(0) == obst) {
        combinations[0][0] = 0;
    } else {
        combinations[0][0] = 1;
    }
    for (usize i = 1; i < height; i++) {
        if (map.at(i).at(0) == obst)
            combinations[i][0] = 0;
        else
            combinations[i][0] = combinations[i-1][0];
    }
    for (usize j = 1; j < width; j++) {
        if (map.at(0).at(j) == obst)
            combinations[0][j] = 0;
        else
            combinations[0][j] = combinations[0][j-1];
    }
    usize vanguard = 1;
    while (vanguard < height || vanguard < width) {
        if (vanguard < height) {
            for (usize i = vanguard; i < width; i++) {
                if (map.at(vanguard).at(i) == obst) {
                    combinations[vanguard][i] = 0;
                } else {
                    
                    combinations[vanguard][i] = (
                        combinations[vanguard-1][i] +
                        combinations[vanguard][i-1]
                    ) % limit;
                }
            }
        }
        if (vanguard < width) {
            for (usize i = vanguard; i < height; i++) {
                if (map.at(i).at(vanguard) == obst) {
                    combinations[i][vanguard] = 0;
                } else {
                    combinations[i][vanguard] = (
                        combinations[i][vanguard-1] +
                        combinations[i-1][vanguard]
                    ) % limit;
                }
            }
        }
        vanguard++;
    }
    return combinations[height-1][width-1];
}

int main()
{
    const char obst = 'X';
    const char path = '.';
    const int limit = 1000000007;
    int height, width;
    cin >> height >> width;
    auto map = Matrix(height);
    for (usize i = 0; i < height; i++) {
        for (usize j = 0; j < height; j++) {
            char thing;
            cin >> thing;
            map[i].push_back(thing);
        }
    }
    cout << combinatorics(map, height, width, obst, path, limit);
    return 0;
}