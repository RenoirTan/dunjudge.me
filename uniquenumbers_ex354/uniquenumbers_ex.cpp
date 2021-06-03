#include <bits/stdc++.h>
using namespace std;

int main()
{
    int total;
    cin >> total;
    set<string> numbers;
    string number;
    for (int i = 0; i < total; i++) {
        cin >> number;
        numbers.insert(number);
    }
    cout << numbers.size();
    return 0;
}