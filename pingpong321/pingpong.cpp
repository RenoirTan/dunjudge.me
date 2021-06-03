#include "pingpong.h"
using namespace std;

string winner(string log)
{
    int potatoHits = 0;
    int rarHits = 0;
    int potatoWins = 0;
    int rarWins = 0;
    for (int i = 0; i < log.size(); i++) {
        char hit = log[i];
        if (hit == 'P') {
            potatoHits++;
        } else if (hit == 'R') {
            rarHits++;
        }
        if (potatoHits >= 11) {
            if (potatoHits - rarHits >= 2) {
                potatoHits = 0;
                rarHits = 0;
                potatoWins++;
            }
        } else if (rarHits >= 11) {
            if (rarHits - potatoHits >= 2) {
                potatoHits = 0;
                rarHits = 0;
                rarWins++;
            }
        }
        if (potatoWins == 3)
            return "Potato";
        else if (rarWins == 3)
            return "Rar";
    }
    
}
