#include <bits/stdc++.h>
using namespace std;

int main()
{
    stack<char> brackets;
    size_t characters;
    cin >> characters;
    string tokens;
    cin >> tokens;
    for (char token: tokens)
    {
        if (token == '(')
            brackets.push(token);
        else
        {
            if (brackets.empty()) {
                cout << "Invalid";
                return 0;
            } if (token == ')') {
                if (brackets.top() == '(') {
                    brackets.pop();
                    continue;
                } else {
                    cout << "Invalid";
                    return 0;
                }
            }
        }
    }
    if (brackets.size() > 0)
        cout << "Invalid";
    else
        cout << "Valid";
    return 0;
}