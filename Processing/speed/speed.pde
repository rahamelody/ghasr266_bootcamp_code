//Global Variables
int x = 0;
int y = 0;
int speed = 5;

void setup () {
  size (640, 360);
}

void draw () {
  
  background (255);
  
  //speed to increase every frame
  x+=speed;
  y+=speed;
  
  //Bounding conditions
  
  if ((x > width) || (x < 0)){
    
    //changes the direction by making it negative
    speed = speed * -1;
  } 
  
  if ((y > height) || (y < 0)) {
    
    speed = speed * -1;
  }
  
  fill (255, 0,  0);
  ellipse (x, y, 32, 32);
  
}
