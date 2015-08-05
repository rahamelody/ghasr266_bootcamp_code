//Global Variables

int x = 0;
int y = 0;

//speed of a radar line
int speed = 6;
int state = 0;

void setup () {
  
 size (600, 600); 
 
}

void draw () {
  
  background (240);
  noFill ();
  stroke (0);
  strokeWeight (3);
  ellipse (width/2, height/2, 400, 400);
  fill (0);
  ellipse (width/2, height/2, 25, 25);
  line (300, 100, 300, 200);
  line (200, 300, 100, 300);
  line (300, 400, 300, 500);
  line (500, 300, 400, 300);
  line (width/2, height/2, x, y);
  
  if (state == 0) {
    x+=speed;
    if (x > width) {
    state = 1;
    }
  } else if (state == 1) {
    y+=speed;
      if (y > height) {
        state = 2;
    } else if (state == 2) {
      x-=speed;
      if (x < 0) {
        state = 3;
    } else if (state == 3) {
      y-=speed;
      if (y < 0) {
        state = 0;
      }
    }
    }
    
    }
   
    
    } 

  

  

  


