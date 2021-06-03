#include <iostream>
#include <math.h>
using namespace std;

int main()
{
    size_t piles;
    cin >> piles;
    int bales[piles];
    int total = 0;
    for (size_t index = 0; index < piles; index++) {
        cin >> bales[index];
        total += bales[index];
    }
    int average = total/piles;
    int changes = 0;
    for (size_t index = 0; index < piles; index++) {
        changes += fabs(average-bales[index]);
    }
    cout << changes/2;
}