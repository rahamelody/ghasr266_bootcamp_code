

//The old way we used to define variables to make stuff
//int x1=30;
//int x2=70;

//New technique -- Arrays
int [] circleX = {30, 60, 90, 150, 120, 180};

void setup () {
  size (500, 500);
  noStroke ();
}

void draw () {
  background(0);
  for (int i = 0; i < 6; i++) {
    ellipse(circleX[i], 50, 10, 10); 
  }
//  old method
//  ellipse(x1, height/2, 50, 50);
//  ellipse(x2, height/4, 50, 50);
}

