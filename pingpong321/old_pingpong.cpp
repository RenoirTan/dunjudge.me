#include <iostream>
using namespace std;

int main () {
	string winner;
	string playerone;
	string playertwo;
	char playeroneacronym;
	char playertwoacronym;
	int playeronehits = 0;
	int playertwohits = 0;
	int playeronewins = 0;
	int playertwowins = 0;
	string inputgame;
	cout << "Pingpong Scoremaster" << endl << "--------------------" << endl;
	cout << "Enter player one name: ";
	cin >> playerone;
	cout << endl;
	cout << "Enter player one acronym: ";
	cin >> playeroneacronym;
	cout << endl;
	cout << "Enter player two name: ";
	cin >> playertwo;
	cout << endl;
	cout << "Enter player two acronym: ";
	cin >> playertwoacronym;
	cout << endl;
	cout << "Enter game: ";
	cin >> inputgame;
	cout << endl;
	int i;
	cout << endl << "Initiate count!" << endl;
	for (i = 0; i < inputgame.length(); ++i) {
		if (inputgame[i] == playeroneacronym) {
			playeronehits += 1;
			cout << playerone << " scores a point! Total score for this game: " << playeronehits << endl;
			if (playeronehits >= 11 && 	playeronehits >= (playertwohits+2)) {
				cout << playerone << " wins this round. Current score: " << playeronewins << endl;
				playeronewins += 1;
				playeronehits = 0;
				playertwohits = 0;
			};
		} else if (inputgame[i] == playertwoacronym) {
			playertwohits += 1;
			cout << playertwo << " scores a point! Total score for this game: " << playertwohits << endl;
			if (playertwohits >= 11 && 	playertwohits >= (playeronehits+2)) {
				cout << playertwo << " wins this round. Current score: " << playertwowins << endl;
				playertwowins += 1;
				playertwohits = 0;
				playeronehits = 0;
			};
		};
		if (playeronewins == 3) {
			winner = playerone;
			break;
		} else if (playertwowins == 3) {
			winner = playertwo;
			break;
		};
	};
	cout << winner << " has won! Congratulations!";
	cout << endl << "Press enter to exit: ";
	cin.ignore();
	return 0;
};