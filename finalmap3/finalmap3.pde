//Global Variables



//markers

int numNonprofits = 10;
int numDesigners = 10;
int numLines = 10;
float x = 0; 
float y = 0;


//images
PImage map;
PImage nonprofitMarker;
PImage designerMarker;

float [] latnp = {30, 60, 90, 150, 120, 180, 200, 220, 250, 270};
float [] lonnp = {10, 90, 120, 100, 220, 380, 400, 520, 350, 270};
float [] latd = {80, 50, 190, 200, 230, 580, 440, 500, 57, 210};
float [] lond = {40, 80, 290, 300, 330, 615, 48, 523, 574, 28};

void setup () {
  
  size(850,621);
  map = loadImage("worldmap.png");
  nonprofitMarker = loadImage("designermarker.png");
  designerMarker = loadImage("nonprofitmarker.png");

}

void draw () {
  
  
  image(map, x, y);
  
  for (int i = 0; i < numNonprofits; i++) {
    image(nonprofitMarker, latnp[i], lonnp[i]);
  }
  for (int i = 0; i < numDesigners; i++) {
    image (designerMarker, latd[i], lond[i]);


  }
  for (int i = 0; i < numLines; i++) {
   stroke(255, 102, 204);
   line(latd[i], lond[i], latnp[i], lonnp[i]);
  }
 
 

}