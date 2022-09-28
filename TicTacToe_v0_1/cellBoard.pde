class cellBoard{
  
  // Array to store cells
  ArrayList<cell> cells;
  
  // Cells
  cell top1, top2, top3;
  cell midd1, center, midd3;
  cell bot1, bot2, bot3;
  
  // Stores where x's and o's are
  char[][] cellBoard;
  
  cellBoard(){
    cells = new ArrayList();
    cellBoard = new char[3][3];

    //Top cells
    top1 = new cell(point.x - size, point.y - size, "11");
    top2 = new cell(point.x, point.y - size, "12");
    top3 = new cell(point.x + size, point.y - size, "13");
    cells.add(top1);
    cells.add(top2);
    cells.add(top3);
    
    //Middle cells
    midd1 = new cell(point.x - size, point.y, "21");
    center = new cell(point.x, point.y, "22"); //Center cell
    midd3 = new cell(point.x + size, point.y, "23");
    cells.add(midd1);
    cells.add(center);
    cells.add(midd3);
    
    //Bottom cells
    bot1 = new cell(point.x - size, point.y + size, "31");
    bot2 = new cell(point.x, point.y + size, "32");
    bot3 = new cell(point.x + size, point.y + size, "33");
    cells.add(bot1);
    cells.add(bot2);
    cells.add(bot3);
  }
  
  void display(){
    
    for (int i = 0; i < cells.size(); i++){
      cells.get(i).display(); 
      
      if (cells.get(i).hasX()){
        int row = cells.get(i).getId().charAt(0) - '0';
        int column = cells.get(i).getId().charAt(1) - '0';
        
        cellBoard[row-1][column-1] = 'x';
      }
      else if (cells.get(i).hasO()){
        int row = cells.get(i).getId().charAt(0) - '0';
        int column = cells.get(i).getId().charAt(1) - '0';
        
        cellBoard[row-1][column-1] = 'o';
      }
    }

    //circle(this.cellCornerX, this.cellCornerY, 10);
    //circle(this.cellCornerX+size, this.cellCornerY, 10);
    
    stroke(255);
    line(midd1.cellCornerX, midd1.cellCornerY,
         midd3.cellCornerX + size, midd3.cellCornerY);
    line(bot1.cellCornerX, bot1.cellCornerY,
         bot3.cellCornerX + size, bot3.cellCornerY);
    line(top1.cellCornerX + size, top1.cellCornerY,
         bot1.cellCornerX + size, bot1.cellCornerY + size);
    line(top2.cellCornerX + size, top2.cellCornerY,
         bot2.cellCornerX + size, bot2.cellCornerY + size);
         
    // \u0000 = 0 for char array
    // Diagonal winning lines 
    if (cellBoard[0][0] != '\u0000'){
      if (cellBoard[0][0] == cellBoard[1][1] && cellBoard[1][1] == cellBoard[2][2]){
        line(top1.cellCornerX, top1.cellCornerY,
           bot3.cellCornerX + size, bot3.cellCornerY + size);
        
        if (cellBoard[0][0] == 'x') winner = 1;
        else winner = 2;
      }
    }
    
    if (cellBoard[0][2] != '\u0000'){
      if (cellBoard[0][2] == cellBoard[1][1] && cellBoard[1][1] == cellBoard[2][0]){
        line(top3.cellCornerX + size, top3.cellCornerY,
         bot1.cellCornerX, bot1.cellCornerY + size);
         
        if (cellBoard[0][2] == 'x') winner = 1;
        else winner = 2;
      }
    }
    
         
    // Vertical winning lines
    if (cellBoard[0][0] != '\u0000'){
      if (cellBoard[0][0] == cellBoard[1][0] && cellBoard[1][0] == cellBoard[2][0]){
         line(top1.cellCornerX + size/2, top1.cellCornerY,
         bot1.cellCornerX + size/2, bot1.cellCornerY + size);
         
        if (cellBoard[0][0] == 'x') winner = 1;
        else winner = 2;
      }
    }
    
    
    if (cellBoard[0][1] != '\u0000'){
      if (cellBoard[0][1] == cellBoard[1][1] && cellBoard[1][1] == cellBoard[2][1]){
         line(top2.cellCornerX + size/2, top2.cellCornerY,
         bot2.cellCornerX + size/2, bot2.cellCornerY + size);
         
        if (cellBoard[0][1] == 'x') winner = 1;
        else winner = 2;
      }
    }
   
    
    if (cellBoard[0][2] != '\u0000'){
      if (cellBoard[0][2] == cellBoard[1][2] && cellBoard[1][2] == cellBoard[2][2]){
        line(top3.cellCornerX + size/2, top3.cellCornerY,
         bot3.cellCornerX + size/2, bot3.cellCornerY + size);
         
        if (cellBoard[0][2] == 'x') winner = 1;
        else winner = 2;
      }
    }
    
    
    
    // Horizontal winning lines
    if (cellBoard[0][0] != '\u0000'){
      if (cellBoard[0][0] == cellBoard[0][1] && cellBoard[0][1] == cellBoard[0][2]){
         line(top1.cellCornerX, top1.cellCornerY + size/2,
         top3.cellCornerX + size, top3.cellCornerY + size/2);
         
        if (cellBoard[0][0] == 'x') winner = 1;
        else winner = 2;
      }
    }
   
    
    if (cellBoard[1][0] != '\u0000'){
      if (cellBoard[1][0] == cellBoard[1][1] && cellBoard[1][1] == cellBoard[1][2]){
         line(midd1.cellCornerX, midd1.cellCornerY + size/2,
         midd3.cellCornerX + size, midd3.cellCornerY + size/2);
         
        if (cellBoard[1][0] == 'x') winner = 1;
        else winner = 2;
      }
    }
   
    
    if (cellBoard[2][0] != '\u0000'){
      if (cellBoard[2][0] == cellBoard[2][1] && cellBoard[2][1] == cellBoard[2][2]){
        line(bot1.cellCornerX, bot1.cellCornerY + size/2,
         bot3.cellCornerX + size, bot3.cellCornerY + size/2);
         
        if (cellBoard[2][0] == 'x') winner = 1;
        else winner = 2;
      }
    }
  }
  
  void reset(){
    for (int i = 0; i < cells.size(); i++){
      cells.get(i).reset(); 
    }
    cellBoard = new char[3][3];
  }
  
}
