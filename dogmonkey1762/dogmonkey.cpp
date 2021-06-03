#include <bits/stdc++.h>
using namespace std;

long long int factmod(int factorial, int modulo)
{
    // If factorial exceeds modulo then the factorial will always include the
    // modulo
    if (factorial >= modulo)
        return 0;
    
    if (modulo == 0)
        throw "Algorithms::factmod: Cannot divide by 0";
    
    long long int result = 1;
    for (int i = 1; i <= factorial; i++) {
        result = (result * i) % modulo;
    }

    return result;
}

int main()
{
    const int modulo = 1000000007;
    int dogs, monkeys;
    cin >> dogs >> monkeys;
    unsigned int difference = fabs(dogs-monkeys);
    if (difference > 1) {
        cout << 0;
    } else if (difference == 1) {
        long long int combinations = (
            factmod(dogs, modulo) * factmod(monkeys, modulo)
        );
        combinations %= modulo;
        cout << combinations;
    } else {
        long long int combinations = (
            2*(long long)pow(factmod(dogs, modulo), 2)
        ) % modulo;
        cout << combinations;
    }
    return 0;
}