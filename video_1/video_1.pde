//import video library
import processing.video.*;

//access to webcam
Capture video;

int videoSliceX;
int drawPositionX;

void setup () {
  
  size (600,400);
  
  //free lines of code from Regina
  video = new Capture(this, 320, 240);
  video.start();
  //
  
  videoSliceX = video.width / 2;
  drawPositionX = width - 1;
  background (0);
  
}

void draw () {
  
  if(video.available()) {
    
    video.read();
    video.loadPixels();
    
    loadPixels();
    /////////////////////
    
    //making cool shit
    int setPixelIndex;
    int getPixelIndex;
    for(int y = 0; y < video.height; y++){
      
      setPixelIndex = y*width + drawPositionX;
      getPixelIndex = y*video.width + videoSliceX;
      pixels[setPixelIndex] = video.pixels[getPixelIndex];
    }
    
    updatePixels();
    
    drawPositionX --;
    
    if (drawPositionX < 0) {
      drawPositionX = width - 1;
    }
  }


}

