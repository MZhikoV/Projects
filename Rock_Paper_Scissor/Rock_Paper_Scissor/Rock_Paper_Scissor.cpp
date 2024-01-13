// Rock_Paper_Scissor.cpp  Human-Computer game using input and random generated values

#include <iostream>
#include <string>

using namespace std;

void enterCommand(string& a, int& round, int &wins, int &losses) {
    round++;

    string input;
    
    cout << "========================================================================================" << endl;
    cout << "ROUND: " << round << " ||| " << "WINS: "<< wins <<" --:-- "<<"LOSSES: "<< losses <<" |||" << endl;
    cout << "========================================================================================" << endl;
    cout << "Choose one of the following options:" << endl;
    cout << "1 - Rock" << endl;
    cout << "2 - Scossor" << endl;
    cout << "3 - Paper" << endl;
    cout << "0 - Exit" << endl;

    cin >> input;
}


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
    
    int round = 0;
    int wins = 0;
    int losses = 0;
    string inp;

    /*do {
        cout << "Please enter correct input:" << endl;
    }*/

    enterCommand(inp, round, wins, losses);

    return 0;
}