//global variables

//variables
int numElements = 1000;
//arrays
float [] circleX = new float [numElements];
float [] circleY = new float [numElements];

/////////////////////

void setup () {
  //note that we made the size 500 by 500 
  size (500, 500);
  noStroke ();
  //initializing arrays
  for (int i = 0; i < circleX.length; i++) {
    //this is b/w 0 and 500 because its the size of our screen
    circleX[i] = random(0,500);
    circleY[i] = random(0,500);
  }
}

void draw () {
  background(0);
  for (int i = 0; i < circleX.length; i++) {
    ellipse(circleX[i], circleY[i], 10, 10); 
  }
//  old method
//  ellipse(x1, height/2, 50, 50);
//  ellipse(x2, height/4, 50, 50);
}

