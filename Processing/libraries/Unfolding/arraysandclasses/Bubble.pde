class Bubble{
  
  //Data about my class
  float x;
  float y;
  float radius;
  //color attributes
  float r, g, b;
  
  Bubble(float x_, float y_, float radius_, float r_, float g_, float b_){
    
    x = x_;
    y = y_;
    radius = radius_;
    
    r = r_;
    g = g_;
    b = b_;
    
  }
  
  void ascend(){
    y--;
  }
  
  void display(){
    stroke(0);
    strokeWeight(10);
    fill(r,g,b);
    ellipse(x, y, 2*radius, 2*radius);
  }
  
  void top(){
    if(y < radius) {
      y = radius;
    }
  }
  
}
