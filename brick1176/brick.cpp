#include <bits/stdc++.h>
using namespace std;


int main () {
    int n; // Number of bricks
    cin >> n;
    int a[n]; // Bricks
    int *b = a; // Pointer to each brick
    for (int i = 0; i < n; i++) {
        cin >> *(b + i);
    };
    deque<int> s; // Stacks
    for (int i = 0; i < n; i++)
    {
        // Initialise deque with first stack
        if (s.empty())
        {
            s.push_front(*(b + i));
            continue;
        };
        int top = *(s.begin());
        int current = *(b + i);
        while (top <= current) {
            if (s.size() == 0) {
                break;
            };
            if (top > current) {
                break;
            }
            s.pop_front();
            top = *(s.begin());
        };
        s.push_front(*(b + i));
    };
    for (auto i = s.begin(); i != s.end(); i++)
    {
        cout << *i;
        if (i < s.end() - 1)
        {
            cout << '\n';
        }
    }
    return 0;
};