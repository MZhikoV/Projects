#include <iostream>
#include <vector>
#include <string>
#include <vector>

const int MAXAPPWIDTH=60; //maximum used console width 
const int MAXHANGWIDTH=5; //maximum width of the hang
const int MAXVECLEN=MAXAPPWIDTH-2; //maximum vector length

void printSeparators (std::string input, bool separator) {
    if (separator) {
        std::cout<<input<<std::endl;
    }
    // else {
    //     bool first=true;
    //     if (first) {
    //         std::cout<<'|';
    //         first=false;
    //     }
    //     //some functionality
    //     std::cout<<input;

    //     std::cout<<'|'<<std::endl;
    // };
}

void printVector (std::vector<char> inp) {
    std::cout<<'|';
    for (auto el:inp) {
        std::cout<<el;
    }
    std::cout<<'|'<<std::endl;
}

int main() {

    //create the separator line
    char separatorLineArr[MAXAPPWIDTH];
    separatorLineArr[0]='+';
    for (int c=1; c<MAXAPPWIDTH-1; c++) {
        separatorLineArr[c]='-';
    }
    separatorLineArr[MAXAPPWIDTH-1]='+';
    std::string separatorLine=separatorLineArr;
    printSeparators(separatorLine,true); //test call of the separator

    int startStruct=(MAXVECLEN-MAXHANGWIDTH)/2; //defining the start of the input text so it can be center aligned

    //create the title
    std::vector<char> title(MAXVECLEN);
    std::string titleName="HANGMAN"; 
    int titleCenter=startStruct;
    for (int i=0; i<titleName.length(); i++) {
        title[titleCenter]=titleName[i];
        titleCenter++;
    }
    printVector(title); //test call of the title;


    //create hang structure

    std::vector<char> line1(MAXVECLEN);
    int line1Center=startStruct;
    line1[line1Center++]='_';
    line1[line1Center++]='_';

    printVector(line1);
    







    system ("pause");
    return 0;
}