#include "duck_duck_goose.h"
#include <cstdlib>
#include <iostream>
#include <fstream>
//not sure about all the include

using namespace std;

void simulateDDGRound(GameData * gameData, ostream & output){
    size_t size = gameData->playerList.size();
    size_t m = rand()% (4* size);
    size_t gooseNo = 0;
    
    //find the goose
    for (unsigned int i = 0; i <= m; i++){
        if (i < m)
        output << gameData->playerList.get(i)<< " is a Duck."<<endl;
        else if (i == m)
        {output << gameData->playerList.get(i)<< " is a Goose!"<<endl;
        gooseNo = i;}
    }
    //random number for goose and it
    //loop until the numbers are not the same
    int gooseNum = 0;
    int itNum = 0;
    while (itNum == gooseNum){
        gooseNum = rand()%49+1;
        itNum = rand()%49+1;
    }
    //to compare the number
    if (itNum > gooseNum){
        output << gameData->itPlayerID << " took "<< gameData->playerList.get(gooseNo) <<"'s spot!"<<endl;
        //the goose become the new it
         gameData->itPlayerID = gameData->playerList.get(gooseNo);
         gameData->playerList.set(gooseNo, gameData->itPlayerID);

    }
    else if (gooseNum > itNum){
        output << gameData->itPlayerID <<" is out!"<<endl;  
        
        if (gameData->playerList.size() == 1){
            output << "Winner is "<< gameData->playerList.get(gooseNo)<< "!"<<endl;
            gameData->winnerID = gameData->playerList.get(gooseNo);
            return;
        }
        else{
            size_t newItNo = gooseNo;
            while (newItNo == gooseNo){
                newItNo = rand()% (4*size);
            }
            gameData->itPlayerID = gameData->playerList.get(newItNo);
            gameData->playerList.remove(newItNo); 

        }

    }

}



int main(int argc, char* argv[]){
    if(argc < 3){
        cerr<<"Provide file name!"<<endl;
        return 1;
    }
    ifstream ifile (argv[1]);
    if (ifile.fail()){
        return 1;
    }
    int randomSeed = 0;
    int totalNum = 0; //the number of player including "it"
    unsigned int id;
    GameData game;
    //read in all the daata
    ifile >> randomSeed >> totalNum >> game.itPlayerID;
   

    for (int i = 0; i < totalNum-1; i++){
        ifile >> id;
    //push back the ids
        if(!ifile.fail()){
        game.playerList.push_back(id);}
    }
    srand(randomSeed);
    ofstream ofile (argv[2]);
while (game.winnerID == 0){
    simulateDDGRound (&game, ofile);
    }
    //the it id need to be 0 when the game ends
    game.itPlayerID = 0;
    
    cout<<game.playerList.size()<<endl;
    cout<<game.itPlayerID<<endl;
return 0;

}
