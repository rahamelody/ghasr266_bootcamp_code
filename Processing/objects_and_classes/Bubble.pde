//Special Tab

//Define our Bubble Class

class Bubble{
  
  //Define some data
  
  float x;
  float y;
  
  //Construct a "constructor"
  Bubble(){
  
    x = width/2;
    y = height;
  
  }
  
  //Define your functions
  
  //draw these bad boys
  void display(){
    
    stroke(0);
    strokeWeight(10);
    fill(127,100);
    ellipse(x, y, 64, 64);
    
  }
  
  void ascend(){
    
    y--;
    
  }
  
}


