class Vector{
  
  //Data about my class
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  
  //color attributes
  float r, g, b;
  
  Vector(PVector mouse_, PVector center_, float r_, float g_, float b_){
    
    mouse = mouse_;
    center = center_;
    r = r_;
    g = g_;
    b = b_;
  
  }
  
  
}

void display(){
  strokeWeight(10);
  fill(r, g, b);
  line(0,0,mouse.x, mouse.y);
}
void addVector() {
  //add a PVector
  mouse.add(center);
}
