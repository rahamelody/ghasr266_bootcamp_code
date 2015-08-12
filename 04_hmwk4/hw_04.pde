//Global Variables
float r = 10;
float theta = 0;

void setup () {
  size(500,500);
   background (135, 206, 250);
    fill(255, 245, 97);
  noStroke();
  arc (width/2, 270, 200, 200, -PI, 0);
   
}

void draw () {

  fill(30, 144, 255);
    float y = r * sin (theta * 0.05);
    noStroke();
  ellipse (theta, y+400, 100, 300);
  theta += 1;
  
  boolean button = false;
  
  if (mousePressed) {
    button = true;
  } else {
    button = false;
  }
  
  if (button == true) {
    
    background (0);
  } 
    
  
   


  
 
  
  
}
