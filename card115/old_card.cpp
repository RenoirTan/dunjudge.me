#include <bits/stdc++.h>
using namespace std;

int main()
{
    int m, k;
    string sequence;
    cin >> m >> k >> sequence;
    vector<int> cards;
    for (int i = 0; i < m; i++) {
        cards.emplace_back(i);
    }
    int first, second;
    for (char instruction: sequence) {
        if (instruction == 'A') {
            int transferred = cards[0];
            cards.erase(cards.begin(), cards.begin()+1);
            cards.emplace_back(transferred);
        } else if (instruction == 'B') {
            int transferred = cards[1];
            cards.erase(cards.begin()+1, cards.begin()+2);
            cards.emplace_back(transferred);
        }
    }
    cout << cards[k-1] << ' ' << cards[k] << ' ' << cards[k+1];
    return 0;
}