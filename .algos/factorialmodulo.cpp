#include "factorialmodulo.hpp"

long long int Algorithms::factmod(int factorial, int modulo)
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