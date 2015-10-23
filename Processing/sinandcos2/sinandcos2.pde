//Global Variables

float r = 100;
float theta = 0;


void setup () {
  size(500,500);
  background (0);
}

void draw () {
  
  float y = r * sin (theta * 0.05);
  ellipse (theta, y+height/2, 10, 10);
  

  theta += 1;


}
