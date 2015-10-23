//Global Variables
float fillColor;
int circleX;
int circleY;

void setup () {
  size(500,500);
}

void draw () {
  for(int x = 0; x < 50; x++) {
    for(int y = 0; y < 50; y++) {
      //Psudo Code
      
      //make the x, y coordinated of my circles
      //pass info from the draw loop to my fcn
      setCircleCoordinates(x,y);
      
      //set color of using fill
      setFillRelativeToMouse();
      
      //draw ellipses
      drawOneCircle();
       
      
    }
  }
}//ending the draw loop

void setCircleCoordinates (int x, int y) {
  circleX = 5+(x*10);
  circleY = 5+(y*10);
  
}

void setFillRelativeToMouse () {
  
  fillColor = map(dist(mouseX, mouseY, circleX, circleY), 0,250,255,0);
  if(fillColor <= 0) {
    fillColor = 145;
  }
  fill(fillColor);
  noStroke();
  
}

void drawOneCircle () {
  
  ellipse(circleX, circleY, 2, 2);
}
