//manual loop

PImage img;
int pixelX;
int pixelY;


void setup(){
  size (500,500);
  img = loadImage("ocean.jpg");
  pixelX = 0;
  pixelY = 0;
  frameRate(30);

}

void draw(){
  //image(img,0,0);
  
  color pixelColor = img.get(pixelX, pixelY);
  
  float pixB = brightness(pixelColor);
  
  fill(pixelColor);
  noStroke();
  ellipse(pixelX, pixelY, pixB/10, pixB/10);
  //ellipse(pixelX, pixelY, 10, 10);
  //ellipse(pixelX, pixelY, (255-pixB)/10, (255-pixB)/10);
  //rectMode(CENTER);
  //rectMode(CORNER);
  //rect(pixelX, pixelY, (255-pixB)/5, mouseX/10);
  
  if(pixelX < width ){
    pixelX += 30; // same as pixelX = pixelX + 1
  }
    else{
      pixelY += 10;
      pixelX = 0;
    }
  
}
