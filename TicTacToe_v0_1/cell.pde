class cell{
  
  float posx, posy;
  // for some reason size in negative mult by -1 to make positive
  float size = -1*(width - 200);
  
  public float cellCornerX, cellCornerY;
  
  boolean empty;
  boolean hasX, hasO;
  boolean mouseIn, mouseClick;
  
  cell(float x, float y){
    posx = x;
    posy = y;
    
    cellCornerX = this.posx - size/2;
    cellCornerY = this.posy - size/2;
    
  }
  
  void display(){
    noFill();
    //stroke(255); // Eliminate to make rect invisible
    //strokeWeight(4); // Eliminate to make rect invisible
    noStroke(); // Activate to make rect invisible
    rectMode(CENTER);
    
    // Detects mouse inside cell
    mouseIn = mouseInRect(mouseX, mouseY, this.cellCornerX, this.cellCornerY, 
                   this.size, this.size);
    
    // Detects if mouse has been clicked inside cell
    mouseClick = mousePressed;
    
    /*
    if (mouseIn && mouseClick && turnX){
      hasX = true;
    }
    if (mouseIn && mouseClick && turnO){
      hasO = true;
    }
    */
    
    // For testing purpose
    if (mouseIn && mouseClick && turn == Turn.XTURN){
      hasX = true;
      hasO = false;
    }
    if (mouseIn && mouseClick && turn == Turn.OTURN){
      hasO = true;
      hasX = false;
    }
    
    // Cell structure
    rect(this.posx, this.posy, size, size);
    
    stroke(255); // Activate to make X and O visible
    strokeWeight(4); // Activate to make X and O visible
    
    // Circle on cell corner for testing purpose
    //circle(this.cellCornerX, this.cellCornerY, 10);
    //circle(this.cellCornerX+size, this.cellCornerY, 10);

    if (!hasX && !hasO) empty = true;
    else empty = false;
    
    // Draws X on cell
    if (hasX) drawX(); 
    // Draws O on cell
    if (hasO) drawO();
    
    
     //Check if reset works
    //if (keyPressed){
    //  if (key == ' '){
    //    reset();
    //  }
    //}
    
  }
  
  // Detects mouse inside cell
  // Reference jeffreythompson.org
  boolean mouseInRect(float px, float py, float rx, float ry, float rw, float rh) {

    // is the point inside the rectangle's bounds?
    if (px >= rx &&        // right of the left edge AND
        px <= rx + rw &&   // left of the right edge AND
        py >= ry &&        // below the top AND
        py <= ry + rh) {   // above the bottom
          return true;
    }
    return false;
  }
  
  // Draws X inside cell
  void drawX(){
    line(this.posx - size/3, this.posy - size/3,
         this.posx + size/3, this.posy + size/3);
    line(this.posx + size/3, this.posy - size/3,
         this.posx - size/3, this.posy + size/3);
  }
  
  // Draws O inside cell
  void drawO(){
    circle(this.posx, this.posy, this.size - this.size/3);
  }
  
  // Resets cell
  void reset(){
    empty = true;
    hasX = false;
    hasO = false;
  }
  
}
