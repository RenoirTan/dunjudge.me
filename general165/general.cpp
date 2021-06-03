#include <bits/stdc++.h>
using namespace std;

int main()
{
    int generals, battles;
    cin >> generals >> battles;
    int factions[generals]; // Points to following
    int following[generals];
    int result[battles];
    for (int i = 0; i < generals; i++) {
        // Initially, each general has their own faction
        factions[i] = i;
        cin >> following[i];
    }
    for (int i = 0; i < battles; i++) {
        int a, b;
        cin >> a >> b;
        a--;
        b--;
        int afaction = factions[a];
        int bfaction = factions[b];
        if (factions[a] == factions[b]) {
            result[i] = -2; // -2 + 1 = -1
            continue;
        }
        int afollowing = following[factions[a]];
        int bfollowing = following[factions[b]];
        if (afollowing > bfollowing) {
            // A B S O R B
            following[factions[a]] += bfollowing;
            for (int i = 0; i < generals; i++) {
                if (factions[i] == bfaction) {
                    factions[i] = factions[a];
                }
            }
            result[i] = factions[a];
        } else {
            following[factions[b]] += afollowing;
            for (int i = 0; i < generals; i++) {
                if (factions[i] == afaction) {
                    factions[i] = factions[b];
                }
            }
            result[i] = factions[b];
        }
    }
    for (int i = 0; i < battles; i++) {
        cout << result[i] + 1;
        if (i < battles-1)
            cout << '\n';
    }
    return 0;
}