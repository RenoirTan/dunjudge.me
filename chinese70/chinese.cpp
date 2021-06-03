#include <bits/stdc++.h>
using namespace std;

int main()
{
    // -1 is the used condition.
    int shifts;
    cin >> shifts;
    int day[shifts];
    int night[shifts];
    for (int i = 0; i < shifts; i++) {
        cin >> day[i];
    }
    for (int i = 0; i < shifts; i++) {
        cin >> night[i];
    }
    int limit;
    cin >> limit;
    int overtime = 0;
    for (int i = 0; i < shifts; i++) {
        int required = limit - day[i];
        int closest = -1;
        for (int j = 0; j < shifts; j++) {
            if (night[j] == -1)
                continue;
            if (closest == -1) {
                closest = j;
                continue;
            }
            if (abs(required - night[j]) < abs(required - night[closest])) {
                closest = j;
            }
        }
        overtime += max((day[i] + night[closest] - limit), 0);
        night[closest] = -1;
    }
    cout << overtime*100;
    return 0;
}