
int windowSize = 500;
PVector point = new PVector(windowSize/2, windowSize/2);
float size =  -1*(width - 200);

cellBoard board = new cellBoard();
 
 
// Fix size adjustment
// If size is changed, the size of cells does not change
void setup(){
  size(500, 500);
}


/*
  To Do:
  
    
*/

void draw(){
  background(0);

  board.display();
  

}
