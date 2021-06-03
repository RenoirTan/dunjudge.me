#include <bits/stdc++.h>
using namespace std;

template <class T>
void deBruijnGenerator(
    vector<T> *sequence,
    T cyclic[],
    const int length,
    const int order,
    int t,
    int p
)
{
    if (t > order) {
        if (order % p == 0) {
            for (int i = 1; i <= p; i++) {
                sequence->emplace_back(cyclic[i]);
            };
        };
    } else {
        
    }
}

template <class T>
vector<T> deBruijn(T cyclic[], const int length, const int order)
{
    vector<T> sequence;

}