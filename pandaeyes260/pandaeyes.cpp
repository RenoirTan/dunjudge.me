#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

int main()
{
    int activities;
    cin >> activities;
    vector<int> start(activities), end(activities);
    for (int activity = 0; activity < activities; activity++) {
        cin >> start[activity] >> end[activity];
    }
    // Each activity (given its own index) points to the best
    // activity after it. If there is no activity after it, -1.
    vector<int> slist(activities);
    fill(slist.begin(), slist.end(), -1);
    for (int i = 0; i < activities; i++) {
        int s = start[i], e = end[i];
        for (int j = 0; j < activities; j++) {
            if (i == j)
                continue;
            else if (slist[i] < 0) {
                if (end[i] <= start[j])
                    slist[i] = j;
            } else {
                if (end[i] <= start[j] && end[j] < end[slist[i]]) {
                    slist[i] = j;
                }
            }
        }
    }
    vector<int> totals(activities);
    fill(totals.begin(), totals.end(), 1);
    for (int i = 0; i < activities; i++) {
        int next = i;
        int last = i;
        int total = 0;
        while (next >= 0) {
            last = next;
            total += totals[next];
            next = slist[next];
            if (last < i)
                break;
        }
        totals[i] = total;
    }
    cout << *max_element(totals.begin(), totals.end());
    return 0;
}