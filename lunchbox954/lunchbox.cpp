#include <bits/stdc++.h>
using namespace std;

int main()
{
    int lunchboxes, schools;
    cin >> lunchboxes >> schools;
    priority_queue<int, vector<int>, greater<int>> requests;
    int request;
    for (int i = 0; i < schools; i++)
    {
        cin >> request;
        requests.push(request);
    };
    int serviceable = 0;
    for (int i = 0; i < schools; i++)
    {
        request = requests.top();
        if (request <= lunchboxes)
        {
            serviceable++;
            lunchboxes -= request;
            requests.pop();
        }
        else
        {
            break;
        };
    };
    cout << serviceable;
};