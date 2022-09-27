
enum States {
  START,
  INGAME,
  PAUSE, //Optional
  END,
  XWIN,
  OWIN
}

enum Turn {
  XTURN,
  OTURN
}

class gameState{
  
  //ArrayList<int[]> test = new ArrayList();
  //int[] arr = {-1, -1, -1};
  
  public States currState;
  
  gameState(States currState){
    this.currState = currState;
    currState = States.START;
  }
  
  void gstart(){
    fill(255,0,0);
    textAlign(CENTER);
    text("Start", width/2, height/2);
    
  }
  
  
}
