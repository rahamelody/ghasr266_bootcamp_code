
PVector location;
PVector velocity;

///////////

void setup () {
  size(800,200);
  smooth();
  
  
  location = new PVector(100, 100);
  velocity = new PVector(2.5, 2);
}

void draw () {
  
  background(255);
  
  //Khan Academy -- look up vector math and the unit vector if you care
  location.add(velocity);
  
   //Bounding Conditions
  
  if ( (location.x > width) || (location.x < 0) ) {
    velocity.x = velocity.x * -1;
  }
  if ( (location.y > height) || (location.y < 0) ) {
    velocity.y = velocity.y * -1;
  }
}
