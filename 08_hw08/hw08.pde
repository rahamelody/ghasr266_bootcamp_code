int numLines = 25;

Line [] lines = new Lines[numLines];

int speed = 30;

void setup () {
 size(600, 600); 
 loop();
 for (int i = 0; i < numLines; i++) {
   lines[i] = new Lines (random(width), random(height), random(speed));
 }
}

void draw () {
  background (255);
  
  
  translate(width/2, height/2);
  rotateX(45);
  rotateY(45);
  for (int i = 0; i<numLines; i++) {
    lines[i].display();
    lines[i].anim();
}
