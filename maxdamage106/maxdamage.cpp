#include <bits/stdc++.h>
using namespace std;

int main () {
    double weaponMultiplier;
    int primaryStat, secondaryStat, attack;
    attack = 0;
    char weapon;
    cin >> weapon;
    switch (weapon)
    {
        case 'G': weaponMultiplier = 1.6; break;
        case 'K':
         default: weaponMultiplier = 1.7; break;
    };
    cin >> primaryStat >> secondaryStat;
    for (int i = 0; i < 4; i++)
    {
        int singleAttack;
        cin >> singleAttack;
        attack += singleAttack;
    };
    double sum;
    sum = weaponMultiplier * ((4*primaryStat)+secondaryStat) * (attack / 100.0);
    cout << fixed << showpoint;
    cout << setprecision(2);
    cout << sum;
};
