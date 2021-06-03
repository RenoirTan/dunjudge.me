#include <bits/stdc++.h>
using namespace std;

int binomialCoefficient(int row, int offset)
{
    int coefficients[offset+1]; 
    memset(coefficients, 0, sizeof(coefficients)); 
  
    coefficients[0] = 1;  // nC0 is 1 
  
    for (int i = 1; i <= row; i++) 
    { 
        // Compute next row of pascal triangle using 
        // the previous row 
        for (int j = min(i, offset); j > 0; j--) 
            coefficients[j] = coefficients[j] + coefficients[j-1]; 
    } 
    return coefficients[offset]; 
}

int main()
{
    // corresponds to n+1, k+1 in C(n, k) where C is the function for the
    // binomial coefficient
    int row, offset;
    cin >> row >> offset;
    cout << binomialCoefficient(row-1, offset-1);
    return 0;
}