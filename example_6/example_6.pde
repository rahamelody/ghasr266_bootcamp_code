PImage img;

void setup () {
  size (500,500);
  img = loadImage("ocean.jpg");
  background(0);
}

void draw () {
  
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  loadPixels();
  
  //rgb values are floats
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  
  noStroke();
  
  fill(r,g,b,100);
  rect(x,y,2,2);
}
