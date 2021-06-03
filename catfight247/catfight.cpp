#include <bits/stdc++.h>
using namespace std;

int longestSubarray(int powers[], const int cats, const int demand)
{
    int sum = 0;
    int count = 0;
    int maxCount = 0;
    
    for (int i = 0; i < cats; i++) {
        // If adding the next number does not cause problems, then do it
        if ((sum + powers[i]) <= demand) {
            sum += powers[i];
            count++;
        } else if (sum != 0) {
            sum -= powers[i-count] + powers[i];
        }
        maxCount = max(count, maxCount);
    }
    
    return maxCount;
}

int main()
{
    int cats, selfPower;
    cin >> cats >> selfPower;
    int powers[cats];
    for (int i = 0; i < cats; i++) {
        cin >> powers[i];
    }
    cout << longestSubarray(powers, cats, selfPower);
}