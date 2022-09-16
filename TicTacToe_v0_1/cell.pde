class cell{
  
  float posx, posy;
  float size = width - 200;
  
  boolean empty;
  boolean hasX, hasO;
  boolean mouseIn, mouseClick;
  
  cell(float x, float y){
    posx = x;
    posy = y;
  }
  
  void display(){
    //translate(width/2, height/2);
    noFill();
    stroke(255);
    strokeWeight(4);
    rectMode(CENTER);
    rect(this.posx, this.posy, size, size);
    
    float distance = dist(this.posx, this.posy, mouseX, mouseY);
    
    if (distance <= this.posx+this.size && distance <= this.posy+this.size){
      stroke(255,0,0);
    }
    
    
  }
  
  //boolean mouseIn(){
    
  //  float distance = dist(this.posx, this.posy, mouseX, mouseY);
    
  //  return false;
  //}
  
  
  
}
