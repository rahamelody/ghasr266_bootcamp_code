
//Global Variables

int colorCounter;
boolean mouseOnRight;

void setup(){
  
  size(500, 500);
  background(255);
  
  //Initializing Variables
  mouseOnRight = false;
  colorCounter = 0;
  
}

void draw(){
  fill(255-colorCounter, 255-colorCounter, 255);
  rect(0, 0, 400, 400);
  line(200, 0, 200, 400);
  
  if(mouseX >= width/2 && mouseOnRight == false){
    mouseOnRight = true;
    colorCounter+=5;
    //colorCounter = colorCounter + 5;
  }
  if(mouseX < width/2 && mouseOnRight == true){
    mouseOnRight = false;
    colorCounter+=5;
  }
  
  

}
