#include <bits/stdc++.h>
using namespace std;

int main()
{
    string input;
    getline(cin, input);
    for (auto &character: input) {
        if (character >= 'A' && character <= 'Z') {
            cout << character;
        }
    }
    for (auto &character: input) {
        if (character >= 'a' && character <= 'z') {
            cout << character;
        }
    }
    return 0;
}