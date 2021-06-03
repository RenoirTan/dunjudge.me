#include <bits/stdc++.h>
using namespace std;

int main()
{
    int words;
    cin >> words;
    string word;
    string shortest;
    int minimum = INT32_MAX;
    for (int i = 0; i < words; i++) {
        cin >> word;
        if (word.size() < minimum) {
            minimum = word.size();
            shortest = word;
        }
    }
    cout << shortest;
}
