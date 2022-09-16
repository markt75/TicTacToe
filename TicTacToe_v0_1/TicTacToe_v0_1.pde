
int windowSize = 500;
PVector point = new PVector((-windowSize/2)/2, (-windowSize/2)/2);
int x = 500;

cell test = new cell(point.x,point.y);
cell test2 = new cell(test.posx-test.size, test.posy);
cell test3 = new cell(test.posx-(test.size*2), test.posy);

cell test4 = new cell(test.posx, test.posy-test.size);
cell test5 = new cell(test.posx-test.size, test.posy-test.size);
cell test6 = new cell(test.posx-(test.size*2), test.posy-test.size);

cell test7 = new cell(test.posx, test.posy-(test.size*2));
cell test8 = new cell(test.posx-test.size, test.posy-(test.size*2));
cell test9 = new cell(test.posx-(test.size*2), test.posy-(test.size*2));

 
void setup(){
  size(500, 500);
}




void draw(){
  background(0);
  translate(width/2, height/2);
  
  test.display();
  test2.display();
  test3.display();
  test4.display();
  test5.display();
  test6.display();
  test7.display();
  test8.display();
  test9.display();
  
  
}
