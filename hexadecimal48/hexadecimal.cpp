#include <iostream>
using namespace std;

extern "C" {
    const int hexLength = 7;
}

int main()
{
    int colours;
    cin >> colours;
    bool *validity = (bool *)malloc(colours*sizeof(bool));
    for (size_t i = 0; i < colours; i++) {
        *(validity+i) = true;
        char *hexadecimal = (char *)malloc(hexLength*sizeof(char));
        cin >> hexadecimal;
        for (size_t j = 1; j < hexLength; j++) {
            char digit = *(hexadecimal+j);
            if (
                !(digit >= '0' && digit <= '9') &&
                !(digit >= 'A' && digit <= 'F')
            ) {
                *(validity+i) = false;
                break;
            }
        }
        free(hexadecimal);
    }
    for (size_t i = 0; i < colours; i++) {
        if (*(validity+i))
            cout << "Hexadecimal";
        else
            cout << "Not Hexadecimal";
        if (i < colours-1)
            cout << '\n';
    }
    free(validity);
}