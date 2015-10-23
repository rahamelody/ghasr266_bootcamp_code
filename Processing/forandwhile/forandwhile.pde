

void setup () {
  
  size(500,180);
//  ellipseMode(CORNER);
  
}

void draw () {
  background(0);
  noStroke();
//  int i = 0;
//  while (i < 8){
//  ellipse(i*50, 25, 50, 50);
//  i++;
//  }
  for(int i = 0; i < 10; i++){
    ellipse(25+(i*50), height/2,50,50);
  }
}
