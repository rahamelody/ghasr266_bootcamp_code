float r = 100;
float theta = 0;
float speed = 0.05;
//int speed = 10;

void setup () {

  size (500, 500);
  background (0);
}

void draw () {

  fill(0, 10);
  
  println(frameCount);
  float x = r * cos(frameCount*speed);
  float y = r * sin(frameCount*speed);

  fill (0, 255, 255);

  ellipse (x+width/2, y+height/2, 10, 10);

  theta += 0.05;
}

