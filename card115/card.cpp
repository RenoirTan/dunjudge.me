#include <bits/stdc++.h>
using namespace std;

void swapTop(int &surfaceCard, queue<int> &deck)
{
    int temp = deck.front();
    deck.push(surfaceCard);
    surfaceCard = temp;
    deck.pop();
}

void swapNext(queue<int> &deck)
{
    int temp = deck.front();
    deck.pop();
    deck.push(temp);
}

void printDeck(int surfaceCard, queue<int> deck, int target)
{
    vector<int> cards;
    cards.push_back(surfaceCard);
    while (!deck.empty()) {
        int card = deck.front();
        deck.pop();
        cards.push_back(card);
    }
    cout << cards[target-1] << ' ' << cards[target] << ' ' << cards[target+1];
}

int main()
{
    int total, target; // m, k
    string instructions;
    cin >> total >> target >> instructions;
    int surfaceCard = 0;
    queue<int> deck;
    for (int i = 1; i < total; i++) {
        deck.push(i);
    }
    for (
        auto instruction = instructions.begin();
        instruction != instructions.end();
        instruction++
    ) {
        if (*instruction == '.')
            break;
        else if (*instruction == 'A')
            swapTop(surfaceCard, deck);
        else if (*instruction == 'B')
            swapNext(deck);
    }
    printDeck(surfaceCard, deck, target);
    return 0;
}