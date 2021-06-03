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

int rangedPrimes(int start, int end)
{
    int total = 0;
    for (int number = start; number <= end; number++) {
        if (isPrime(number))
            total++;
    }
    return total;
}

int main()
{
    int cases;
    cin >> cases;
    int total[cases];
    for (int i = 0; i < cases; i++) {
        int start, end;
        cin >> start >> end;
        total[i] = rangedPrimes(start, end);
    }
    for (int i = 0; i < cases; i++) {
        cout << total[i];
        if (i < cases-1)
            cout << '\n';
    }
    return 0;
}