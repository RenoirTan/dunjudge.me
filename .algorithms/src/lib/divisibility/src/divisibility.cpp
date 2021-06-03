#include <bits/stdc++.h>

#include "divisibility.hpp"

using namespace std;

bool Algorithms::divBy2(long long int n)
{
    return n % 2 == 0;
}

bool Algorithms::divBy3(long long int n)
{
    return n % 3 == 0;
}

bool Algorithms::divBy5(long long int n)
{
    return n % 5 == 0;
}

bool Algorithms::divBy7(long long int n)
{
    return n % 7 == 0;
}

bool Algorithms::divBy10(long long int n)
{
    return (Algorithms::divBy2(n) && Algorithms::divBy5(n));
}