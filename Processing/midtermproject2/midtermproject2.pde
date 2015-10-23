//Global Variables
//reference: http://www.openprocessing.org/sketch/11224
//STARS
int numberOfStars = 60000;
//create array of all the stars
Stars [] createStars = new Stars[numberOfStars];
//speed of stars to make space travel effect!
int speed = 50;
PImage rocket;

//DRAW

void setup () {
  size(1000, 1000, P3D);

  //size of stars
  strokeWeight (2);
  
  for (int i = 0; i < numberOfStars; i++) {
    //var[element] = value CREATE STARS/SPACING/SPEED
    createStars[i] = new Stars (random(-10*width,10*width), random(-10*height, 10*height), -random(5000), random(speed));
    
  }
  //ROCKET IMAGE
   rocket = loadImage("rocket70.png");
}

void draw () {

    //black background
    background (0);
    //upload rocket, move rocket
    
    image(rocket, mouseX, mouseY);
    

  //star movement/rotation
  translate((width/2+mouseX), (height/2+mouseY), 0);
  rotateY(90);
  rotateX(45);
  rotateZ(90);
  //create movement and animations
  for (int i = 0; i<numberOfStars; i++) {
    createStars[i].aff();
    createStars[i].anim();
  }

}

void mousePressed(){
   
  //NOT THE RIGHT WAY TO DO THIS -- BUT WE HAVE NOT LEARNED OBJECTS/CLASSES 
  //THUS WE DONT KNOW ABOUT UPDATE FUNCTIONS SO IM GOING TO DO THIS HACK 
  for (int i = 0; i < numberOfStars; i++) {
    //var[element] = value CREATE STARS/SPACING/SPEED
    createStars[i] = new Stars (random(-10*width,10*width), random(-10*height, 10*height), -random(5000), random(speed));
    
  }
}

class Stars {
  float x, y, z;
  float dZ;
  //use array in 3 coordinate systems! plus speed!

  Stars(float cX, float cY, float cZ, float sZ) {
    x= cX;
    y= cY;
    z= cZ;
    dZ= 4*sZ;
  }
  
void aff () {
  //white dots as stars
  stroke(250);
  point(x,y,z);
}
// in order to animate stars in 3rd dimension
void anim () {
  z+=dZ;
  }
}



