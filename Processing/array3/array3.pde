/////////////////////////////
//RAHA GHASSEMI
//ARRAY SHIFT EXAMPLES
//AUg. XX 2015
/////////////////////////////
//Global Variables

//Variables
int numPos = 50; //hard code numPositions to 50

//Arrays
int[] xPos = new int[numPos];
int[] yPos = new int[numPos];

//////////////////////////////

void setup () {
  size(500,500);
  smooth();
  
  //Initialize my arrays
  for (int i=0; i<numPos; i++){
    xPos[i] = 0;
    yPos[i] = 0;
  }
}

void draw () {
  background(255);
  
  //this is an examples of how you could use an array shift to create
  //beautiful things
  
  for(int i = 0; i<numPos-1; i++){
    xPos[i] = xPos[i+2];
    yPos[i] = yPos[i+2];
  }
  
  xPos [numPos-2] = mouseX;
  yPos [numPos-2] = mouseY;
  
  for (int i = 0; i<numPos; i++){
    fill(200, random(255), random(255));
    ellipse(xPos[i], yPos[i], 100, 100);
  }
}
