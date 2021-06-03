#include <bits/stdc++.h>
using namespace std;

int main()
{
    size_t cats, relations;
    cin >> cats >> relations;
    bool alone[cats] = {true};
    fill(alone, alone+cats, true);
    for (size_t i = 0; i < relations; i++) {
        unsigned int a, b;
        cin >> a >> b;
        if (a == b)
            continue;
        alone[a] = false;
        alone[b] = false;
    }
    unsigned int total = 0;
    for (size_t i = 0; i < cats; i++) {
        if (alone[i])
            total += 1U;
    }
    cout << total;
    return 0;
}