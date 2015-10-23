//Special Tab

//Define our Bubble Class

class Bubble{
  
  //Define some data
  
  float x;
  float y;
  float r;
  
  //Construct a "constructor"
  //temp variables
  Bubble(float x_, float y_, float r_){
  
    x = x_;
    y = y_;
    r = r_;
  
  }
  
  //Define your functions
  
  //draw these bad boys
  void display(){
    
    stroke(0);
    strokeWeight(10);
    fill(random(250),random(100));
    ellipse(x, y, 2*r, 2*r);
    
  }
  
  void ascend(){
    
    y--;
    
  }
  
}


