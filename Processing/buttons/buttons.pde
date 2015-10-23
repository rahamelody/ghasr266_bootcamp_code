//Global variables
boolean button = false;

int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup () {
  
  size (640, 360);
  
}

void draw () {
 
  
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h && mousePressed) {
    button = true;
    println(button);
  } else {
    button = false;
    println(button);
  }
  
  if (button == true) {
    fill (255,0,0);
  } else {
    fill (0);
  }
  rect(x,y,w,h);
  
}
