// Rock_Paper_Scissor.cpp  Human-Computer game using input and random generated values

#include <iostream>
#include <string>

using namespace std;

void printDuel(int winner, int looser, bool isEqual);
int compareDraw(int hum, int pc);
void enterCommand(string& a, int& round, int& wins, int& losses, bool& isDone);


int main()
{
    char exp;

    do {
        cout << "Welcome to the game. Press 'S' to start game or 'E' to exit:" << endl;
        cin >> exp; //read the expected command;
        exp = tolower(exp);
    }
    while (exp!='s' && exp != 'e');

    if (exp == 'e') {
        exit(0);
    }

    cout << "Rules: The game will be played up to 3 wins and maximum of 5 rounds." << endl;
    cout << "You can enter either the name of the object, only the first letter or the corresponding digit." << endl;
    cout << "The input is not case-sensitive." << endl;
    
    int gameNum = 1;
    string inp;

    /*do {
        cout << "Please enter correct input:" << endl;
    }*/
    while (inp != "end") {
        int wins = 0, losses = 0, round = 1;
        cout << endl << endl << endl;
        cout << "--- GAME " << gameNum << " ---" << endl << endl << endl;
        bool isDone = false;
        while (round <= 5 && !isDone) {
            enterCommand(inp, round, wins, losses, isDone);
        }
        gameNum++;
    }


    return 0;
}

void enterCommand(string& a, int& round, int& wins, int& losses, bool& isDone) {

    string input;

    cout << "========================================================================================" << endl;
    cout << "ROUND: " << round << " ||| " << "WINS: " << wins << " --:-- " << "LOSSES: " << losses << " |||" << endl;
    cout << "========================================================================================" << endl;
    cout << "Choose one of the following options:" << endl;
    cout << "1 - Rock" << endl;
    cout << "2 - Scissor" << endl;
    cout << "3 - Paper" << endl;
    cout << "0 - Exit" << endl;

    char inp;
    do {
        cin >> input;

        inp = input[0];
        if (!isdigit(inp)) {
            inp = tolower(inp);
        }

    } while (inp != 'r' && inp != 's' && inp != 'p' && inp != '0' && inp != '1' && inp != '2' && inp != '3' && inp!='e');

   

    int human = 0;

    switch (inp) {
    case '1':
    case 'r':
        human = 1;
        break;
    case '2':
    case 's':
        human = 2;
        break;
    case '3':
    case 'p':
        human = 3;
        break;
    case '0':
    case 'e':
        a = "end";
        exit(0);
    }

    int comp = 1 + (rand() % 2);

    cout << comp;
    switch (comp) {
    case 1: cout << " - Rock" << endl; break;
    case 2: cout << " - Scissor" << endl; break;
    case 3: cout << " - Paper" << endl; break;
    }

    if (a != "end") {
        int res = compareDraw(human, comp);

        switch (res) {
        case 0:
            cout << "The round is drawn! No points added!" << endl;
            break;
        case 1:
            wins++;
            cout << "Player wins round " << round << '!' << endl;
            round++;
            break;
        case 2: losses++;
            cout << "Computer wins round " << round << '!' << endl;
            round++;
            break;
        }

        if (wins == 3) {
            cout << endl << endl << "-- Game over! Player wins " << wins << " : " << losses << " ! --" << endl << endl;
            isDone = true;
        }
        else if (losses == 3) {
            cout << endl << endl << "-- Game over! Computer wins " << wins << " : " << losses << " ! --" << endl << endl;
            isDone = true;
        }
    }

}


int compareDraw(int hum, int pc) {
    if (hum == pc) {
        printDuel(hum, pc, true);
        return 0;
    }
    else if (hum == 1) {
        if (pc == 2) {
            printDuel(pc, hum, false);
            return 2;
        }
        else {
            printDuel(hum, pc, false);
            return 1;
        }
    }
    else if (hum == 2) {
        if (pc == 1) {
            printDuel(hum, pc, false);
            return 1;
        }
        else {
            printDuel(pc, hum, false);
            return 2;
        }
    }
    else if (hum == 3) {
        if (pc == 1) {
            printDuel(hum, pc, false);
            return 1;
        }
        else {
            printDuel(pc, hum, false);
            return 2;
        }
    }
}

void printDuel(int winner, int looser, bool isEqual) {
    string winT;
    string looserT;

    switch (winner) {
    case 1: winT = "Rock"; break;
    case 2: winT = "Scissor"; break;
    case 3: winT = "Paper"; break;
    }

    switch (looser) {
    case 1: looserT = "Rock"; break;
    case 2: looserT = "Scissor"; break;
    case 3: looserT = "Paper"; break;
    }
    if (!isEqual) {
        cout << winT << " beats " << looserT << " !" << endl;
    }
    else {
        cout << winT << " equals " << looserT << " !" << endl;

    }
}
