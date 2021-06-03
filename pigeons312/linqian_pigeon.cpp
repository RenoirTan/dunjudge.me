#include <bits/stdc++.h>
using namespace std;
int main()
{
    int a, b, c, d;
    string s, k;
    cin >> a;
    cin >> b;
    getline(cin, k);
    for (int i = 0; i < b; i++)
    {
        getline(cin, s);
        if (s == "LAND")
            c++;
        if (s == "LEAVE")
            c--;
        if (s == "EVACUATE")
            c = 0;
        if (c > a)
            d++;
    }
    if (d == 0)
        cout << "PLAN ACCEPTED";
    else
        cout << "PLAN REJECTED";
}