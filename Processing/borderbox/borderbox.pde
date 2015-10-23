//Global Variables

int x = 0;
int y = 0;

//properties of moving box
int speed = 3;
int rectSize = 9;

//State Variable
int state = 0;

void setup () {
  size (640, 360);
  
  
}

void draw () {
  background (250);
  stroke (0);
  fill (0, 255, 0);
  rect (x, y, rectSize, rectSize);
 
 if (state == 0) {
   x+=speed;
   //nested if statement
   if (x > width) {
     x = width - rectSize;
     state = 1;
 }else if (state == 1) {
     y+=speed;
     //nested if
     if (y > height) {
         y = height - rectSize;
         state = 2;
     }
 }else if (state == 2) {
     x-=speed;
     //nested if
     if (x < 0) {
       x = 0;
       state = 3;
 }else if (state == 3) {
       y-=speed;
       //nested if
       if (y < 0) {
         y = 0;
         state = 0;
       }
     }
   }
 }
  
}
