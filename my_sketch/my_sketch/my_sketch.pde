//PImage myImage 
//images must always be in the data folder
//image (x coord, y coord, size width, size height) - just like rect

//Global Variable

PImage myImage;

void setup () {
  size (800, 600);
  myImage = loadImage ("grumpyBunny.jpg");
}

void draw () {
  
  imageMode (CENTER);
  
}

void mousePressed () {
  
    image(myImage, width/2, height/2);

  
}
