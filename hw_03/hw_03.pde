PImage myImage;
PImage myImage2;

void setup () {
  
  size (1350,800);
  myImage = loadImage ("map.jpg");
  myImage2 = loadImage ("iran.jpg");
}

void draw () {
  //load the map
  imageMode (CENTER);
  image(myImage, width/2, height/2);
  
   //press on GREEN region to see bigger map of Iran
  color green = color (148, 209, 176);
 
  if (mousePressed && (mouseButton == pixels[green])) {
     
    image(myImage2, width/2, height/2);
  } else {
    noLoop();
  }
 
//  reference: https://processing.org/reference/mouseButton.html
// Sorry Regina I can't get this to work, I'm not really sure if this is 
// even the right way to go about this, but I'm basically trying to
// have processing recognize which part of the image is green and
// when that area is clicked, have a new image pop up.
}


  

