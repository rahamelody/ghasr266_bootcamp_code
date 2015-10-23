// Global Variables

float x = 100;
float y = 100;
float xSpeed = 2.5;
float ySpeed = 2;

///////////

void setup () {
  size(800,200);
  smooth();
  noStroke();
}

void draw () {
  
  background(255);
  
  x = x + xSpeed;
  y = y + ySpeed;
  
  //Bounding Conditions
  
  if ( (x > width) || (x < 0) ) {
    xSpeed = xSpeed * -1;
  }
  if ( (y > height) || (y < 0) ) {
    ySpeed = ySpeed * -1;
  }
  
  stroke(0);
  fill(127);
  ellipse(x,y,48,48);
  
  
}
