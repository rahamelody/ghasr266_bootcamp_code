//Global Variable

PImage myImage;

void setup () {
  size (960, 640);
  myImage = loadImage ("lavenderfields.jpg");
}

void draw () {
  
  imageMode (CENTER);
}

void mouseDragged () {
  image(myImage, width/2, height/2);
}
