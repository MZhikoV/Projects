#include <iostream>
#include <vector>
#include <string>
#include <vector>

const int MAXAPPWIDTH=60; //maximum used console width 
const int MAXHANGWIDTH=5; //maximum width of the hang
const int MAXVECLEN=MAXAPPWIDTH-2; //maximum vector length
const int MAXLETTBIG=9; //maximum letters on each row
//const int MAXLETTSMALL=6; //maximum letters on third row

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

// void printVector (std::vector<char> inp) {
//     std::cout<<'|';
//     for (auto el:inp) {
//         std::cout<<el;
//     }
//     std::cout<<'|'<<std::endl;
// }

void printVector (std::vector<char> inp) {
    for (auto el:inp) {
        std::cout<<el;
    };
    std::cout<<std::endl;

};

void printVectorCA (std::vector<char> inp) {
    std::cout<<'|';
    int vectorStartPoint=((MAXAPPWIDTH-2)-inp.size())/2;
    for (int i=0;i<vectorStartPoint;i++) {
        std::cout<<' ';
    }
    for (auto el:inp) {
        std::cout<<el;
    }
    int vectorEndPoint=vectorStartPoint+inp.size();
    for (int i=vectorEndPoint;i<MAXAPPWIDTH-1;i++) {
        std::cout<<' ';
    };
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

    // //create the title
    // std::vector<char> title(MAXVECLEN);
    // std::string titleName="HANGMAN"; 
    // int titleCenter=startStruct;
    // for (int i=0; i<titleName.length(); i++) {
    //     title[titleCenter]=titleName[i];
    //     titleCenter++;
    // }
    // printVector(title); //test call of the title;

    //create the title
    std::vector<char> title(MAXAPPWIDTH);
    std::string titleName="HANGMAN"; 
    int titleStartPoint=((MAXAPPWIDTH-2)-titleName.length())/2;
    for (int i=0; i<titleName.length(); i++) {
        title.front()='|';
        title.back()='|';
        title[titleStartPoint]=titleName[i];
        titleStartPoint++;
    }
    printVector(title); //test call of the title;

    //create hang structure

    //some preliminaty data *to be implemented in game logic
    bool head=true;
    bool handL=true;
    bool handR=true;
    bool body=true;
    bool legL=true;
    bool legR=true;


    //line 1
    std::vector<char> line1(MAXVECLEN);
    int line1Center=startStruct;
    for (int i=0;i<7;i++) {
        line1[line1Center]='-';
        line1Center++;
    }

    //line 2
    std::vector<char> line2(MAXVECLEN);
    int line2Center=startStruct;

    line2[line2Center]='|';
    line2[line2Center+6]='|';

    //line 3
    std::vector<char> line3(MAXVECLEN);
    int line3Center=startStruct;

    line3[line3Center]='|';
    if (head) {
    line3[line3Center+6]='O';
    };

    //line 4
    std::vector<char> line4(MAXVECLEN);
    int line4Center=startStruct;

    line4[line4Center]='|';
    if (handL) {
    line4[line4Center+5]='/';
    };
    if (body) {
    line4[line4Center+6]='|';
    };
    if (handR) {
    line4[line4Center+7]='\\';
    };
    

    //line 5
    std::vector<char> line5(MAXVECLEN);
    int line5Center=startStruct;

    line5[line5Center]='|';
    if (legL) {
    line5[line5Center+5]='/';
    };
    if (legR) {
    line5[line5Center+7]='\\';
    };

    //line 6
    std::vector<char> line6(MAXVECLEN);
    int line6Center=startStruct;

    line6[line6Center]='|';
    
    //line 7
    std::vector<char> line7(MAXVECLEN);
    int line7Center=startStruct-2;
    for (int i=0;i<5;i++) {
        line7[line7Center]='-';
        line7Center++;
    }


    printVector(line1);
    printVector(line2);
    printVector(line3);
    printVector(line4);
    printVector(line5);
    printVector(line6);
    printVector(line7);

    
    //create the alphabet in 1 row
    std::vector<char> lineAlpha;
    int startAlphabet=65;
    for (int i=0; i<26;i++) {
        lineAlpha.push_back(startAlphabet);
        startAlphabet++;
    };

    printVectorCA(lineAlpha);






    system ("pause");
    return 0;
}

//TODO
/*
*make the text center aligned, not starting from center
*make alphabet on two(13+13) or three (10+10+6) rows and printed space separated
*make logic to remove used letter in the alphabet
*create game logic
*arrange game structure
*optimize code - can a struct/class be used for each row?
*/