class cellBoard{
  
  // Array to store cells
  ArrayList<cell> cells;
  
  //Cells
  cell top1, top2, top3;
  cell midd1, center, midd3;
  cell bot1, bot2, bot3;
  
  cellBoard(){
    cells = new ArrayList();
    
    //Top cells
    top1 = new cell(point.x - size, point.y - size);
    top2 = new cell(point.x, point.y - size);
    top3 = new cell(point.x + size, point.y - size);
    cells.add(top1);
    cells.add(top2);
    cells.add(top3);
    
    //Middle cells
    midd1 = new cell(point.x - size, point.y);
    center = new cell(point.x, point.y); //Center cell
    midd3 = new cell(point.x + size, point.y);
    cells.add(midd1);
    cells.add(center);
    cells.add(midd3);
    
    //Bottom cells
    bot1 = new cell(point.x - size, point.y + size);
    bot2 = new cell(point.x, point.y + size);
    bot3 = new cell(point.x + size, point.y + size);
    cells.add(bot1);
    cells.add(bot2);
    cells.add(bot3);
  }
  
  void display(){
    
    for (int i = 0; i < cells.size(); i++){
      cells.get(i).display(); 
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
         
         
    // Diagonal winning lines  
    //line(top1.cellCornerX, top1.cellCornerY,
    //     bot3.cellCornerX + size, bot3.cellCornerY + size);
    //line(top3.cellCornerX + size, top3.cellCornerY,
    //     bot1.cellCornerX, bot1.cellCornerY + size);
         
    // Vertical winning lines
    //line(top1.cellCornerX + size/2, top1.cellCornerY,
    //     bot1.cellCornerX + size/2, bot1.cellCornerY + size);
    //line(top2.cellCornerX + size/2, top2.cellCornerY,
    //     bot2.cellCornerX + size/2, bot2.cellCornerY + size);
    //line(top3.cellCornerX + size/2, top3.cellCornerY,
    //     bot3.cellCornerX + size/2, bot3.cellCornerY + size);
    
    
    // Horizontal winning lines
    //line(top1.cellCornerX, top1.cellCornerY + size/2,
    //     top3.cellCornerX + size, top3.cellCornerY + size/2);
    //line(midd1.cellCornerX, midd1.cellCornerY + size/2,
    //     midd3.cellCornerX + size, midd3.cellCornerY + size/2);
    //line(bot1.cellCornerX, bot1.cellCornerY + size/2,
    //     bot3.cellCornerX + size, bot3.cellCornerY + size/2);
  }
  
}
