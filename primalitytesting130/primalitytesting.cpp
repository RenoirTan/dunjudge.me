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
    size_t total;
    cin >> total;
    int numbers[total];
    for (size_t i = 0; i < total; i++) {
        cin >> numbers[i];
    }
    for (size_t i = 0; i < total; i++) {
        if (isPrime(numbers[i])) {
            cout << numbers[i] << " is a prime number.";
        } else {
            cout << numbers[i] << " is a composite number.";
        }
        if (i < total-1)
            cout << '\n';
    }
    return 0;
}
