#include <bits/stdc++.h>
using namespace std;

// Optimised
bool isPrime(unsigned int number)
{
    if (number == 0 || number == 1)
        return false;
    if (number == 2 || number == 3)
        return true;
    if (number % 2 == 0 || number % 3 == 0)
        return false;
    // Sieve
    // 
    // Since all prime numbers 2-digits and above end in 1, 3, 7 or 9,
    // we can just increment by 6 everytime.
    // 
    // Numbers ending in 5 may also be included but it does not matter since
    // this is an or gate.
    for (unsigned int i = 5; i*i <= number; i += 6)
        if (number % i == 0 || number % (i + 2) == 0)
            return false;
    return true;
}

int main()
{
    unsigned int n;
    cin >> n;
    bool prime = isPrime(n);
    if (prime) cout << "Prime";
    else cout << "Not Prime";
}
