#include <bits/stdc++.h>
using namespace std;

int main () {
    long long int s, e, a, b;
    cin >> s >> e >> a >> b;
    for (long long int i = s; i <= e; i++) {
        string output = "";
        if (i % a == 0) {output += "Fizz";};
        if (i % b == 0) {output += "Buzz";};
        if (output != "") {cout << output << '\n';}
        else {cout << i << '\n';};
    };
};