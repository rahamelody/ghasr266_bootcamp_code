/////////////////////////////
//RAHA GHASSEMI
//ARRAY APPEND EXAMPLES
//AUg. XX 2015
/////////////////////////////
//Global Variables

//Variables
int numPos = 50; //hard code numPositions to 50

//Arrays
int[] xPos = new int[0];
int[] yPos = new int[0];

//////////////////////////////

void setup () {
  size(500,500);
  //normally you would initialize the arrray in setup but since it's
//size 0 at the onset, we don't
  
}

void draw () {
  background(255);
  
  for(int i=0; i < xPos.length; i++){
    stroke(0);
    point(xPos[i], yPos[i]);
    strokeWeight(1);
    if(i < xPos.length-1){
      line(xPos[i], yPos[i], xPos[i+1], yPos[i+1]);
    }
  }
}  
void mousePressed () {
  xPos = append(xPos, mouseX);
  yPos = append(yPos, mouseY);
  println(xPos+" "+yPos);
  println(xPos.length);
}
  
  

