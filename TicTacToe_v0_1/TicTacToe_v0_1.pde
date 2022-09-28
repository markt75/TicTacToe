
int windowSize = 500;
PVector point = new PVector(windowSize/2, windowSize/2);
float size =  -1*(width - 200);

cellBoard board = new cellBoard();

int gameState = 0;
char turn = 'x';
int winner = 0;
 
// Fix size adjustment
// If size is changed, the size of cells does not change
void setup(){
  size(500, 500);
}

/*
  To do:
    Fix reset after end game
*/


void drawStart(){
  fill(255,0,0);
  textAlign(CENTER);
  textSize(100);
  text("Start", width/2, height/2);
  
  textSize(30);
  text("Press space to play", width/2, height/2 + 30);
}

void drawGame(){
  board.display();
}

void drawEnd(){
  // x wins
  if (winner == 1){
    fill(255,0,0);
    textAlign(CENTER);
    textSize(80);
    text("Player 1 Wins!", width/2, height/2);
    
    textSize(30);
    text("Press space to play again!", width/2, height/2 + 50);
  }
  
  // o wins
  if (winner == 2){
    fill(0,0,255);
    textAlign(CENTER);
    textSize(80);
    text("Player 2 Wins!", width/2, height/2);
    
    textSize(30);
    text("Press space to play again!", width/2, height/2 + 50);
  }
}

void draw(){
  background(0);

  //board.display();
  
  if (gameState == 0){
    drawStart();
  }
  
  if (keyPressed){
      if (gameState == 0 && key == ' '){
        gameState = 1;
      }
      if (gameState == 2 && key == ' '){
        board.reset();
        gameState = 1;
      }
    }
    
    if (gameState == 1){
       drawGame();
    }
    
    if (winner != 0){
      gameState = 2;
    }
    
    if (gameState == 2){
      drawEnd();
    }
  
}
