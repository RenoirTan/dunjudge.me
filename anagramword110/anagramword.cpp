#include <bits/stdc++.h>
using namespace std;

int getIndex(const char &letter)
{
    if ((letter >= 'A' && letter <= 'Z') || (letter >= 'a' && letter <= 'z')) {
        return (int) toupper(letter) - 'A';
    }
    return -1;
}

int main()
{
    string first, second;
    getline(cin, first);
    getline(cin, second);
    size_t mapping['Z'-'A'+1] = {0};
    for (auto character: first) {
        int index = getIndex(character);
        if (index == -1)
            continue;
        mapping[index]++;
    }
    for (auto character: second) {
        int index = getIndex(character);
        if (index == -1)
            continue;
        if (mapping[index] <= 0) {
            cout << "NO";
            return 0;
        } else {
            mapping[index]--;
        }
    }
    for (size_t index = 0; index <= 'Z' - 'A'; index++) {
        if (mapping[index] != 0) {
            cout << "NO";
            return 0;
        }
    }
    cout << "YES";
    return 0;
}