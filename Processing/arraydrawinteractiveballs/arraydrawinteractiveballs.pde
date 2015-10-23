/////////////////////////////
//RAHA GHASSEMI
//ARRAY INTERACTIVE BALLS EXAMPLES
//AUg. XX 2015
/////////////////////////////
//Global Variables

//Variables
int numBalls = 10000;
int buffer = 10;
int magicRadius = 50;
//Arrays
int []ballsX = new int[numBalls];
int []ballsY = new int[numBalls];

int []speedX = new int[numBalls];
int []speedY = new int[numBalls];

int []radius = new int[numBalls];

color [] baseColor = new color [numBalls];
int [] opacity = new int [numBalls];
color [] drawColor = new color [numBalls];

//////////////////////////////

void setup () {
  size(500,500);
  //Initialize the arrays
     noStroke();
  for (int i=0; i<numBalls; i++){
    ballsX[i] = int(random(buffer, width-buffer));
    ballsY[i] = int(random(buffer, height-buffer));
    
    speedX[i] = int(random(-5, 5));
    speedY[i] = int(random(-5, 5)); 
    
//    if(speedX[i] == 0) {
//      speedX[i] = 1;
//    }
//     if(speedY[i] == 0) {
//      speedY[i] = 1;
//    }
    
    radius[i] = int(random(4, 10));
    
    baseColor[i] = color(0,int(random(100,125)),0);
    opacity[i] = 100;
    drawColor[i] = color(baseColor[i], opacity[i]);
   
  }
  
}

void draw () {
  background(255);
  //setup my functions
  
  update();
  ballBoundry();
  drawBalls();
  ballInteraction();
}  

void update () {
  for (int i = 0; i<numBalls; i++){
    ballsX[i] = ballsX[i] + speedX[i];
    ballsY[i] = ballsY[i] + speedY[i];
  }
}

void drawBalls () {
  for(int i = 0; i<numBalls; i++) {
    drawColor[i] = color(baseColor[i], opacity[i]);
    fill (drawColor[i]);
    ellipse (ballsX[i], ballsY[i], radius[i]*2, radius[i]*2);
  }
}


void ballBoundry (){
  for (int i = 0; i < numBalls; i++){
    if(ballsX[i]<0) {
      speedX[i]= -1*speedX[i];
      ballsX[i] = 0;
    }
    if(ballsX[i]>width) {
      speedX[i]= -1*speedX[i];
      ballsX[i] = width;
    }
    
    if(ballsY[i]<0) {
      speedY[i]= -1*speedY[i];
      ballsY[i] = 0;
    }
    if(ballsY[i]>height) {
      speedY[i]= -1*speedY[i];
      ballsY[i] = height;
    }
  }
}
void ballInteraction(){
  for (int i = 0; i < numBalls; i++) {
    if(dist(ballsX[i], ballsY[i], mouseX, mouseY) < magicRadius) {
      opacity[i] = 0;
    }
    if (mousePressed) {
      opacity[i]=255;
    }
  }
}


