
void setup () {
  size (500, 500);
  colorMode(RGB, 500);
background(0);
}
void draw () {
 background(0);
 int circleSize = 10;
 
 for (int y=0; y < mouseY; y++) {
   for (int x=0; x < mouseX; x++) {
     fill(x/2, 255, 255);
     ellipse(x,y,circleSize,circleSize);
   }
 }
 
  
}
  


