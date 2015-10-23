class Particle {
  
  //Data
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  //Constructor
  Particle (PVector location_) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector (random(-1,1), random(-2, 0));
    
    location = location_.get();
    
    
    
  }
  
 void run () {
   update();
   display();
   
 }
 
 void update () {
   velocity.add(acceleration);
   location.add(velocity);
 }
  
 void display () {
    
    ellipse(location.x, location.y, 50, 50);
  }
  
}
