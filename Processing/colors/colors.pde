 
 
 void setup () {
   size (500,500);
   colorMode(HSB);
 }
 
 void draw () {
   
   background(0);
   ellipseMode(CENTER);
   int circleSize = 20;
   
   for (int y = 0; y < mouseY; y+=circleSize) {
     for (int x = 0; x < mouseX; x+=circleSize) {
       fill(x/2, 255, 255);
       ellipse(x,y,circleSize, circleSize);
     }
   }
 }
