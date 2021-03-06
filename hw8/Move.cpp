#include <vector>
#include <string>
#include <iostream>
#include <sstream>
#include <set>
#include "Tile.h"
#include "Player.h"
#include "Bag.h"
#include "Dictionary.h"
#include "Move.h"
#include "Board.h"

using namespace std;


	 Move * Move::parseMove(std::string moveString, Player &p){
		for (size_t i = 0; i < moveString.size();i++){
			moveString[i] = toupper(moveString[i]);
		}
		if(moveString == "PASS"){
			Move *pass = new PassMove(&p);
			return pass;
		}

		else if (moveString.substr(0,8) == "EXCHANGE"){
			Move * exchange = new ExchangeMove(moveString.substr(9,moveString.size()-9), &p);
			return exchange;
		}

		else if (moveString.substr(0,5) == "PLACE"){
			bool horizontal = true;
			if (moveString[6] == '-') horizontal = true;
			else if (moveString[6] == '|') horizontal = false;
			
			istringstream ms (moveString);
			string gabbage;
			ms >> gabbage;
			ms >> gabbage;
			size_t x, y;
			string word;
			ms >> x >> y >> word;
			Move* Place = new PlaceMove(y,x,horizontal,word,&p);
			return Place;
		}
		return 0;
	}

	 Move::~Move(){
		 return;}

	Move::Move(Player * player){
		_player = player;
	}


	PassMove::PassMove(Player * player) : Move(player){
		_player = player;
	}

	void PassMove::execute(Board & board, Bag & bag, Dictionary & dictionary){
		return;
	}
	
	

	ExchangeMove::ExchangeMove(std::string tileString, Player * p):Move(p){
		_tileString = tileString;
		_player = p;
	}

	ExchangeMove:: ~ExchangeMove(){
		
	}


	void ExchangeMove::execute (Board & board, Bag & bag, Dictionary & dictionary){

		if (_player->hasTiles(_tileString,false)){
			//put the tiles back in
			std::vector<Tile*> toPutBack = _player->takeTiles(_tileString,false);
			bag.addTiles(toPutBack);
			//check whether bag is put back
			_toAdd = bag.drawTiles((size_t)_tileString.size());
			_player->addTiles(_toAdd);

		}
		else{
			throw invalid_argument ("NO SUCH TILES"); 
		}

	}

	string ExchangeMove::newLetterPicked(){
		string toAdd = "";
		for (size_t i = 0; i < _toAdd.size(); i++){
			toAdd += _toAdd[i]->getLetter();
		}
		return toAdd;
	}




	PlaceMove::PlaceMove (size_t x, size_t y, bool horizontal, std::string tileString, Player * p) : Move(p){
		_x = x;
		_y = y;
		_horizontal = horizontal;
		_player = p; 
		_tileString = tileString;
		_newScore = 0;
	}


	PlaceMove:: ~PlaceMove(){
	}

	std::vector<Tile*> const & PlaceMove::tileVector () const{
		return _tilestotake;
	}

	size_t PlaceMove::getStartx() const{
		return _x;
	}

	size_t PlaceMove::getStarty() const{
		return _y;
	}
	bool PlaceMove::getDirection() const{
		return _horizontal;
	}

	bool PlaceMove::allLegal(Board & board, Dictionary & dictionary){
	
		//check if physically feasible
		if(_player->hasTiles(_tileString,true)){
			_tilestotake = _player->getTiles(_tileString,true);
			}
		else{
			throw invalid_argument ("NO SUCH TILES"); 
			return false;}
		vector<pair<std::string, unsigned int>> words;
		words = board.getPlaceMoveResults(*this);

		if (words.size() < 1){
			throw invalid_argument ("NO WORD FORMED");
			return false;
		}

		for (size_t i = 0; i < words.size(); i++){
			_newWords.push_back(words[i].first);
			_newScore += words[i].second;
		}
		for (size_t i = 0; i < _newWords.size(); i++){
			if(!dictionary.isLegalWord(_newWords[i])){
				_newScore = 0;
				throw invalid_argument ("ILLEGAL WORD");
				return false;
			}
		}

		truesize = (size_t) _tileString.size();
		for (size_t i = 0; i < _tileString.size();i++){
			if (_tileString[i] == '?'){
				truesize--;
			}
		}
		if (truesize == _player -> getMaxTiles()){
			_newScore += 50;
			}
		//true execute and making decisions
		return true;
		
	}

	void PlaceMove::execute(Board & board, Bag & bag, Dictionary & dictionary){
		if (this->allLegal(board, dictionary)){
			_tilestotake = _player->takeTiles(_tileString,true);
			
			board.executePlaceMove(*this);
			_toAdd = bag.drawTiles(truesize);
			_player -> addTiles(_toAdd);

			_player -> addScore(_newScore);
		}
	}

	void PlaceMove::printNewWord(){
		for (size_t i = 0; i < _newWords.size();i++){
			cout << _newWords[i] << " ";
		}
	}

	int PlaceMove::getNewScore(){
		return _newScore;
	}

	Player* PlaceMove::getPlayer() const{
		return _player;
	}

	size_t PlaceMove::getTrueSize(){
		return truesize;
	}

