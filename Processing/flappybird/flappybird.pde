//Global Variables
PVector position = new PVector(0,0);
PVector speed = new PVector(0,0);

float gravity = 0.98;

void setup() {
  
  size(500,500);
  
}


void draw () {
  background(0);
  
  //give this guy speed
  position.add(speed);
  
  //give this guy gravity
  speed.x += 0.001;
  speed.y += gravity;
  
  //bounding conditions
  if( (position.x > width) ) {
    position.x = 0;
  }
   if( (position.y > height) ) {
    position.y = height;
  }
  
  //simulated bird body
  ellipse(position.x, position.y, 50, 50);
  
  
}

void mousePressed () {
  speed.y = -15;
}
