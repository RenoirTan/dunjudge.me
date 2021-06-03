#include <bits/stdc++.h>
using namespace std;

void center_text(int padding, int repetitions, char to_print, bool newline)
{
    for (int i = 0; i < padding; i++)
    {
        cout << ' ';
    };
    for (int i = 0; i < repetitions; i++)
    {
        cout << to_print;
    };
    /*
    for (int i = 0; i < padding; i++)
    {
        cout << ' ';
    };
    */
    if (newline)
    {
        cout << '\n';
    };
};

int main()
{
    int radius;
    cin >> radius;
    int height = radius*2 - 1;
    for (int i = 1; i <= height; i++)
    {
        center_text(
            abs(i - radius),
            height - 2*abs(i - radius),
            '*',
            (i < height)
        );
    };
};