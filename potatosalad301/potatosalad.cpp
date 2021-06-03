#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n, d;
    cin >> n >> d;
    priority_queue<int> pq;
    int potato;
    for (int i = 0; i < n; i++)
    {
        cin >> potato;
        pq.push(potato);
    };
    int sum = 0;
    for (int i = 0; i < d; i++)
    {
        potato = pq.top();
        sum += potato;
        pq.pop();
    };
    cout << sum;
}