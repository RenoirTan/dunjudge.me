#include <bits/stdc++.h>
using namespace std;

int main()
{
    size_t sounds;
    cin >> sounds;
    int male = 0;
    int female = 0;
    for (size_t i = 0; i < sounds; i++) {
        string sound;
        cin >> sound;
        if (sound == "MEOW")
            female++;
        else if (sound == "MEW")
            male++;
        else
            continue;
    }
    if (male <= 0)
        cout << "OMG MEEEAHHHH!!!!";
    else
        cout << (int) female/male;
    return 0;
}