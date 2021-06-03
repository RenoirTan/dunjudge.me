#include <bits/stdc++.h>
using namespace std;

#define u64 unsigned long long

int main()
{
    u64 food, cats;
    cin >> food >> cats;
    u64 divided = food / (cats+1);
    u64 remainder = divided + food % (cats+1);
    cout << divided << ' ' << remainder;
}