//Global Variables
//reference: http://www.openprocessing.org/sketch/11224
//STARS
int numberOfStars = 30000;
//create array of all the stars
Stars [] createStars = new Stars[numberOfStars];
//speed of stars to make space travel effect!
int speed = 30;
PImage rocket;

//DRAW

void setup () {
  size(500, 500, P3D);
  loop();
  strokeWeight (2);
  for (int i = 0; i < numberOfStars; i++) {
    createStars[i] = new Stars (random(-10*width,10*width), random(-10*height, 10*height), -random(5000), random(0,speed));
    
  }
   rocket = loadImage("rocket70.png");
}

void draw () {

  
  //black background
  
  int rotation = 1;
  int ix=0;
  int iy=0;
 
    //black background
    background (0);
    //upload rocket
    image(rocket, mouseX, mouseY);
    

  //mouse movement
  translate((width/2), (height/2), 0);
  rotateY(90);
  rotateX(45);
  rotateZ(90);
  for (int i = 0; i<numberOfStars; i++) {
    createStars[i].aff();
    createStars[i].anim();
  }
  
}

class Stars {
  float x, y, z;
  float dZ;
 
  
  Stars(float cX, float cY, float cZ, float sZ) {
    x= cX;
    y= cY;
    z= cZ;
    dZ= sZ;
  }
void aff () {
  //white stars
  stroke(250);
  point(x,y,z);

  
}
// in order to animate stars to move
void anim () {
  z+=dZ;
  }
}

