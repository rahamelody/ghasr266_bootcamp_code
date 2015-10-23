//Global Variables

int xPos;
int yPos;


void setup () {
  
  size (500,500);
  xPos = width/2;
  yPos = height/2;
}

void draw () {
  background (255);
  if(mouseX > xPos){
    //same as xPos = xPos + 1
    xPos++;
  }
  fill(255,0,0);
  ellipse (xPos, yPos, 50, 50);
  
}
