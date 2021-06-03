#include <iostream>
using namespace std;

bool palindrome(string *word) {
    const size_t length = word->size();
    const size_t limit = length/2;
    for (size_t i = 0; i < limit; i++) {
        if (toupper(word->at(i)) != toupper(word->at(length-i-1)))
            return false;
    }
    return true;
}

int main()
{
    string word;
    cin >> word;
    if (palindrome(&word))
        cout << "Yes";
    else
        cout << "No";
    return 0;
}