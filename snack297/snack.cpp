#include <iostream>
using namespace std;

int maxSubarray(int balls[], int snacks)
{
    if (snacks == 0)
        return 0;
    int maximum = balls[0];
    int next = balls[0];
    
    for (int i = 1; i < snacks; i++) {
        next = max(balls[i], next+balls[i]);
        maximum = max(maximum, next);
    }
    return max(maximum, 0);
}

int main()
{
    int snacks;
    cin >> snacks;
    int balls[snacks];
    for (int i = 0; i < snacks; i++) {
        char input;
        cin >> input;
        if (input >= '0' && input <= '9') {
            balls[i] = (int) input - 48;
        } else if (input == 'M') {
            balls[i] = -2;
        }
    }
    cout << maxSubarray(balls, snacks);
    return 0;
}