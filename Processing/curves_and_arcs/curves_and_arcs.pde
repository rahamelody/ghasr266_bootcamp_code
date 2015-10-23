float x1, x2, y1, y2, y3, y4, x3, x4;

void setup () {
  size(600, 800);
  frameRate (4);
}

void draw () {
  
  background (255);
//  curve (5, 26, 5, 26, 73, 24, 73, 61);
//  arc (150, 50, 80, 80, 0, PI+QUARTER_PI, OPEN);
  
  int weight = int (random(1,10));
  stroke(255,0,0);
  strokeWeight(weight);
  float sideIncrement = 0;
  float shapeRadius = width/4;
  int numberOfSides = int(random(10,20));
  
//  STARTING SHAPE
  while(sideIncrement < TWO_PI){
  beginShape();
    float xPos = sin(sideIncrement)*shapeRadius;
    float yPos = cos(sideIncrement)*shapeRadius;
    
    vertex(xPos+width*0.5, yPos+height*0.5);
    
    sideIncrement += TWO_PI/numberOfSides;
  endShape();
  
  //ENDING SHAPE
  }
}
