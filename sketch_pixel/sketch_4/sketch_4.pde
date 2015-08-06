//Global Variables

PImage img;
int pixelX;
int pixelY;

void setup () {
  
  size (600,600);
  img = loadImage("ocean.jpg");
  pixelX = 0;
  pixelY = 0;
  
  frameRate (30);
  
}

void draw () {
  
  color pixelColor = img.get(pixelX, pixelY);
  
  fill(pixelColor);
  noStroke();
  
  ellipse (pixelX, pixelY, 10, 10);
//  ellipse (pixelX, pixelY, 10, 10);
//  ellipse (pixelX, pixelY, 10, 10);
  
  if (pixelX < width) {
    pixelX+=10;
  } else {
    pixelY+=10;
    pixelX =0;
  }
  
}
