#include <queue>
#include <vector>
#include <iostream>
#include <fstream>

using namespace std;

struct Node{
    char letter;
    int x;
    int y;
    Node (char let ,int _x, int _y){
        letter = let;
        x = _x;
        y = _y;
    }
};

int main(int argc, char* argv[]){
    if (argc < 2){
        cout << "Missing file name!!!" << endl;
        return 1;
    }
    int blocks, rows, columns;
    ifstream ifile (argv[1]);

    if (ifile.fail()){
        cout << "Invalid file name!" << endl;
        return 1;
    }
    ifile >> blocks >> rows >> columns;

    vector<vector<Node*>> graph;
    vector<vector<bool>> visited;

    //store the whole graph
    for (int i = 0; i < rows; i++){
        vector<Node*> graphtmp;
        vector <bool> visittmp;
        graph.push_back(graphtmp);
        visited.push_back(visittmp);
        for (int j = 0; j < columns; j++){
            char tmp;
            ifile >> tmp;
            graph[i].push_back(new Node (tmp, i, j));
            visited[i].push_back(false);
        }
    }


    Node* start = graph[0][0];
    int largestCount = 0;
    bool TBC = true;

    while (TBC){
        TBC = false;
        queue<Node*> q;
        q.push(start);
        visited[start->x][start->y] = true;
        int currentCount = 1;
        int contX = 0;
        int contY = 0;

        //if the queue is not empty
        while (!q.empty()){
            Node*head = q.front();
		    q.pop();
            //search the up, down, left and right of the node
            //and test if it is out of border
            if(head->x+1 < rows){
		        if (visited[head->x+1][head->y] == false && graph[head->x+1][head->y]->letter == head->letter){
			        q.push(graph[head->x+1][head->y]);
			        visited[head->x+1][head->y] = true;
                    currentCount++;
		        }
            }

            if (head->x-1 >= 0){
                if (visited[head->x-1][head->y] == false && graph[head->x-1][head->y]->letter == head->letter){
			        q.push(graph[head->x-1][head->y]);
			        visited[head->x-1][head->y] = true;
                    currentCount++;
		        }
            }

            if (head->y+1 < columns){
                if (visited[head->x][head->y+1] == false && graph[head->x][head->y+1]->letter == head->letter){
			        q.push(graph[head->x][head->y+1]);
			        visited[head->x][head->y+1] = true;
                    currentCount++;
		        }
            }

            if (head->y-1 >= 0){
                if (visited[head->x][head->y-1] == false && graph[head->x][head->y-1]->letter == head->letter){
			        q.push(graph[head->x][head->y-1]);
			        visited[head->x][head->y-1] = true;
                    currentCount++;
		        }
            }

  
        }

        if (currentCount > largestCount) 
            largestCount = currentCount;

        //search to find the next starting node
        //the search starts from the last start
        bool toBreak = false;
        for (int i = contX; i < rows; i++){
            if (i == contX){
                for (int j = contY; j < columns; j++){
                        if (visited[i][j] == false){
                        start = graph[i][j];
                        contX = i;
                        contY = j;
                        TBC = true;
                        currentCount = 0;
                        toBreak = true;
                        break;
                        }
                if (toBreak) break;
                }
            }
            if (toBreak) break; 

            else{
                for (int j = 0; j < columns; j++){
                    if (visited[i][j] == false){
                        start = graph[i][j];
                        contX = i;
                        contY = j;
                        TBC = true;
                        currentCount = 0;
                        toBreak = true;
                        break;
                    }
                if (toBreak) break;
            }
                if (toBreak) break;
            }
        }
    }

    cout << largestCount<<endl;

    for (int i = 0; i < rows; i++){
        for (int j = 0; j < columns; j++){
            delete graph[i][j];
        }
    }
    return 0;
}