
int windowSize = 500;
PVector point = new PVector(windowSize/2, windowSize/2);
float size =  -1*(width - 200);

cellBoard board = new cellBoard();

States state = States.START;
Turn turn = Turn.XTURN;

//gameState gs = new gameState(state);
 
// Fix size adjustment
// If size is changed, the size of cells does not change
void setup(){
  size(500, 500);
}


/*
  To Do:
    Add game states
    Winning states
    Player turn
    
    Make game state int:
        gamestate = 0 for start
        gamestate = 1 for x turn ...
*/

void draw(){
  background(0);

  //board.display();
  
  if (state == States.START){
  fill(255,0,0);
  textAlign(CENTER);
  textSize(100);
  text("Start", width/2, height/2);
  
  textSize(30);
  text("Press space to play", width/2, height/2 + 30);
  }
  
  if (keyPressed){
      if (key == ' '){
        state = States.INGAME;
      }
    }
    
    if (state == States.INGAME){
      board.display(); 
    }
  
}
