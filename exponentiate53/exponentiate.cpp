#include <bits/stdc++.h>
using namespace std;

int modexp(int base, int exponent, int modulus)
{
    if (modulus == 1)
        return 0;
    int result = 1;
    base %= modulus;
    while (exponent > 0) {
        if (exponent & 1) {
            result = (result * base) % modulus;
        }
        exponent >>= 1;
        base = (base*base) % modulus;
    }
    return result;
}

int old_modexp(int base, int exponent, int modulus)
{
    if (modulus == 1)
        return 0;
    int result = 1;
    for (int i = 0; i < exponent; i++) {
        result = (result * base) % modulus;
    }
    return result;
}

int main()
{
    int queries;
    cin >> queries;
    int bases[queries], exponents[queries], modulo[queries];
    for (int i = 0; i < queries; i++) {
        cin >> bases[i] >> exponents[i] >> modulo[i];
    }
    for (int i = 0; i < queries; i++) {
        cout << modexp(bases[i], exponents[i], modulo[i]);
        if (i < queries-1) {
            cout << '\n';
        }
    }
    return 0;
}