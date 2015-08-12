int[][] dotBoard = new int[9][10];

int turn = 1; 
 
void setup() {
  size(1000, 900);
  dotBoard[0][0]=2; // testing
  background (255);
}
 
void draw() {
  drawDotBoard();
}
 
 
void mousePressed() {

  dotBoard[int(mouseY/100)][int(mouseX/100)] = turn; 
   
  
  if (turn == 1) {
    turn = 2;
  } else if (turn == 2) {
    turn = 3;
  } else {
    turn = 3;
  }
   
}
 
  
 
 
void drawDotBoard() {
  
   
  for (int y=0; y<9; y++) {  
 
    for (int x=0; x<10; x++) { 
 
      fill(random(255),255,255); 
       
      if (dotBoard[y][x] == 1) {
        fill(200,random(250),0);
      }
      if (dotBoard[y][x] == 2) {
        fill(0,0,random(200));
      } 
      if (dotBoard[y][x] == 3) {
        fill(0,random(250),0);
      }
      noStroke();
      ellipse(x*100+50, y*100+50, 20, 20); 
        
    }
  }
 
}

