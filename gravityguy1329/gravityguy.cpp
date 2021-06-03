#include <bits/stdc++.h>
using namespace std;

int main()
{
    int columns;
    cin >> columns;
    int room[columns];
    for (int i = 0; i < columns; i++) {
        cin >> room[i];
    }
    sort(room, room + columns);
    for (int i = columns-1; i >= 0; i--) {
        cout << room[i];
        if (i > 0) {
            cout << '\n';
        }
    }
}